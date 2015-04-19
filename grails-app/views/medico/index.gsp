
<%@ page import="babycare.Medico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'medico.label', default: 'Medico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-medico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-medico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'medico.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'medico.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'medico.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="documento" title="${message(code: 'medico.documento.label', default: 'Documento')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'medico.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="especialidad" title="${message(code: 'medico.especialidad.label', default: 'Especialidad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${medicoInstanceList}" status="i" var="medicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${medicoInstance.id}">${fieldValue(bean: medicoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: medicoInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "tipoDocumento")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "documento")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: medicoInstance, field: "especialidad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${medicoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
