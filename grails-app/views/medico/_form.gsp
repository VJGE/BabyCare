<%@ page import="babycare.Medico" %>



<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="medico.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${medicoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="medico.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${medicoInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="medico.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${medicoInstance.constraints.tipoDocumento.inList}" required="" value="${medicoInstance?.tipoDocumento}" valueMessagePrefix="medico.tipoDocumento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'documento', 'error')} required">
	<label for="documento">
		<g:message code="medico.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documento" required="" value="${medicoInstance?.documento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="medico.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${medicoInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="medico.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="especialidad" required="" value="${medicoInstance?.especialidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'registroMedico', 'error')} required">
	<label for="registroMedico">
		<g:message code="medico.registroMedico.label" default="Registro Medico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="registroMedico" pattern="${medicoInstance.constraints.registroMedico.matches}" required="" value="${medicoInstance?.registroMedico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="medico.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${medicoInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'contrase�a', 'error')} required">
	<label for="contrase�a">
		<g:message code="medico.contrase�a.label" default="Contrasea" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contrase�a" required="" value="${medicoInstance?.contrase�a}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="medico.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${medicoInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: medicoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="medico.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${medicoInstance.telefono}" required=""/>

</div>

