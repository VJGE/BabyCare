<%@ page import="babycare.Padre" %>



<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="padre.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${padreInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="padre.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${padreInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="padre.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${padreInstance.constraints.tipoDocumento.inList}" required="" value="${padreInstance?.tipoDocumento}" valueMessagePrefix="padre.tipoDocumento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'documento', 'error')} required">
	<label for="documento">
		<g:message code="padre.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documento" required="" value="${padreInstance?.documento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="padre.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${padreInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'pesoPadre', 'error')} required">
	<label for="pesoPadre">
		<g:message code="padre.pesoPadre.label" default="Peso Padre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pesoPadre" value="${fieldValue(bean: padreInstance, field: 'pesoPadre')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'tallaPadre', 'error')} required">
	<label for="tallaPadre">
		<g:message code="padre.tallaPadre.label" default="Talla Padre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tallaPadre" value="${fieldValue(bean: padreInstance, field: 'tallaPadre')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'enfermedadesActuales', 'error')} required">
	<label for="enfermedadesActuales">
		<g:message code="padre.enfermedadesActuales.label" default="Enfermedades Actuales" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enfermedadesActuales" pattern="${padreInstance.constraints.enfermedadesActuales.matches}" required="" value="${padreInstance?.enfermedadesActuales}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'tratamientos', 'error')} required">
	<label for="tratamientos">
		<g:message code="padre.tratamientos.label" default="Tratamientos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tratamientos" pattern="${padreInstance.constraints.tratamientos.matches}" required="" value="${padreInstance?.tratamientos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="padre.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${padreInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'hijo', 'error')} required">
	<label for="hijo">
		<g:message code="padre.hijo.label" default="Hijo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hijo" name="hijo.id" from="${babycare.Paciente.list()}" optionKey="id" required="" value="${padreInstance?.hijo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: padreInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="padre.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${padreInstance.telefono}" required=""/>

</div>

