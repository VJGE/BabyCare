<%@ page import="babycare.Afiliado" %>



<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'tipoAfiliado', 'error')} required">
	<label for="tipoAfiliado">
		<g:message code="afiliado.tipoAfiliado.label" default="Tipo Afiliado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoAfiliado" from="${afiliadoInstance.constraints.tipoAfiliado.inList}" required="" value="${afiliadoInstance?.tipoAfiliado}" valueMessagePrefix="afiliado.tipoAfiliado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="afiliado.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" maxlength="20" required="" value="${afiliadoInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="afiliado.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${afiliadoInstance.constraints.estadoCivil.inList}" required="" value="${afiliadoInstance?.estadoCivil}" valueMessagePrefix="afiliado.estadoCivil"/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'nivelSalarial', 'error')} required">
	<label for="nivelSalarial">
		<g:message code="afiliado.nivelSalarial.label" default="Nivel Salarial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nivelSalarial" type="number" min="1" max="3" value="${afiliadoInstance.nivelSalarial}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'tipoPlan', 'error')} required">
	<label for="tipoPlan">
		<g:message code="afiliado.tipoPlan.label" default="Tipo Plan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoPlan" from="${afiliadoInstance.constraints.tipoPlan.inList}" required="" value="${afiliadoInstance?.tipoPlan}" valueMessagePrefix="afiliado.tipoPlan"/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'ipsPrimaria', 'error')} required">
	<label for="ipsPrimaria">
		<g:message code="afiliado.ipsPrimaria.label" default="Ips Primaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ipsPrimaria" required="" value="${afiliadoInstance?.ipsPrimaria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'eps', 'error')} required">
	<label for="eps">
		<g:message code="afiliado.eps.label" default="Eps" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="eps" maxlength="20" required="" value="${afiliadoInstance?.eps}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: afiliadoInstance, field: 'ocupacion', 'error')} required">
	<label for="ocupacion">
		<g:message code="afiliado.ocupacion.label" default="Ocupacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ocupacion" from="${afiliadoInstance.constraints.ocupacion.inList}" required="" value="${afiliadoInstance?.ocupacion}" valueMessagePrefix="afiliado.ocupacion"/>

</div>

