<%@ page import="babycare.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${personaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="persona.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${personaInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="persona.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${personaInstance.constraints.tipoDocumento.inList}" required="" value="${personaInstance?.tipoDocumento}" valueMessagePrefix="persona.tipoDocumento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'documento', 'error')} required">
	<label for="documento">
		<g:message code="persona.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documento" required="" value="${personaInstance?.documento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="persona.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${personaInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="persona.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${personaInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="persona.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${personaInstance.telefono}" required=""/>

</div>

