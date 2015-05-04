
<%@ page import="babycare.Padre" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'padre.label', default: 'Padre')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-padre" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-padre" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list padre">
			
				<g:if test="${padreInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="padre.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${padreInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="padre.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${padreInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="padre.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${padreInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.documento}">
				<li class="fieldcontain">
					<span id="documento-label" class="property-label"><g:message code="padre.documento.label" default="Documento" /></span>
					
						<span class="property-value" aria-labelledby="documento-label"><g:fieldValue bean="${padreInstance}" field="documento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="padre.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${padreInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.pesoPadre}">
				<li class="fieldcontain">
					<span id="pesoPadre-label" class="property-label"><g:message code="padre.pesoPadre.label" default="Peso Padre" /></span>
					
						<span class="property-value" aria-labelledby="pesoPadre-label"><g:fieldValue bean="${padreInstance}" field="pesoPadre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.tallaPadre}">
				<li class="fieldcontain">
					<span id="tallaPadre-label" class="property-label"><g:message code="padre.tallaPadre.label" default="Talla Padre" /></span>
					
						<span class="property-value" aria-labelledby="tallaPadre-label"><g:fieldValue bean="${padreInstance}" field="tallaPadre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.enfermedadesActuales}">
				<li class="fieldcontain">
					<span id="enfermedadesActuales-label" class="property-label"><g:message code="padre.enfermedadesActuales.label" default="Enfermedades Actuales" /></span>
					
						<span class="property-value" aria-labelledby="enfermedadesActuales-label"><g:fieldValue bean="${padreInstance}" field="enfermedadesActuales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.tratamientos}">
				<li class="fieldcontain">
					<span id="tratamientos-label" class="property-label"><g:message code="padre.tratamientos.label" default="Tratamientos" /></span>
					
						<span class="property-value" aria-labelledby="tratamientos-label"><g:fieldValue bean="${padreInstance}" field="tratamientos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="padre.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${padreInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.hijo}">
				<li class="fieldcontain">
					<span id="hijo-label" class="property-label"><g:message code="padre.hijo.label" default="Hijo" /></span>
					
						<span class="property-value" aria-labelledby="hijo-label"><g:link controller="paciente" action="show" id="${padreInstance?.hijo?.id}">${padreInstance?.hijo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${padreInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="padre.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${padreInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:padreInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${padreInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
