<%@ page import="babycare.RegistroConsulta" %>



<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="registroConsulta.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${registroConsultaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'tipoConsulta', 'error')} required">
	<label for="tipoConsulta">
		<g:message code="registroConsulta.tipoConsulta.label" default="Tipo Consulta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoConsulta" maxlength="70" required="" value="${registroConsultaInstance?.tipoConsulta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'conceptoMedico', 'error')} required">
	<label for="conceptoMedico">
		<g:message code="registroConsulta.conceptoMedico.label" default="Concepto Medico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="conceptoMedico" required="" value="${registroConsultaInstance?.conceptoMedico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'historiaMedica', 'error')} required">
	<label for="historiaMedica">
		<g:message code="registroConsulta.historiaMedica.label" default="Historia Medica" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="historiaMedica" name="historiaMedica.id" from="${babycare.HistoriaClinica.list()}" optionKey="id" required="" value="${registroConsultaInstance?.historiaMedica?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="registroConsulta.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" required="" value="${registroConsultaInstance?.observaciones}"/>

</div>

