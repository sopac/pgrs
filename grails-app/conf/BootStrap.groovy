import pgrs.Area

class BootStrap {

    def init = { servletContext ->
        if (Area.list().size() == 0) {
            def map = ["Apia": "Samoa", "Laura, Majuro": "Marshall Islands", "Nadi - Ba": "Fiji Islands", "Savusavu - Labasa": "Fiji Islands", "Suva": "Fiji Islands"]
            map.each {
                Area a = new Area()
                a.area = it.key
                a.country = it.value
                //a.richDescription = it.key + " - " + it.value

                if (it.key.equals("Apia"))
                    a.richDescription = "The collection of the Reference Image Points in Upolu Island, Samoa were done on the 10th to the 21st September, 2010."

                if (it.key.equals("Nadi - Ba"))
                    a.richDescription = "The Nadi to Ba Corridor pan sharpened QUICKBIRD images have a pixel resolution of 60 cm. The images came in geo- referenced, but have an average shift of eighteen meters. This could not be used for 1:5,000 mapping. A survey of reference image points (RIPs) was carried out in the Nadi Ba Corridor to rectify this shift."

                if (it.key.equals("Laura, Majuro"))
                    a.richDescription = "The GIS backdrop of Laura, Majuro, Republic of Marshall Islands displayed above is a pan-sharpened Quickbird satellite image, which has a spatial resolution of 60cm. Even purchased as a geo-referenced image data, it does not arrive geometrically correct. Before utilising such an image as GIS backdrop for mapping at 1:5,000 scale a geometric rectification has to be performed, which requires reference points of sub-metre accuracy."


                if (it.key.equals("Suva"))
                    a.richDescription = "The Reference Image Points for Suva were collected from the 22nd to the 26th of February 2010. The points were than used to rectify the Suva 60cm Quickbird satellite image."

                if (it.key.equals("Savusavu - Labasa"))
                    a.richDescription = "The Reference Image Points for Labasa and Savusavu were collected on the 14th to 18th of June 2010. The points were than used to rectify the Labasa 60cm Quickbird satellite image and the 1m resolution IKONOS Savusavu image."


                a.referencePoint = null
                String key = it.key.replace(", ", "").replace(" - ", "").trim() + it.value.replace(" Islands", "").trim()
                a.key = key
                a.save(flush: true, failOnError: true)
            }
        }
    }
    def destroy = {
    }
}
