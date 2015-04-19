<%@ page import="babycare.Vacuna" %>



<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'nombreVacuna', 'error')} required">
	<label for="nombreVacuna">
		<g:message code="vacuna.nombreVacuna.label" default="Nombre Vacuna" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreVacuna" maxlength="20" required="" value="${vacunaInstance?.nombreVacuna}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'edadAplicacion', 'error')} required">
	<label for="edadAplicacion">
		<g:message code="vacuna.edadAplicacion.label" default="Edad Aplicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edadAplicacion" type="number" min="0" max="6" value="${vacunaInstance.edadAplicacion}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'fechaAplicacion', 'error')} required">
	<label for="fechaAplicacion">
		<g:message code="vacuna.fechaAplicacion.label" default="Fecha Aplicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAplicacion" precision="day"  value="${vacunaInstance?.fechaAplicacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'laboratorio', 'error')} required">
	<label for="laboratorio">
		<g:message code="vacuna.laboratorio.label" default="Laboratorio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="laboratorio" required="" value="${vacunaInstance?.laboratorio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'numeroLote', 'error')} required">
	<label for="numeroLote">
		<g:message code="vacuna.numeroLote.label" default="Numero Lote" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroLote" required="" value="${vacunaInstance?.numeroLote}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'centro', 'error')} required">
	<label for="centro">
		<g:message code="vacuna.centro.label" default="Centro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="centro" required="" value="${vacunaInstance?.centro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="vacuna.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" required="" value="${vacunaInstance?.observaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vacunaInstance, field: 'proximaCita', 'error')} required">
	<label for="proximaCita">
		<g:message code="vacuna.proximaCita.label" default="Proxima Cita" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="proximaCita" precision="day"  value="${vacunaInstance?.proximaCita}"  />

</div>

