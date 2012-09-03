package pgrs



import org.junit.*
import grails.test.mixin.*

@TestFor(ReferencePointController)
@Mock(ReferencePoint)
class ReferencePointControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/referencePoint/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.referencePointInstanceList.size() == 0
        assert model.referencePointInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.referencePointInstance != null
    }

    void testSave() {
        controller.save()

        assert model.referencePointInstance != null
        assert view == '/referencePoint/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/referencePoint/show/1'
        assert controller.flash.message != null
        assert ReferencePoint.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/referencePoint/list'

        populateValidParams(params)
        def referencePoint = new ReferencePoint(params)

        assert referencePoint.save() != null

        params.id = referencePoint.id

        def model = controller.show()

        assert model.referencePointInstance == referencePoint
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/referencePoint/list'

        populateValidParams(params)
        def referencePoint = new ReferencePoint(params)

        assert referencePoint.save() != null

        params.id = referencePoint.id

        def model = controller.edit()

        assert model.referencePointInstance == referencePoint
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/referencePoint/list'

        response.reset()

        populateValidParams(params)
        def referencePoint = new ReferencePoint(params)

        assert referencePoint.save() != null

        // test invalid parameters in update
        params.id = referencePoint.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/referencePoint/edit"
        assert model.referencePointInstance != null

        referencePoint.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/referencePoint/show/$referencePoint.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        referencePoint.clearErrors()

        populateValidParams(params)
        params.id = referencePoint.id
        params.version = -1
        controller.update()

        assert view == "/referencePoint/edit"
        assert model.referencePointInstance != null
        assert model.referencePointInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/referencePoint/list'

        response.reset()

        populateValidParams(params)
        def referencePoint = new ReferencePoint(params)

        assert referencePoint.save() != null
        assert ReferencePoint.count() == 1

        params.id = referencePoint.id

        controller.delete()

        assert ReferencePoint.count() == 0
        assert ReferencePoint.get(referencePoint.id) == null
        assert response.redirectedUrl == '/referencePoint/list'
    }
}
