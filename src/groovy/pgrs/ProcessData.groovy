package pgrs

import org.apache.pdfbox.pdmodel.PDDocument
import org.apache.pdfbox.pdmodel.PDPage
import org.apache.pdfbox.pdmodel.PDResources
import org.apache.pdfbox.pdmodel.graphics.xobject.PDXObjectImage
import org.apache.pdfbox.util.PDFTextStripper
import org.springframework.util.StringUtils

import java.text.Normalizer

/**
 * Created with IntelliJ IDEA.
 * User: sachin
 * Date: 8/20/12
 * Time: 12:06 PM
 * To change this template use File | Settings | File Templates.
 */

process()



def process() {
    def resList = []
    int fileCount = 0
    def fieldList = []
    def path = "/Users/SPC/Desktop/RIP_PGRS/"
    if (System.getProperty("os.name").startsWith("Linux")) path = "/opt/RIP_PGRS/"

    def folderNames = ["ApiaSamoa", "LauraMajuroMarshall", "NadiBaFiji", "SavusavuLabasaFiji", "SuvaFiji"]
    folderNames.each {folder ->
        //save area

        new File(path + folder).eachFile { file ->
            if (!file.getName().toLowerCase().endsWith("pdf")) return
            //println file
            fileCount++
            PDDocument pd = PDDocument.load(file)
            PDFTextStripper s = new PDFTextStripper()
            String res = s.getText(pd)

            def lines = res.split(s.getLineSeparator())
            String title = lines[0].trim()
            if (title.length() <= 2) title = lines[1].trim()
            if (title.length() <= 2) title = lines[2].trim()
            if (title.length() <= 2) title = lines[3].trim()
            if (title.length() <= 2) title = lines[4].trim()
            if (title.length() <= 2) title = lines[5].trim()
            if (title.length() <= 2) title = lines[6].trim()
            if (title.length() <= 2) title = lines[7].trim()


            String description = ""
            lines[1..10].each { l ->
                if (!l.trim().equals("")) description = description + l
            }
            description = description.trim()
            description = description.replace(title, "")
            if (description.contains("X_Coordinate:")) {
                description = description.subSequence(0, description.indexOf("X_Coordinate:"))
            }

            String type = file.getName().replace(".pdf", "").trim()
            if (type.startsWith("RIP")) type = "RIP"
            if (type.startsWith("PBSP")) type = "PBSP"

            String number = file.getName().replace(".pdf", "").trim()
            number = number.replace(type, "").trim()


            def map = [:]
            map["title"] = title
            map["description"] = description
            map["type"] = type
            map["countryKey"] = folder
            map["number"] = number

            //if (title.length() <= 3)
            //    println title + " - " + file

            //fields
            lines.each { l ->
                if (l.trim().contains(": ")) {
                    String field = l.substring(0, l.indexOf(":")).trim()
                    String value = l.substring(l.indexOf(":") + 2, l.length()).trim()

                    //normalize value
                    value = value.replaceAll("^\\s+", "") //trim left
                    value = Normalizer.normalize(value, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
                    value = StringUtils.trimLeadingWhitespace(value)
                    value = StringUtils.trimTrailingWhitespace(value)

                    //ignore northing, easting
                    if (!field.equals("Northing") && !field.equals("Easting")) {
                        field = normalizeField(field)
                        fieldList << field
                        map[field] = value
                    }
                    //if (field.startsWith("Point")) println file
                }
            }
            resList << map

            //images
            List pages = pd.getDocumentCatalog().getAllPages();
            int imageCount = 1
            Iterator iter = pages.iterator();
            while (iter.hasNext()) {
                PDPage page = (PDPage) iter.next();
                PDResources resources = page.getResources();
                Map images = resources.getImages();
                if (images != null) {
                    Iterator imageIter = images.keySet().iterator();
                    while (imageIter.hasNext()) {
                        String key = (String) imageIter.next();
                        PDXObjectImage image = (PDXObjectImage) images.get(key);
                        String name = "/tmp/" + folder + "_" + file.getName().toLowerCase().replace(".pdf", "") + "_" + String.valueOf(imageCount) //+ "." + image.getSuffix()
                        //println "Writing image: " + name
                        image.write2file(name);
                        imageCount++
                    }
                }
            }
            pd.close()

        }
    }

    //fieldList.unique().each {println it}
    println fileCount + " files processed."
    //println resList.size()
    return resList
}

def normalizeField(String f) {
    if (f.equals("Start")) f = "Processing Start Time"
    if (f.equals("tart Time")) f = "Processing Start Time"
    if (f.equals("Start Time")) f = "Processing Start Time"
    if (f.equals("Stop")) f = "Processing Stop Time"
    if (f.equals("End")) f = "Processing Stop Time"
    if (f.equals("top Time")) f = "Processing Stop Time"
    if (f.equals("Stop Time")) f = "Processing Stop Time"
    if (f.equals("Duration")) f = "Processing Duration"
    if (f.equals("ration")) f = "Processing Duration"
    if (f.equals("Lat")) f = "Latitude"
    if (f.equals("Long")) f = "Longitude"
    if (f.equals("Data file")) f = "Data File"
    if (f.equals("ase Station")) f = "Base Station"
    if (f.equals("ort")) f = "Base Line Report"
    f = f.replaceAll("^\\s+", "") //trim left
    f = StringUtils.trimLeadingWhitespace(f)
    f = StringUtils.trimTrailingWhitespace(f)
    return f
}