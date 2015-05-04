
<%@ page import="babycare.Medico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medico.label', default: 'Medico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-medico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-medico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list medico">
			
				<g:if test="${medicoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="medico.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${medicoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="medico.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${medicoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="medico.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${medicoInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.documento}">
				<li class="fieldcontain">
					<span id="documento-label" class="property-label"><g:message code="medico.documento.label" default="Documento" /></span>
					
						<span class="property-value" aria-labelledby="documento-label"><g:fieldValue bean="${medicoInstance}" field="documento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="medico.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${medicoInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.especialidad}">
				<li class="fieldcontain">
					<span id="especialidad-label" class="property-label"><g:message code="medico.especialidad.label" default="Especialidad" /></span>
					
						<span class="property-value" aria-labelledby="especialidad-label"><g:fieldValue bean="${medicoInstance}" field="especialidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.registroMedico}">
				<li class="fieldcontain">
					<span id="registroMedico-label" class="property-label"><g:message code="medico.registroMedico.label" default="Registro Medico" /></span>
					
						<span class="property-value" aria-labelledby="registroMedico-label"><g:fieldValue bean="${medicoInstance}" field="registroMedico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="medico.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${medicoInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.contrasenia}">
				<li class="fieldcontain">
					<span id="contrasenia-label" class="property-label"><g:message code="medico.contrasenia.label" default="Contrasenia" /></span>
					
						<span class="property-value" aria-labelledby="contrasenia-label"><g:fieldValue bean="${medicoInstance}" field="contrasenia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.consultas}">
				<li class="fieldcontain">
					<span id="consultas-label" class="property-label"><g:message code="medico.consultas.label" default="Consultas" /></span>
					
						<g:each in="${medicoInstance.consultas}" var="c">
						<span class="property-value" aria-labelledby="consultas-label"><g:link controller="registroConsulta" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="medico.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${medicoInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.pacientes}">
				<li class="fieldcontain">
					<span id="pacientes-label" class="property-label"><g:message code="medico.pacientes.label" default="Pacientes" /></span>
					
						<g:each in="${medicoInstance.pacientes}" var="p">
						<span class="property-value" aria-labelledby="pacientes-label"><g:link controller="paciente" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${medicoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="medico.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${medicoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:medicoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${medicoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
