<%@ page import="babycare.Responsable" %>



<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="responsable.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${responsableInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="responsable.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${responsableInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="responsable.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${responsableInstance.constraints.tipoDocumento.inList}" required="" value="${responsableInstance?.tipoDocumento}" valueMessagePrefix="responsable.tipoDocumento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'documento', 'error')} required">
	<label for="documento">
		<g:message code="responsable.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documento" required="" value="${responsableInstance?.documento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="responsable.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${responsableInstance.edad}" required=""/>

</div>

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

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'contrasenia', 'error')} required">
	<label for="contrasenia">
		<g:message code="responsable.contrasenia.label" default="Contrasenia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contrasenia" required="" value="${responsableInstance?.contrasenia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="responsable.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${responsableInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'paciente', 'error')} ">
	<label for="paciente">
		<g:message code="responsable.paciente.label" default="Paciente" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${responsableInstance?.paciente?}" var="p">
    <li><g:link controller="paciente" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="paciente" action="create" params="['responsable.id': responsableInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'paciente.label', default: 'Paciente')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: responsableInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="responsable.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${responsableInstance.telefono}" required=""/>

</div>

