<%@ page import="pgrs.ReferencePoint" %>



<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'type', 'error')} ">
    <label for="type">
        <g:message code="referencePoint.type.label" default="Type"/>

    </label>
    <g:select name="type" from="${referencePointInstance.constraints.type.inList}" value="${referencePointInstance?.type}" valueMessagePrefix="referencePoint.type" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'number', 'error')} ">
    <label for="number">
        <g:message code="referencePoint.number.label" default="Number"/>

    </label>
    <g:textField name="number" value="${referencePointInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="referencePoint.title.label" default="Title"/>

    </label>
    <g:textField name="title" value="${referencePointInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="referencePoint.description.label" default="Description"/>

    </label>
    <g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${referencePointInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'longitude', 'error')} ">
    <label for="longitude">
        <g:message code="referencePoint.longitude.label" default="Longitude"/>

    </label>
    <g:textField name="longitude" value="${referencePointInstance?.longitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'latitude', 'error')} ">
    <label for="latitude">
        <g:message code="referencePoint.latitude.label" default="Latitude"/>

    </label>
    <g:textField name="latitude" value="${referencePointInstance?.latitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'ellipsoidHeight', 'error')} ">
    <label for="ellipsoidHeight">
        <g:message code="referencePoint.ellipsoidHeight.label" default="Ellipsoid Height"/>

    </label>
    <g:textField name="ellipsoidHeight" value="${referencePointInstance?.ellipsoidHeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'x_coordinate', 'error')} ">
    <label for="x_coordinate">
        <g:message code="referencePoint.x_coordinate.label" default="Xcoordinate"/>

    </label>
    <g:textField name="x_coordinate" value="${referencePointInstance?.x_coordinate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'y_coordinate', 'error')} ">
    <label for="y_coordinate">
        <g:message code="referencePoint.y_coordinate.label" default="Ycoordinate"/>

    </label>
    <g:textField name="y_coordinate" value="${referencePointInstance?.y_coordinate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'z_coordinate', 'error')} ">
    <label for="z_coordinate">
        <g:message code="referencePoint.z_coordinate.label" default="Zcoordinate"/>

    </label>
    <g:textField name="z_coordinate" value="${referencePointInstance?.z_coordinate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'processingStartTime', 'error')} ">
    <label for="processingStartTime">
        <g:message code="referencePoint.processingStartTime.label" default="Processing Start Time"/>

    </label>
    <g:textField name="processingStartTime" value="${referencePointInstance?.processingStartTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'processingStopTime', 'error')} ">
    <label for="processingStopTime">
        <g:message code="referencePoint.processingStopTime.label" default="Processing Stop Time"/>

    </label>
    <g:textField name="processingStopTime" value="${referencePointInstance?.processingStopTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'processingDuration', 'error')} ">
    <label for="processingDuration">
        <g:message code="referencePoint.processingDuration.label" default="Processing Duration"/>

    </label>
    <g:textField name="processingDuration" value="${referencePointInstance?.processingDuration}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'baseStation', 'error')} ">
    <label for="baseStation">
        <g:message code="referencePoint.baseStation.label" default="Base Station"/>

    </label>
    <g:textField name="baseStation" value="${referencePointInstance?.baseStation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'pointIdMapinfo', 'error')} ">
    <label for="pointIdMapinfo">
        <g:message code="referencePoint.pointIdMapinfo.label" default="Point Id Mapinfo"/>

    </label>
    <g:textField name="pointIdMapinfo" value="${referencePointInstance?.pointIdMapinfo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'pointIdAccess', 'error')} ">
    <label for="pointIdAccess">
        <g:message code="referencePoint.pointIdAccess.label" default="Point Id Access"/>

    </label>
    <g:textField name="pointIdAccess" value="${referencePointInstance?.pointIdAccess}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'dataFile', 'error')} ">
    <label for="dataFile">
        <g:message code="referencePoint.dataFile.label" default="Data File"/>

    </label>
    <g:textField name="dataFile" value="${referencePointInstance?.dataFile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'heightElevation', 'error')} ">
    <label for="heightElevation">
        <g:message code="referencePoint.heightElevation.label" default="Height Elevation"/>

    </label>
    <g:textField name="heightElevation" value="${referencePointInstance?.heightElevation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'area', 'error')} ">
    <label for="area">
        <g:message code="referencePoint.area.label" default="Area"/>

    </label>
    <g:select id="area" name="area.id" from="${pgrs.Area.list()}" optionKey="id" value="${referencePointInstance?.area?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: referencePointInstance, field: 'comments', 'error')} ">
    <label for="comments">
        <g:message code="referencePoint.comments.label" default="Comments"/>

    </label>
    <g:textArea name="comments" cols="40" rows="5" maxlength="1250" value="${referencePointInstance?.comments}"/>
</div>

