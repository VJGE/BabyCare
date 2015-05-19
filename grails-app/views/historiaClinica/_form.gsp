<%@ page import="babycare.HistoriaClinica" %>



<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'codigoPlanilla', 'error')} required">
	<label for="codigoPlanilla">
		<g:message code="historiaClinica.codigoPlanilla.label" default="Codigo Planilla" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPlanilla" pattern="${historiaClinicaInstance.constraints.codigoPlanilla.matches}" required="" value="${historiaClinicaInstance?.codigoPlanilla}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'fechaHistoria', 'error')} required">
	<label for="fechaHistoria">
		<g:message code="historiaClinica.fechaHistoria.label" default="Fecha Historia" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaHistoria" precision="day"  value="${historiaClinicaInstance?.fechaHistoria}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'lugarHistoria', 'error')} required">
	<label for="lugarHistoria">
		<g:message code="historiaClinica.lugarHistoria.label" default="Lugar Historia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lugarHistoria" required="" value="${historiaClinicaInstance?.lugarHistoria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'numeroHistoria', 'error')} required">
	<label for="numeroHistoria">
		<g:message code="historiaClinica.numeroHistoria.label" default="Numero Historia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroHistoria" type="number" value="${historiaClinicaInstance.numeroHistoria}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="historiaClinica.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${babycare.Paciente.list()}" optionKey="id" required="" value="${historiaClinicaInstance?.paciente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'registrosConsultas', 'error')} ">
	<label for="registrosConsultas">
		<g:message code="historiaClinica.registrosConsultas.label" default="Registros Consultas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${historiaClinicaInstance?.registrosConsultas?}" var="r">
    <li><g:link controller="registroConsulta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registroConsulta" action="create" params="['historiaClinica.id': historiaClinicaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registroConsulta.label', default: 'RegistroConsulta')])}</g:link>
</li>
</ul>


</div>

