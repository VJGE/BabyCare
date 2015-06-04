<%@ page import="babycare.Consulta" %>



<div class="fieldcontain ${hasErrors(bean: consultaInstance, field: 'documentoPaciente', 'error')} required">
	<label for="documentoPaciente">
		<g:message code="consulta.documentoPaciente.label" default="Documento Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documentoPaciente" required="" value="${consultaInstance?.documentoPaciente}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: consultaInstance, field: 'documentoMedico', 'error')} required">
	<label for="documentoMedico">
		<g:message code="consulta.documentoMedico.label" default="Documento Medico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documentoMedico" required="" value="${consultaInstance?.documentoMedico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: consultaInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="consulta.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${consultaInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: consultaInstance, field: 'finalizada', 'error')} ">
	<label for="finalizada">
		<g:message code="consulta.finalizada.label" default="Finalizada" />
		
	</label>
	<g:checkBox name="finalizada" value="${consultaInstance?.finalizada}" />

</div>

<div class="fieldcontain ${hasErrors(bean: consultaInstance, field: 'asistencia', 'error')} ">
	<label for="asistencia">
		<g:message code="consulta.asistencia.label" default="Asistencia" />
		
	</label>
	<g:checkBox name="asistencia" value="${consultaInstance?.asistencia}" />

</div>

