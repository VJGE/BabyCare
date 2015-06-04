
<%@ page import="babycare.Consulta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'consulta.label', default: 'Consulta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-consulta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-consulta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="documentoPaciente" title="${message(code: 'consulta.documentoPaciente.label', default: 'Documento Paciente')}" />
					
						<g:sortableColumn property="documentoMedico" title="${message(code: 'consulta.documentoMedico.label', default: 'Documento Medico')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'consulta.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="finalizada" title="${message(code: 'consulta.finalizada.label', default: 'Finalizada')}" />
					
						<g:sortableColumn property="asistencia" title="${message(code: 'consulta.asistencia.label', default: 'Asistencia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${consultaInstanceList}" status="i" var="consultaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${consultaInstance.id}">${fieldValue(bean: consultaInstance, field: "documentoPaciente")}</g:link></td>
					
						<td>${fieldValue(bean: consultaInstance, field: "documentoMedico")}</td>
					
						<td><g:formatDate date="${consultaInstance.date}" /></td>
					
						<td><g:formatBoolean boolean="${consultaInstance.finalizada}" /></td>
					
						<td><g:formatBoolean boolean="${consultaInstance.asistencia}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${consultaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
