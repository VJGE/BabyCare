
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
					
						<g:sortableColumn property="tipoAfiliado" title="${message(code: 'afiliado.tipoAfiliado.label', default: 'Tipo Afiliado')}" />
					
						<g:sortableColumn property="ciudad" title="${message(code: 'afiliado.ciudad.label', default: 'Ciudad')}" />
					
						<g:sortableColumn property="estadoCivil" title="${message(code: 'afiliado.estadoCivil.label', default: 'Estado Civil')}" />
					
						<g:sortableColumn property="nivelSalarial" title="${message(code: 'afiliado.nivelSalarial.label', default: 'Nivel Salarial')}" />
					
						<g:sortableColumn property="tipoPlan" title="${message(code: 'afiliado.tipoPlan.label', default: 'Tipo Plan')}" />
					
						<g:sortableColumn property="ipsPrimaria" title="${message(code: 'afiliado.ipsPrimaria.label', default: 'Ips Primaria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${afiliadoInstanceList}" status="i" var="afiliadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${afiliadoInstance.id}">${fieldValue(bean: afiliadoInstance, field: "tipoAfiliado")}</g:link></td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "ciudad")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "estadoCivil")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "nivelSalarial")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "tipoPlan")}</td>
					
						<td>${fieldValue(bean: afiliadoInstance, field: "ipsPrimaria")}</td>
					
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
