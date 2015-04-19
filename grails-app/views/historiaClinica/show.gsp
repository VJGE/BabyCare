
<%@ page import="babycare.HistoriaClinica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historiaClinica.label', default: 'HistoriaClinica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-historiaClinica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-historiaClinica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list historiaClinica">
			
				<g:if test="${historiaClinicaInstance?.codigoPlanilla}">
				<li class="fieldcontain">
					<span id="codigoPlanilla-label" class="property-label"><g:message code="historiaClinica.codigoPlanilla.label" default="Codigo Planilla" /></span>
					
						<span class="property-value" aria-labelledby="codigoPlanilla-label"><g:fieldValue bean="${historiaClinicaInstance}" field="codigoPlanilla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.fechaHistoria}">
				<li class="fieldcontain">
					<span id="fechaHistoria-label" class="property-label"><g:message code="historiaClinica.fechaHistoria.label" default="Fecha Historia" /></span>
					
						<span class="property-value" aria-labelledby="fechaHistoria-label"><g:formatDate date="${historiaClinicaInstance?.fechaHistoria}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.lugarHistoria}">
				<li class="fieldcontain">
					<span id="lugarHistoria-label" class="property-label"><g:message code="historiaClinica.lugarHistoria.label" default="Lugar Historia" /></span>
					
						<span class="property-value" aria-labelledby="lugarHistoria-label"><g:fieldValue bean="${historiaClinicaInstance}" field="lugarHistoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.numeroHistoria}">
				<li class="fieldcontain">
					<span id="numeroHistoria-label" class="property-label"><g:message code="historiaClinica.numeroHistoria.label" default="Numero Historia" /></span>
					
						<span class="property-value" aria-labelledby="numeroHistoria-label"><g:fieldValue bean="${historiaClinicaInstance}" field="numeroHistoria"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:historiaClinicaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${historiaClinicaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
