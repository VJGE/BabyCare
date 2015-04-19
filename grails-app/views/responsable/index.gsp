
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
					
						<g:sortableColumn property="tipoAfiliado" title="${message(code: 'responsable.tipoAfiliado.label', default: 'Tipo Afiliado')}" />
					
						<g:sortableColumn property="ciudad" title="${message(code: 'responsable.ciudad.label', default: 'Ciudad')}" />
					
						<g:sortableColumn property="estadoCivil" title="${message(code: 'responsable.estadoCivil.label', default: 'Estado Civil')}" />
					
						<g:sortableColumn property="nivelSalarial" title="${message(code: 'responsable.nivelSalarial.label', default: 'Nivel Salarial')}" />
					
						<g:sortableColumn property="tipoPlan" title="${message(code: 'responsable.tipoPlan.label', default: 'Tipo Plan')}" />
					
						<g:sortableColumn property="ipsPrimaria" title="${message(code: 'responsable.ipsPrimaria.label', default: 'Ips Primaria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responsableInstanceList}" status="i" var="responsableInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responsableInstance.id}">${fieldValue(bean: responsableInstance, field: "tipoAfiliado")}</g:link></td>
					
						<td>${fieldValue(bean: responsableInstance, field: "ciudad")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "estadoCivil")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "nivelSalarial")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "tipoPlan")}</td>
					
						<td>${fieldValue(bean: responsableInstance, field: "ipsPrimaria")}</td>
					
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
