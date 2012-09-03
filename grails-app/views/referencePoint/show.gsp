<%@ page import="pgrs.ReferencePoint" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'referencePoint.label', default: 'ReferencePoint')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-referencePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-referencePoint" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list referencePoint">

<g:if test="${referencePointInstance?.type}">
    <li class="fieldcontain">
        <span id="type-label" class="property-label"><g:message code="referencePoint.type.label" default="Type"/></span>

        <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${referencePointInstance}" field="type"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.number}">
    <li class="fieldcontain">
        <span id="number-label" class="property-label"><g:message code="referencePoint.number.label" default="Number"/></span>

        <span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${referencePointInstance}" field="number"/></span>

    </li>
</g:if>


<g:if test="${referencePointInstance?.title}">
    <li class="fieldcontain">
        <span id="title-label" class="property-label"><g:message code="referencePoint.title.label" default="Title"/></span>

        <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${referencePointInstance}" field="title"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.description}">
    <li class="fieldcontain">
        <span id="description-label" class="property-label"><g:message code="referencePoint.description.label" default="Description"/></span>

        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${referencePointInstance}" field="description"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.longitude}">
    <li class="fieldcontain">
        <span id="longitude-label" class="property-label"><g:message code="referencePoint.longitude.label" default="Longitude"/></span>

        <span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${referencePointInstance}" field="longitude"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.latitude}">
    <li class="fieldcontain">
        <span id="latitude-label" class="property-label"><g:message code="referencePoint.latitude.label" default="Latitude"/></span>

        <span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${referencePointInstance}" field="latitude"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.ellipsoidHeight}">
    <li class="fieldcontain">
        <span id="ellipsoidHeight-label" class="property-label"><g:message code="referencePoint.ellipsoidHeight.label" default="Ellipsoid Height"/></span>

        <span class="property-value" aria-labelledby="ellipsoidHeight-label"><g:fieldValue bean="${referencePointInstance}" field="ellipsoidHeight"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.x_coordinate}">
    <li class="fieldcontain">
        <span id="x_coordinate-label" class="property-label"><g:message code="referencePoint.x_coordinate.label" default="Xcoordinate"/></span>

        <span class="property-value" aria-labelledby="x_coordinate-label"><g:fieldValue bean="${referencePointInstance}" field="x_coordinate"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.y_coordinate}">
    <li class="fieldcontain">
        <span id="y_coordinate-label" class="property-label"><g:message code="referencePoint.y_coordinate.label" default="Ycoordinate"/></span>

        <span class="property-value" aria-labelledby="y_coordinate-label"><g:fieldValue bean="${referencePointInstance}" field="y_coordinate"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.z_coordinate}">
    <li class="fieldcontain">
        <span id="z_coordinate-label" class="property-label"><g:message code="referencePoint.z_coordinate.label" default="Zcoordinate"/></span>

        <span class="property-value" aria-labelledby="z_coordinate-label"><g:fieldValue bean="${referencePointInstance}" field="z_coordinate"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.processingStartTime}">
    <li class="fieldcontain">
        <span id="processingStartTime-label" class="property-label"><g:message code="referencePoint.processingStartTime.label" default="Processing Start Time"/></span>

        <span class="property-value" aria-labelledby="processingStartTime-label"><g:fieldValue bean="${referencePointInstance}" field="processingStartTime"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.processingStopTime}">
    <li class="fieldcontain">
        <span id="processingStopTime-label" class="property-label"><g:message code="referencePoint.processingStopTime.label" default="Processing Stop Time"/></span>

        <span class="property-value" aria-labelledby="processingStopTime-label"><g:fieldValue bean="${referencePointInstance}" field="processingStopTime"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.processingDuration}">
    <li class="fieldcontain">
        <span id="processingDuration-label" class="property-label"><g:message code="referencePoint.processingDuration.label" default="Processing Duration"/></span>

        <span class="property-value" aria-labelledby="processingDuration-label"><g:fieldValue bean="${referencePointInstance}" field="processingDuration"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.baseStation}">
    <li class="fieldcontain">
        <span id="baseStation-label" class="property-label"><g:message code="referencePoint.baseStation.label" default="Base Station"/></span>

        <span class="property-value" aria-labelledby="baseStation-label"><g:fieldValue bean="${referencePointInstance}" field="baseStation"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.pointIdMapinfo}">
    <li class="fieldcontain">
        <span id="pointIdMapinfo-label" class="property-label"><g:message code="referencePoint.pointIdMapinfo.label" default="Point Id Mapinfo"/></span>

        <span class="property-value" aria-labelledby="pointIdMapinfo-label"><g:fieldValue bean="${referencePointInstance}" field="pointIdMapinfo"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.pointIdAccess}">
    <li class="fieldcontain">
        <span id="pointIdAccess-label" class="property-label"><g:message code="referencePoint.pointIdAccess.label" default="Point Id Access"/></span>

        <span class="property-value" aria-labelledby="pointIdAccess-label"><g:fieldValue bean="${referencePointInstance}" field="pointIdAccess"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.dataFile}">
    <li class="fieldcontain">
        <span id="dataFile-label" class="property-label"><g:message code="referencePoint.dataFile.label" default="Data File"/></span>

        <span class="property-value" aria-labelledby="dataFile-label"><g:fieldValue bean="${referencePointInstance}" field="dataFile"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.heightElevation}">
    <li class="fieldcontain">
        <span id="heightElevation-label" class="property-label"><g:message code="referencePoint.heightElevation.label" default="Height Elevation"/></span>

        <span class="property-value" aria-labelledby="heightElevation-label"><g:fieldValue bean="${referencePointInstance}" field="heightElevation"/></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.area}">
    <li class="fieldcontain">
        <span id="area-label" class="property-label"><g:message code="referencePoint.area.label" default="Area"/></span>

        <span class="property-value" aria-labelledby="area-label"><g:link controller="area" action="show" id="${referencePointInstance?.area?.id}">${referencePointInstance?.area?.encodeAsHTML()}</g:link></span>

    </li>
</g:if>

<g:if test="${referencePointInstance?.comments}">
    <li class="fieldcontain">
        <span id="comments-label" class="property-label"><g:message code="referencePoint.comments.label" default="Comments"/></span>

        <span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${referencePointInstance}" field="comments"/></span>

    </li>
</g:if>



<li class="fieldcontain">
    <span class="property-label"></span>
    <span class="property-value">
        <hr/><br/>
        <g:each in="${new java.io.File("/var/lib/tomcat6/webapps/ROOT/pgrs.img/").listFiles()}" var="file">
            <g:if test="${file.getName().startsWith(referencePointInstance.area.key)}">
                <g:if test="${file.getName().contains(referencePointInstance.type.toLowerCase())}">
                    <g:if test="${file.getName().contains(referencePointInstance.number + ".")}">
                        <g:if test="${file.length() >= 4000}">
                            <img src="http://ict.sopac.org/pgrs.img/${file.getName()}"/>
                        </g:if>
                    </g:if>
                </g:if>
            </g:if>
        </g:each>
    </span>

</li>

</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${referencePointInstance?.id}"/>
        <g:link class="edit" action="edit" id="${referencePointInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </fieldset>
</g:form>
</div>
</body>
</html>
