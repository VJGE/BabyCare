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

