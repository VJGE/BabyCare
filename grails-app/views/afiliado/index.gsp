
<%@ page import="babycare.Afiliado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'afiliado.label', default: 'Afiliado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-afiliado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-afiliado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'afiliado.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'afiliado.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'afiliado.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="documento" title="${message(code: 'afiliado.documento.label', default: 'Documento')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'afiliado.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="tipoAfiliado" title="${message(code: 'afiliado.tipoAfiliado.label', default: 'Tipo Afiliado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${afiliadoInstanceList}" status="i" var="afiliadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${afiliadoInstance.id}">${fieldValue(bean: afiliadoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "tipoDocumento")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "documento")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "tipoAfiliado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${afiliadoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
