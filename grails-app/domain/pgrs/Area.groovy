package pgrs

class Area {

    String area
    String country
    String richDescription //html
    String key

    static hasMany = [referencePoint: ReferencePoint]

    static constraints = {
        area()
        country()
        richDescription(maxSize: 5000, blank: true)
        referencePoint(nullable: true)
        key()
    }

    String toString() {
        key
    }
}
