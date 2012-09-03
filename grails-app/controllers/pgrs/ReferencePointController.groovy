package pgrs

import org.springframework.dao.DataIntegrityViolationException

class ReferencePointController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [referencePointInstanceList: ReferencePoint.list(params), referencePointInstanceTotal: ReferencePoint.count()]
    }

    def create() {
        [referencePointInstance: new ReferencePoint(params)]
    }

    def save() {
        def referencePointInstance = new ReferencePoint(params)
        if (!referencePointInstance.save(flush: true)) {
            render(view: "create", model: [referencePointInstance: referencePointInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), referencePointInstance.id])
        redirect(action: "show", id: referencePointInstance.id)
    }

    def show(Long id) {
        def referencePointInstance = ReferencePoint.get(id)
        if (!referencePointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), id])
            redirect(action: "list")
            return
        }

        [referencePointInstance: referencePointInstance]
    }

    def edit(Long id) {
        def referencePointInstance = ReferencePoint.get(id)
        if (!referencePointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), id])
            redirect(action: "list")
            return
        }

        [referencePointInstance: referencePointInstance]
    }

    def update(Long id, Long version) {
        def referencePointInstance = ReferencePoint.get(id)
        if (!referencePointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (referencePointInstance.version > version) {
                referencePointInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'referencePoint.label', default: 'ReferencePoint')] as Object[],
                          "Another user has updated this ReferencePoint while you were editing")
                render(view: "edit", model: [referencePointInstance: referencePointInstance])
                return
            }
        }

        referencePointInstance.properties = params

        if (!referencePointInstance.save(flush: true)) {
            render(view: "edit", model: [referencePointInstance: referencePointInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), referencePointInstance.id])
        redirect(action: "show", id: referencePointInstance.id)
    }

    def delete(Long id) {
        def referencePointInstance = ReferencePoint.get(id)
        if (!referencePointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), id])
            redirect(action: "list")
            return
        }

        try {
            referencePointInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'referencePoint.label', default: 'ReferencePoint'), id])
            redirect(action: "show", id: id)
        }
    }
}
