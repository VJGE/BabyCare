
<%@ page import="babycare.Afiliado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afiliado.label', default: 'Afiliado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-afiliado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-afiliado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list afiliado">
			
				<g:if test="${afiliadoInstance?.tipoAfiliado}">
				<li class="fieldcontain">
					<span id="tipoAfiliado-label" class="property-label"><g:message code="afiliado.tipoAfiliado.label" default="Tipo Afiliado" /></span>
					
						<span class="property-value" aria-labelledby="tipoAfiliado-label"><g:fieldValue bean="${afiliadoInstance}" field="tipoAfiliado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="afiliado.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${afiliadoInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="afiliado.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${afiliadoInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.nivelSalarial}">
				<li class="fieldcontain">
					<span id="nivelSalarial-label" class="property-label"><g:message code="afiliado.nivelSalarial.label" default="Nivel Salarial" /></span>
					
						<span class="property-value" aria-labelledby="nivelSalarial-label"><g:fieldValue bean="${afiliadoInstance}" field="nivelSalarial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.tipoPlan}">
				<li class="fieldcontain">
					<span id="tipoPlan-label" class="property-label"><g:message code="afiliado.tipoPlan.label" default="Tipo Plan" /></span>
					
						<span class="property-value" aria-labelledby="tipoPlan-label"><g:fieldValue bean="${afiliadoInstance}" field="tipoPlan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.ipsPrimaria}">
				<li class="fieldcontain">
					<span id="ipsPrimaria-label" class="property-label"><g:message code="afiliado.ipsPrimaria.label" default="Ips Primaria" /></span>
					
						<span class="property-value" aria-labelledby="ipsPrimaria-label"><g:fieldValue bean="${afiliadoInstance}" field="ipsPrimaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.eps}">
				<li class="fieldcontain">
					<span id="eps-label" class="property-label"><g:message code="afiliado.eps.label" default="Eps" /></span>
					
						<span class="property-value" aria-labelledby="eps-label"><g:fieldValue bean="${afiliadoInstance}" field="eps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${afiliadoInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="afiliado.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:fieldValue bean="${afiliadoInstance}" field="ocupacion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:afiliadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${afiliadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
