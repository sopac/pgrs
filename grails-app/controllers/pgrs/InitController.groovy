package pgrs

import org.springframework.util.StringUtils

import java.text.Normalizer

class InitController {


    def normalize(String val) {
        String desc = val + " "
        desc = Normalizer.normalize(desc, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
        [0..10].each {
            if (desc.startsWith(" ")) desc = desc.substring(1, desc.length())
        }
        desc = StringUtils.trimLeadingWhitespace(desc)
        desc = StringUtils.trimTrailingWhitespace(desc)
        return val
    }


    def fixWhiteSpace() {
        ReferencePoint.list().each { p ->
            String desc = p.description
            desc = Normalizer.normalize(desc, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
            [0..10].each {
                if (desc.startsWith(" ")) desc = desc.substring(1, desc.length())
            }
            desc = StringUtils.trimLeadingWhitespace(desc)
            desc = StringUtils.trimTrailingWhitespace(desc)
            p.description = desc
            p.save(failOnError: true, flush: true)
        }
    }

    def index() {

        def resList = new ProcessData().process()
        ReferencePoint.executeUpdate("DELETE FROM ReferencePoint")
        resList.each { m ->
            ReferencePoint p = new ReferencePoint()
            m.each {
                if (it.key.equals("type")) p.type = it.value
                if (it.key.equals("number")) p.number = it.value
                if (it.key.equals("title")) p.title = normalize(it.value)
                if (it.key.equals("description")) p.description = normalize(it.value)
                if (it.key.equals("Longitude")) p.longitude = it.value
                if (it.key.equals("Latitude")) p.latitude = it.value
                if (it.key.equals("Ellipsoid Height")) p.ellipsoidHeight = it.value
                if (it.key.equals("X_Coordinate")) p.x_coordinate = it.value
                if (it.key.equals("Y_Coordinate")) p.y_coordinate = it.value
                if (it.key.equals("Z_Coordinate")) p.z_coordinate = it.value
                if (it.key.equals("Processing Start Time")) p.processingStartTime = it.value
                if (it.key.equals("Processing Stop Time")) p.processingStopTime = it.value
                if (it.key.equals("Processing Duration")) p.processingDuration = it.value
                if (it.key.equals("Base Station")) p.baseStation = it.value
                //if (it.key.equals("Base Line Report")) p.baseLineReport = it.value
                if (it.key.equals("Height")) p.heightElevation = it.value
                if (it.key.equals("Data File")) p.dataFile = it.value
                if (it.key.equals("Point ID MapInfo")) p.pointIdMapinfo = it.value
                if (it.key.equals("Point ID Access")) p.pointIdAccess = it.value



                render it.key + " - " + it.value + "<br/>"
            }
            p.save(failOnError: true, flush: true)
            Area a = Area.findByKey(m.get("countryKey"))
            a.addToReferencePoint(p)
            a.save(failOnError: true, flush: true)
        }
        fixWhiteSpace()
        render "<h1>Saved</h1>"

        //cleanup coordinates
        //if lat/lng empty copy x and y to lat/lng
        //if lat/lng endswith (m) convert to lat/lng
    }

    def fix() {
        ReferencePoint.list().each {p ->
            //render p.longitude + " | " + p.latitude + " | " + p.x_coordinate + " | " + p.y_coordinate + "<br/>"
            render p.longitude + " | " + p.latitude + "<br/>"
            if (p.longitude == null) p.longitude = p.x_coordinate
            if (p.latitude == null) p.latitude = p.y_coordinate

            CoordinateConversion c = new CoordinateConversion()



            p.save(flush: true, failOnError: true)
        }
    }

}
