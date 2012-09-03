package pgrs

class ReferencePoint {

    String type
    String number
    String title
    String description
    String longitude
    String latitude
    String ellipsoidHeight
    String x_coordinate
    String y_coordinate
    String z_coordinate
    String processingStartTime
    String processingStopTime
    String processingDuration
    String baseStation
    //String baseLineReport
    String pointIdMapinfo
    String pointIdAccess
    String dataFile
    String heightElevation
    String comments

    static belongsTo = [area: Area]

    static mapping = {
        sort "title"
    }

    static constraints = {
        type(inList: ["ARP", "PBSP", "RIP"])
        number(nullable: true, blank: true)
        title()
        description(maxSize: 5000)
        longitude(nullable: true)
        latitude(nullable: true)
        ellipsoidHeight(nullable: true)
        x_coordinate(nullable: true)
        y_coordinate(nullable: true)
        z_coordinate(nullable: true)
        processingStartTime(nullable: true)
        processingStopTime(nullable: true)
        processingDuration(nullable: true)
        baseStation(nullable: true)
        //baseLineReport(nullable: true)
        pointIdMapinfo(nullable: true)
        pointIdAccess(nullable: true)
        dataFile(nullable: true)
        heightElevation(nullable: true)
        area(nullable: true)
        comments(maxSize: 1250, nullable: true, blank: true)
    }

    String toString() {
        "(" + type + ") " + title
    }
}
