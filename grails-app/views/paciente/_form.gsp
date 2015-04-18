<%@ page import="babycare.Paciente" %>



<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="paciente.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: pacienteInstance, field: 'peso')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'talla', 'error')} required">
	<label for="talla">
		<g:message code="paciente.talla.label" default="Talla" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="talla" value="${fieldValue(bean: pacienteInstance, field: 'talla')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pc', 'error')} required">
	<label for="pc">
		<g:message code="paciente.pc.label" default="Pc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pc" value="${fieldValue(bean: pacienteInstance, field: 'pc')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tipoNacimiento', 'error')} required">
	<label for="tipoNacimiento">
		<g:message code="paciente.tipoNacimiento.label" default="Tipo Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoNacimiento" from="${pacienteInstance.constraints.tipoNacimiento.inList}" required="" value="${pacienteInstance?.tipoNacimiento}" valueMessagePrefix="paciente.tipoNacimiento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'grupoSanguineo', 'error')} required">
	<label for="grupoSanguineo">
		<g:message code="paciente.grupoSanguineo.label" default="Grupo Sanguineo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="grupoSanguineo" from="${pacienteInstance.constraints.grupoSanguineo.inList}" required="" value="${pacienteInstance?.grupoSanguineo}" valueMessagePrefix="paciente.grupoSanguineo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'rh', 'error')} required">
	<label for="rh">
		<g:message code="paciente.rh.label" default="Rh" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="rh" from="${pacienteInstance.constraints.rh.inList}" required="" value="${fieldValue(bean: pacienteInstance, field: 'rh')}" valueMessagePrefix="paciente.rh"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${pacienteInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pesoNacimiento', 'error')} required">
	<label for="pesoNacimiento">
		<g:message code="paciente.pesoNacimiento.label" default="Peso Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pesoNacimiento" value="${fieldValue(bean: pacienteInstance, field: 'pesoNacimiento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tallaNacimiento', 'error')} required">
	<label for="tallaNacimiento">
		<g:message code="paciente.tallaNacimiento.label" default="Talla Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tallaNacimiento" value="${fieldValue(bean: pacienteInstance, field: 'tallaNacimiento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pcNacimiento', 'error')} required">
	<label for="pcNacimiento">
		<g:message code="paciente.pcNacimiento.label" default="Pc Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pcNacimiento" value="${fieldValue(bean: pacienteInstance, field: 'pcNacimiento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edadGestacional', 'error')} required">
	<label for="edadGestacional">
		<g:message code="paciente.edadGestacional.label" default="Edad Gestacional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edadGestacional" type="number" max="45" value="${pacienteInstance.edadGestacional}" required=""/>

</div>

