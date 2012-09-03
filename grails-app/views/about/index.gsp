<%@ page import="pgrs.ReferencePoint" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main">
    <title>About PGRS</title>
</head>

<body>
<a href="#edit-referencePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

<div style="text-align: justify; margin: 30px" role="main">
    <img src="http://ict.sopac.org/pgrs.img/main6.jpg" style="margin-right: 10px" align="left" width="300px" border="1"/>

    <h1>Introduction</h1>
    Experience show that geo-referenced satellite image data received for Pacific Island Countries are often not correct  and have be checked and mostly geometrically corrected. During the discussion on day four of the Regional GIS&RS User Conference the outline of a Reference Image Points (RIP) network was discussed and the need was addressed by several Pacific Island Countries. RIPs are points of know coordinates (X, Y and Z), which are also visible in the image. The setup of existing ground control point networks of several Pacific Land Departments are not usable as these points are not necessarily visible in the image data. It was therefore decided not to speak about Ground Control Points but speak of Reference Image Points.
    <br/><br/>

    <br/>

    <h1>Characteristics of Reference Image Points</h1>
    To ensure that RIPs are visible in the image data features have to be selected,which have contrast against the background.At the same time the RIPs must have the required accuracy for the corresponding image scale. For example pan-sharpened QuickBird images have a resolution of 60cm and the RIPs therefore must be located with decimetre accuracy. In semi urban areas corners of fences provide good references, as linear elements such as fences are mostly visible far below the image resolution. The 20cm concrete foundation of the fence in figure 01 is clearly visible and the corner point can be exactly located on the image. Sometimes point features provide a strong contrast against the background such as the base of the flagpole in figure 02. In urban areas roof corners can be utilised if a GPS survey is possible in such areas.
    <br/><br/>
    <img src="http://ict.sopac.org/pgrs.img/main1.jpg" style="margin-right: 10px" align="left" width="300px" height="400px" border="1"/>

    <h1>Survey of Reference Image Points</h1>
    Like the features of RIPs also the survey has to follow the requirements of the image scale; this refers to the field data collection and the post survey treatment.

    <h1>Field Survey</h1>
    1:10,000 scale (multi-spectral IKONOS image data) requires 2 to 3m accurate RIPs are and a GPS enabling differential correction is sufficient for the work. 1:5,000 scale (pan-sharpened QuickBird?image data) requires a totally different GPS setup, survey grade GPS receivers are necessary which can analyse the carrier phase and provide position data in centimetre accuracy. For the survey the base station has to have a locations in cm accuracy. This can be achieved by either selecting and existing ground control point and get the coordinates (X, Y, Z) from the corresponding Land and Survey Department or by establishing an own Absolute Reference Point (ARP) as shown in figure 03. To establish a ARP the receiver has to record for 24 hours in static mode, Then Base Station Points (BSP) have to be established where both a) the base station receiver and b) the rover unit record simoltaneously for 1 hour in static mode (see figure 04). Havind done this, the base station can be established at the BSP and the RIPs can be surveyed in a circle around the base station of maximum 15km. On each RIP the GPS receiver has to record for 0.5 hour (see figure 05).



    <h1>Post Field Survey Correction</h1>
    After finishing the survey of RIPs the user has to download data from the two closest South Pacific regional GPS base stations. The data is available on from this application. Having the data the position of the ARP has to be adjusted using for example; Trimble Geomatics Office software. The BSPs and RIPs have to be adjusted as well.
    <br/>

    <h1>Repository</h1>
    During a discussion as part of the Regional GIS&RS User Conference it was also stated that there should be a RIP repository which can be accessed by everybody including the satellite data distributing companies. For each RIP you'll find :
    <br/><br/>
    <ul style="margin-left: 10px">
        <li>1. Small subset of the image data, where the RIP is visible</li>
        <li>2. The position data and survey details e.g.:base station was utilised, correction by AUSLIG, etc.</li>
        <li>3. Photographs of the feature in the field</li>
        <li>4. Description of the feature and the features location</li>
    </ul>

    <br/>
    <img src="http://ict.sopac.org/pgrs.img/main2.jpg" style="margin-right: 10px" align="left" width="300px" border="1"/>
    <br/><br/>

    <h1>Summary and Recommendations</h1>

    To utilise image data as backdrops with correct image geo-reference a RIP database is essential. If all users who produce image backdrops work together funds and effort can be saved.
    Solutions have to be found to establish RIPs in areas covered by vegetation or on reefs. New solutions might be also necessary to include RIPs for radar data.

</div>
</body>
</html>
