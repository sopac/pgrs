<%@ page import="pgrs.ReferencePoint" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'referencePoint.label', default: 'ReferencePoint')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-referencePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-referencePoint" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="title" title="${message(code: 'referencePoint.title.label', default: 'Title')}"/>

            <g:sortableColumn property="type" title="${message(code: 'referencePoint.type.label', default: 'Type')}"/>

            <g:sortableColumn property="description" title="${message(code: 'referencePoint.description.label', default: 'Description')}"/>

            <g:sortableColumn property="description" title="${message(code: 'referencePoint.description.label', default: 'Area')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${referencePointInstanceList}" status="i" var="referencePointInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${referencePointInstance.id}">${fieldValue(bean: referencePointInstance, field: "title")}</g:link></td>

                <td>${fieldValue(bean: referencePointInstance, field: "type")}</td>

                <td>${fieldValue(bean: referencePointInstance, field: "description")}</td>

                <td>${fieldValue(bean: referencePointInstance, field: "area")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${referencePointInstanceTotal}"/>
    </div>
</div>
</body>
</html>
