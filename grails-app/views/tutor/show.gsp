
<%@ page import="babycare.Tutor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutor.label', default: 'Tutor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tutor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tutor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tutor">
			
				<g:if test="${tutorInstance?.registroEPS}">
				<li class="fieldcontain">
					<span id="registroEPS-label" class="property-label"><g:message code="tutor.registroEPS.label" default="Registro EPS" /></span>
					
						<span class="property-value" aria-labelledby="registroEPS-label"><g:fieldValue bean="${tutorInstance}" field="registroEPS"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.hijos}">
				<li class="fieldcontain">
					<span id="hijos-label" class="property-label"><g:message code="tutor.hijos.label" default="Hijos" /></span>
					
						<span class="property-value" aria-labelledby="hijos-label"><g:link controller="paciente" action="show" id="${tutorInstance?.hijos?.id}">${tutorInstance?.hijos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="tutor.paciente.label" default="Paciente" /></span>
					
						<g:each in="${tutorInstance.paciente}" var="p">
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tutorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tutorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
