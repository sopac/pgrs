<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>

<body>
<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div id="status" role="complementary">

    <h1>About</h1>

    <p style="text-align: justify">
        Geo-referenced satellite image data received for Pacific Island Countries are often not correct and have be verified and  geometrically corrected.
        <br/><br/>
        Reference Image Points (RIP) are points of known coordinates (X, Y and Z) on a coordinate system, which are also referenced in the satellite and aerial imagery.
        <br/><br/>
        This online database system holds Reference Image Points for Pacific Island Countries, and would be continuously updated by Applied GeoScience and Technology Division of Secretariat of the Pacific Community.
        <br/><br/>
        For furthe queries about the datasets in this application please contact <a href="mailto:datarequest@sopac.org">datarequest@sopac.org</a>
    </p>
</div>

<div id="page-body" role="main" align="center">
    <h1 style="font-size: 20px">Reference Image Points Repository</h1>
    <i style="color: graytext;">Beta - Phase 1</i>

    <p>
        To properly utilise satellite and aerial imagery data as backdrops in Geographic Information systems and processes which is correctly geo-referenced, this online database system provides Reference Image Points in the Pacific region.
        This system currently contains <u>${pgrs.ReferencePoint.count()}</u> Reference Image Points.
        <br/>
        <a href="${createLink(controller: 'about')}">Read more...</a>
    </p>

    <br/><hr width="600px"><br/>

    <div width="70%" style="font-size: 16px" align="center">
        <a href="${createLink(controller: 'area')}">
            <g:img width="200px" file="area.gif"></g:img>
            <br/><br/>
            Browse by Area
        </a>
        <a href="${createLink(controller: 'referencePoint')}">
            <br/><br/>
            <g:img width="240px" file="point.jpg"></g:img>
            <br/>
            Browse Reference Image Points
        </a>
    </div>
</div>

<!--
<br/><br/><br/><br/><br/>
<ul>
    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
    <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
</g:each>
</ul>
-->

</body>
</html>
