<%@ page import="pgrs.Area" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-area" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-area" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="key" title="${message(code: 'area.key.label', default: ' ')}"/>

            <g:sortableColumn property="area" title="${message(code: 'area.area.label', default: 'Area')}"/>

            <g:sortableColumn property="country" title="${message(code: 'area.country.label', default: 'Country')}"/>

            <g:sortableColumn property="richDescription" title="${message(code: 'area.richDescription.label', default: 'Description')}"/>

            <g:sortableColumn property="richDescription" title="${message(code: 'area.richDescription.label', default: 'No. Points')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${areaInstanceList}" status="i" var="areaInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${areaInstance.id}"><img width="160px" src="http://ict.sopac.org/pgrs.img/${areaInstance.key}.jpg"/></g:link>
                </td>

                <td style="width: 120px"><g:link action="show" id="${areaInstance.id}"><b>${fieldValue(bean: areaInstance, field: "area")}</b></g:link>
                </td>

                <td>${fieldValue(bean: areaInstance, field: "country")}</td>

                <td>${fieldValue(bean: areaInstance, field: "richDescription")}</td>

                <td>${areaInstance.referencePoint.size()}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${areaInstanceTotal}"/>
    </div>
</div>
</body>
</html>
