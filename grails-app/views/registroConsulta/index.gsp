
<%@ page import="babycare.RegistroConsulta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registroConsulta.label', default: 'RegistroConsulta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registroConsulta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registroConsulta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'registroConsulta.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="tipoConsulta" title="${message(code: 'registroConsulta.tipoConsulta.label', default: 'Tipo Consulta')}" />
					
						<g:sortableColumn property="conceptoMedico" title="${message(code: 'registroConsulta.conceptoMedico.label', default: 'Concepto Medico')}" />
					
						<th><g:message code="registroConsulta.historiaMedica.label" default="Historia Medica" /></th>
					
						<g:sortableColumn property="observaciones" title="${message(code: 'registroConsulta.observaciones.label', default: 'Observaciones')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registroConsultaInstanceList}" status="i" var="registroConsultaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registroConsultaInstance.id}">${fieldValue(bean: registroConsultaInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: registroConsultaInstance, field: "tipoConsulta")}</td>
					
						<td>${fieldValue(bean: registroConsultaInstance, field: "conceptoMedico")}</td>
					
						<td>${fieldValue(bean: registroConsultaInstance, field: "historiaMedica")}</td>
					
						<td>${fieldValue(bean: registroConsultaInstance, field: "observaciones")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registroConsultaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
