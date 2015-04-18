<%@ page import="babycare.RegistroConsulta" %>



<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="registroConsulta.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fecha" required="" value="${registroConsultaInstance?.fecha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroConsultaInstance, field: 'motivoConsulta', 'error')} required">
	<label for="motivoConsulta">
		<g:message code="registroConsulta.motivoConsulta.label" default="Motivo Consulta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motivoConsulta" required="" value="${registroConsultaInstance?.motivoConsulta}"/>

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
	<g:select id="historiaMedica" name="historiaMedica.id" from="${babycare.HistoriaMedica.list()}" optionKey="id" required="" value="${registroConsultaInstance?.historiaMedica?.id}" class="many-to-one"/>

</div>

