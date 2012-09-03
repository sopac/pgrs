<%@ page import="pgrs.Area" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-area" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-area" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list area">

        <g:if test="${areaInstance?.area}">
            <li class="fieldcontain">
                <span id="area-label" class="property-label"><g:message code="area.area.label" default="Area"/></span>

                <span class="property-value" aria-labelledby="area-label"><b><g:fieldValue bean="${areaInstance}" field="area"/></b>
                </span>

            </li>
        </g:if>

        <g:if test="${areaInstance?.country}">
            <li class="fieldcontain">
                <span id="country-label" class="property-label"><g:message code="area.country.label" default="Country"/></span>

                <span class="property-value" aria-labelledby="country-label"><b><g:fieldValue bean="${areaInstance}" field="country"/></b>
                </span>

            </li>
        </g:if>

        <g:if test="${areaInstance?.richDescription}">
            <li class="fieldcontain">
                <span id="richDescription-label" class="property-label"><g:message code="area.richDescription.label" default="Description"/></span>

                <span class="property-value" aria-labelledby="richDescription-label"><g:fieldValue bean="${areaInstance}" field="richDescription"/></span>

            </li>
        </g:if>

        <g:if test="${areaInstance?.key}">
            <li class="fieldcontain">
                <span id="key-label" class="property-label"><g:message code="area.key.label" default=" "/></span>

                <span class="property-value" aria-labelledby="key-label"><img src="http://ict.sopac.org/pgrs.img/${areaInstance.key}.jpg"/>
                </span>

            </li>
        </g:if>

        <g:if test="${areaInstance?.referencePoint}">
            <li class="fieldcontain">
                <span id="referencePoint-label" class="property-label"><g:message code="area.referencePoint.label" default="Reference Point"/></span>

                <g:each in="${areaInstance.referencePoint}" var="r">
                    <span class="property-value" aria-labelledby="referencePoint-label"><g:link controller="referencePoint" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>


        <li class="fieldcontain">
            <span id="referencePoint-label" class="property-label"><g:message code="area.referencePoint.label" default="No. Points"/></span>
            <span class="property-value" aria-labelledby="referencePoint-label"><b>${areaInstance.referencePoint.size()}</b
            </span>
        </li>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${areaInstance?.id}"/>
            <g:link class="edit" action="edit" id="${areaInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
