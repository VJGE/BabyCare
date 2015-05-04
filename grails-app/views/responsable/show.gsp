
<%@ page import="babycare.Responsable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responsable.label', default: 'Responsable')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-responsable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-responsable" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list responsable">
			
				<g:if test="${responsableInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="responsable.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${responsableInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="responsable.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${responsableInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="responsable.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${responsableInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.documento}">
				<li class="fieldcontain">
					<span id="documento-label" class="property-label"><g:message code="responsable.documento.label" default="Documento" /></span>
					
						<span class="property-value" aria-labelledby="documento-label"><g:fieldValue bean="${responsableInstance}" field="documento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="responsable.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${responsableInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.tipoAfiliado}">
				<li class="fieldcontain">
					<span id="tipoAfiliado-label" class="property-label"><g:message code="responsable.tipoAfiliado.label" default="Tipo Afiliado" /></span>
					
						<span class="property-value" aria-labelledby="tipoAfiliado-label"><g:fieldValue bean="${responsableInstance}" field="tipoAfiliado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="responsable.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${responsableInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="responsable.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${responsableInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.nivelSalarial}">
				<li class="fieldcontain">
					<span id="nivelSalarial-label" class="property-label"><g:message code="responsable.nivelSalarial.label" default="Nivel Salarial" /></span>
					
						<span class="property-value" aria-labelledby="nivelSalarial-label"><g:fieldValue bean="${responsableInstance}" field="nivelSalarial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.tipoPlan}">
				<li class="fieldcontain">
					<span id="tipoPlan-label" class="property-label"><g:message code="responsable.tipoPlan.label" default="Tipo Plan" /></span>
					
						<span class="property-value" aria-labelledby="tipoPlan-label"><g:fieldValue bean="${responsableInstance}" field="tipoPlan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.ipsPrimaria}">
				<li class="fieldcontain">
					<span id="ipsPrimaria-label" class="property-label"><g:message code="responsable.ipsPrimaria.label" default="Ips Primaria" /></span>
					
						<span class="property-value" aria-labelledby="ipsPrimaria-label"><g:fieldValue bean="${responsableInstance}" field="ipsPrimaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.eps}">
				<li class="fieldcontain">
					<span id="eps-label" class="property-label"><g:message code="responsable.eps.label" default="Eps" /></span>
					
						<span class="property-value" aria-labelledby="eps-label"><g:fieldValue bean="${responsableInstance}" field="eps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="responsable.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:fieldValue bean="${responsableInstance}" field="ocupacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.parentesco}">
				<li class="fieldcontain">
					<span id="parentesco-label" class="property-label"><g:message code="responsable.parentesco.label" default="Parentesco" /></span>
					
						<span class="property-value" aria-labelledby="parentesco-label"><g:fieldValue bean="${responsableInstance}" field="parentesco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.contrasenia}">
				<li class="fieldcontain">
					<span id="contrasenia-label" class="property-label"><g:message code="responsable.contrasenia.label" default="Contrasebua" /></span>
					
						<span class="property-value" aria-labelledby="contrasenia-label"><g:fieldValue bean="${responsableInstance}" field="contrasenia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="responsable.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${responsableInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="responsable.paciente.label" default="Paciente" /></span>
					
						<g:each in="${responsableInstance.paciente}" var="p">
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="responsable.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${responsableInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:responsableInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${responsableInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
