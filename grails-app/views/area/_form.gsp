<%@ page import="pgrs.Area" %>



<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="area.area.label" default="Area" />
		
	</label>
	<g:textField name="area" value="${areaInstance?.area}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="area.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${areaInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'richDescription', 'error')} ">
	<label for="richDescription">
		<g:message code="area.richDescription.label" default="Rich Description" />
		
	</label>
	<g:textArea name="richDescription" cols="40" rows="5" maxlength="5000" value="${areaInstance?.richDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'referencePoint', 'error')} ">
	<label for="referencePoint">
		<g:message code="area.referencePoint.label" default="Reference Point" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${areaInstance?.referencePoint?}" var="r">
    <li><g:link controller="referencePoint" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="referencePoint" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'referencePoint.label', default: 'ReferencePoint')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'key', 'error')} ">
	<label for="key">
		<g:message code="area.key.label" default="Key" />
		
	</label>
	<g:textField name="key" value="${areaInstance?.key}"/>
</div>

