<%@ page import="babycare.Responsable" %>



<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'tipoAfiliado', 'error')} required">
	<label for="tipoAfiliado">
		<g:message code="responsable.tipoAfiliado.label" default="Tipo Afiliado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoAfiliado" from="${responsableInstance.constraints.tipoAfiliado.inList}" required="" value="${responsableInstance?.tipoAfiliado}" valueMessagePrefix="responsable.tipoAfiliado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="responsable.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" maxlength="20" required="" value="${responsableInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="responsable.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${responsableInstance.constraints.estadoCivil.inList}" required="" value="${responsableInstance?.estadoCivil}" valueMessagePrefix="responsable.estadoCivil"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'nivelSalarial', 'error')} required">
	<label for="nivelSalarial">
		<g:message code="responsable.nivelSalarial.label" default="Nivel Salarial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nivelSalarial" type="number" min="1" max="3" value="${responsableInstance.nivelSalarial}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'tipoPlan', 'error')} required">
	<label for="tipoPlan">
		<g:message code="responsable.tipoPlan.label" default="Tipo Plan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoPlan" from="${responsableInstance.constraints.tipoPlan.inList}" required="" value="${responsableInstance?.tipoPlan}" valueMessagePrefix="responsable.tipoPlan"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'ipsPrimaria', 'error')} required">
	<label for="ipsPrimaria">
		<g:message code="responsable.ipsPrimaria.label" default="Ips Primaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ipsPrimaria" required="" value="${responsableInstance?.ipsPrimaria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'eps', 'error')} required">
	<label for="eps">
		<g:message code="responsable.eps.label" default="Eps" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="eps" maxlength="20" required="" value="${responsableInstance?.eps}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'ocupacion', 'error')} required">
	<label for="ocupacion">
		<g:message code="responsable.ocupacion.label" default="Ocupacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ocupacion" from="${responsableInstance.constraints.ocupacion.inList}" required="" value="${responsableInstance?.ocupacion}" valueMessagePrefix="responsable.ocupacion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'parentesco', 'error')} required">
	<label for="parentesco">
		<g:message code="responsable.parentesco.label" default="Parentesco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="parentesco" from="${responsableInstance.constraints.parentesco.inList}" required="" value="${responsableInstance?.parentesco}" valueMessagePrefix="responsable.parentesco"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'contrase�a', 'error')} required">
	<label for="contrase�a">
		<g:message code="responsable.contrase�a.label" default="Contrasea" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contrase�a" required="" value="${responsableInstance?.contrase�a}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'paciente', 'error')} ">
	<label for="paciente">
		<g:message code="responsable.paciente.label" default="Paciente" />
		
	</label>
	<g:select name="paciente" from="${babycare.Paciente.list()}" multiple="multiple" optionKey="id" size="5" value="${responsableInstance?.paciente*.id}" class="many-to-many"/>

</div>

