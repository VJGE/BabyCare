
<%@ page import="babycare.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${pacienteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="paciente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${pacienteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="paciente.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${pacienteInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="paciente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${pacienteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="paciente.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${pacienteInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.documento}">
				<li class="fieldcontain">
					<span id="documento-label" class="property-label"><g:message code="paciente.documento.label" default="Documento" /></span>
					
						<span class="property-value" aria-labelledby="documento-label"><g:fieldValue bean="${pacienteInstance}" field="documento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="paciente.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${pacienteInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edadMeses}">
				<li class="fieldcontain">
					<span id="edadMeses-label" class="property-label"><g:message code="paciente.edadMeses.label" default="Edad Meses" /></span>
					
						<span class="property-value" aria-labelledby="edadMeses-label"><g:fieldValue bean="${pacienteInstance}" field="edadMeses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tipoAfiliado}">
				<li class="fieldcontain">
					<span id="tipoAfiliado-label" class="property-label"><g:message code="paciente.tipoAfiliado.label" default="Tipo Afiliado" /></span>
					
						<span class="property-value" aria-labelledby="tipoAfiliado-label"><g:fieldValue bean="${pacienteInstance}" field="tipoAfiliado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="paciente.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${pacienteInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="paciente.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${pacienteInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.nivelSalarial}">
				<li class="fieldcontain">
					<span id="nivelSalarial-label" class="property-label"><g:message code="paciente.nivelSalarial.label" default="Nivel Salarial" /></span>
					
						<span class="property-value" aria-labelledby="nivelSalarial-label"><g:fieldValue bean="${pacienteInstance}" field="nivelSalarial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tipoPlan}">
				<li class="fieldcontain">
					<span id="tipoPlan-label" class="property-label"><g:message code="paciente.tipoPlan.label" default="Tipo Plan" /></span>
					
						<span class="property-value" aria-labelledby="tipoPlan-label"><g:fieldValue bean="${pacienteInstance}" field="tipoPlan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.ipsPrimaria}">
				<li class="fieldcontain">
					<span id="ipsPrimaria-label" class="property-label"><g:message code="paciente.ipsPrimaria.label" default="Ips Primaria" /></span>
					
						<span class="property-value" aria-labelledby="ipsPrimaria-label"><g:fieldValue bean="${pacienteInstance}" field="ipsPrimaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.eps}">
				<li class="fieldcontain">
					<span id="eps-label" class="property-label"><g:message code="paciente.eps.label" default="Eps" /></span>
					
						<span class="property-value" aria-labelledby="eps-label"><g:fieldValue bean="${pacienteInstance}" field="eps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="paciente.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:fieldValue bean="${pacienteInstance}" field="ocupacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="paciente.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${pacienteInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.talla}">
				<li class="fieldcontain">
					<span id="talla-label" class="property-label"><g:message code="paciente.talla.label" default="Talla" /></span>
					
						<span class="property-value" aria-labelledby="talla-label"><g:fieldValue bean="${pacienteInstance}" field="talla"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pc}">
				<li class="fieldcontain">
					<span id="pc-label" class="property-label"><g:message code="paciente.pc.label" default="Pc" /></span>
					
						<span class="property-value" aria-labelledby="pc-label"><g:fieldValue bean="${pacienteInstance}" field="pc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tipoNacimiento}">
				<li class="fieldcontain">
					<span id="tipoNacimiento-label" class="property-label"><g:message code="paciente.tipoNacimiento.label" default="Tipo Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="tipoNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="tipoNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.grupoSanguineo}">
				<li class="fieldcontain">
					<span id="grupoSanguineo-label" class="property-label"><g:message code="paciente.grupoSanguineo.label" default="Grupo Sanguineo" /></span>
					
						<span class="property-value" aria-labelledby="grupoSanguineo-label"><g:fieldValue bean="${pacienteInstance}" field="grupoSanguineo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.rh}">
				<li class="fieldcontain">
					<span id="rh-label" class="property-label"><g:message code="paciente.rh.label" default="Rh" /></span>
					
						<span class="property-value" aria-labelledby="rh-label"><g:fieldValue bean="${pacienteInstance}" field="rh"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${pacienteInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pesoNacimiento}">
				<li class="fieldcontain">
					<span id="pesoNacimiento-label" class="property-label"><g:message code="paciente.pesoNacimiento.label" default="Peso Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="pesoNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="pesoNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tallaNacimiento}">
				<li class="fieldcontain">
					<span id="tallaNacimiento-label" class="property-label"><g:message code="paciente.tallaNacimiento.label" default="Talla Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="tallaNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="tallaNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pcNacimiento}">
				<li class="fieldcontain">
					<span id="pcNacimiento-label" class="property-label"><g:message code="paciente.pcNacimiento.label" default="Pc Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="pcNacimiento-label"><g:fieldValue bean="${pacienteInstance}" field="pcNacimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edadGestacional}">
				<li class="fieldcontain">
					<span id="edadGestacional-label" class="property-label"><g:message code="paciente.edadGestacional.label" default="Edad Gestacional" /></span>
					
						<span class="property-value" aria-labelledby="edadGestacional-label"><g:fieldValue bean="${pacienteInstance}" field="edadGestacional"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.historiaClinica}">
				<li class="fieldcontain">
					<span id="historiaClinica-label" class="property-label"><g:message code="paciente.historiaClinica.label" default="Historia Clinica" /></span>
					
						<span class="property-value" aria-labelledby="historiaClinica-label"><g:link controller="historiaClinica" action="show" id="${pacienteInstance?.historiaClinica?.id}">${pacienteInstance?.historiaClinica?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="paciente.foto.label" default="Foto" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="paciente.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${pacienteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.padres}">
				<li class="fieldcontain">
					<span id="padres-label" class="property-label"><g:message code="paciente.padres.label" default="Padres" /></span>
					
						<g:each in="${pacienteInstance.padres}" var="p">
						<span class="property-value" aria-labelledby="padres-label"><g:link controller="padre" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.responsable}">
				<li class="fieldcontain">
					<span id="responsable-label" class="property-label"><g:message code="paciente.responsable.label" default="Responsable" /></span>
					
						<span class="property-value" aria-labelledby="responsable-label"><g:link controller="responsable" action="show" id="${pacienteInstance?.responsable?.id}">${pacienteInstance?.responsable?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="paciente.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${pacienteInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.vacunas}">
				<li class="fieldcontain">
					<span id="vacunas-label" class="property-label"><g:message code="paciente.vacunas.label" default="Vacunas" /></span>
					
						<g:each in="${pacienteInstance.vacunas}" var="v">
						<span class="property-value" aria-labelledby="vacunas-label"><g:link controller="vacuna" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pacienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pacienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
