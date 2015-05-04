
<%@ page import="babycare.Responsable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responsable.label', default: 'Responsable')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-responsable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-responsable" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'responsable.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'responsable.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'responsable.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="documento" title="${message(code: 'responsable.documento.label', default: 'Documento')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'responsable.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="tipoAfiliado" title="${message(code: 'responsable.tipoAfiliado.label', default: 'Tipo Afiliado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responsableInstanceList}" status="i" var="responsableInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responsableInstance.id}">${fieldValue(bean: responsableInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: responsableInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "tipoDocumento")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "documento")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "tipoAfiliado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${responsableInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
