
<%@ page import="babycare.Vacuna" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vacuna.label', default: 'Vacuna')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vacuna" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vacuna" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreVacuna" title="${message(code: 'vacuna.nombreVacuna.label', default: 'Nombre Vacuna')}" />
					
						<g:sortableColumn property="edadAplicacion" title="${message(code: 'vacuna.edadAplicacion.label', default: 'Edad Aplicacion')}" />
					
						<g:sortableColumn property="fechaAplicacion" title="${message(code: 'vacuna.fechaAplicacion.label', default: 'Fecha Aplicacion')}" />
					
						<g:sortableColumn property="laboratorio" title="${message(code: 'vacuna.laboratorio.label', default: 'Laboratorio')}" />
					
						<g:sortableColumn property="numeroLote" title="${message(code: 'vacuna.numeroLote.label', default: 'Numero Lote')}" />
					
						<g:sortableColumn property="centro" title="${message(code: 'vacuna.centro.label', default: 'Centro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vacunaInstanceList}" status="i" var="vacunaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vacunaInstance.id}">${fieldValue(bean: vacunaInstance, field: "nombreVacuna")}</g:link></td>
					
						<td>${fieldValue(bean: vacunaInstance, field: "edadAplicacion")}</td>
					
						<td><g:formatDate date="${vacunaInstance.fechaAplicacion}" /></td>
					
						<td>${fieldValue(bean: vacunaInstance, field: "laboratorio")}</td>
					
						<td>${fieldValue(bean: vacunaInstance, field: "numeroLote")}</td>
					
						<td>${fieldValue(bean: vacunaInstance, field: "centro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vacunaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
