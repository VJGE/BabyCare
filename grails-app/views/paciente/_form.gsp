<%@ page import="babycare.Paciente" %>



<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="paciente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${pacienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="paciente.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${pacienteInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="paciente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${pacienteInstance.constraints.sexo.inList}" required="" value="${pacienteInstance?.sexo}" valueMessagePrefix="paciente.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="paciente.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${pacienteInstance.constraints.tipoDocumento.inList}" required="" value="${pacienteInstance?.tipoDocumento}" valueMessagePrefix="paciente.tipoDocumento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'documento', 'error')} required">
	<label for="documento">
		<g:message code="paciente.documento.label" default="Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="documento" pattern="${pacienteInstance.constraints.documento.matches}" required="" value="${pacienteInstance?.documento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="paciente.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${pacienteInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edadMeses', 'error')} required">
	<label for="edadMeses">
		<g:message code="paciente.edadMeses.label" default="Edad Meses" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edadMeses" type="number" min="1" max="11" value="${pacienteInstance.edadMeses}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tipoAfiliado', 'error')} required">
	<label for="tipoAfiliado">
		<g:message code="paciente.tipoAfiliado.label" default="Tipo Afiliado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoAfiliado" from="${pacienteInstance.constraints.tipoAfiliado.inList}" required="" value="${pacienteInstance?.tipoAfiliado}" valueMessagePrefix="paciente.tipoAfiliado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="paciente.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" maxlength="20" required="" value="${pacienteInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="paciente.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${pacienteInstance.constraints.estadoCivil.inList}" required="" value="${pacienteInstance?.estadoCivil}" valueMessagePrefix="paciente.estadoCivil"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nivelSalarial', 'error')} required">
	<label for="nivelSalarial">
		<g:message code="paciente.nivelSalarial.label" default="Nivel Salarial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nivelSalarial" type="number" min="1" max="3" value="${pacienteInstance.nivelSalarial}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tipoPlan', 'error')} required">
	<label for="tipoPlan">
		<g:message code="paciente.tipoPlan.label" default="Tipo Plan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoPlan" from="${pacienteInstance.constraints.tipoPlan.inList}" required="" value="${pacienteInstance?.tipoPlan}" valueMessagePrefix="paciente.tipoPlan"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ipsPrimaria', 'error')} required">
	<label for="ipsPrimaria">
		<g:message code="paciente.ipsPrimaria.label" default="Ips Primaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ipsPrimaria" required="" value="${pacienteInstance?.ipsPrimaria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'eps', 'error')} required">
	<label for="eps">
		<g:message code="paciente.eps.label" default="Eps" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="eps" maxlength="20" required="" value="${pacienteInstance?.eps}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ocupacion', 'error')} required">
	<label for="ocupacion">
		<g:message code="paciente.ocupacion.label" default="Ocupacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ocupacion" from="${pacienteInstance.constraints.ocupacion.inList}" required="" value="${pacienteInstance?.ocupacion}" valueMessagePrefix="paciente.ocupacion"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="paciente.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: pacienteInstance, field: 'peso')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'talla', 'error')} required">
	<label for="talla">
		<g:message code="paciente.talla.label" default="Talla" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="talla" value="${fieldValue(bean: pacienteInstance, field: 'talla')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pc', 'error')} required">
	<label for="pc">
		<g:message code="paciente.pc.label" default="Pc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pc" value="${fieldValue(bean: pacienteInstance, field: 'pc')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tipoNacimiento', 'error')} required">
	<label for="tipoNacimiento">
		<g:message code="paciente.tipoNacimiento.label" default="Tipo Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoNacimiento" from="${pacienteInstance.constraints.tipoNacimiento.inList}" required="" value="${pacienteInstance?.tipoNacimiento}" valueMessagePrefix="paciente.tipoNacimiento"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'grupoSanguineo', 'error')} required">
	<label for="grupoSanguineo">
		<g:message code="paciente.grupoSanguineo.label" default="Grupo Sanguineo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="grupoSanguineo" from="${pacienteInstance.constraints.grupoSanguineo.inList}" required="" value="${pacienteInstance?.grupoSanguineo}" valueMessagePrefix="paciente.grupoSanguineo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'rh', 'error')} required">
	<label for="rh">
		<g:message code="paciente.rh.label" default="Rh" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="rh" from="${pacienteInstance.constraints.rh.inList}" required="" value="${pacienteInstance?.rh}" valueMessagePrefix="paciente.rh"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${pacienteInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pesoNacimiento', 'error')} required">
	<label for="pesoNacimiento">
		<g:message code="paciente.pesoNacimiento.label" default="Peso Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pesoNacimiento" value="${fieldValue(bean: pacienteInstance, field: 'pesoNacimiento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tallaNacimiento', 'error')} required">
	<label for="tallaNacimiento">
		<g:message code="paciente.tallaNacimiento.label" default="Talla Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tallaNacimiento" value="${fieldValue(bean: pacienteInstance, field: 'tallaNacimiento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pcNacimiento', 'error')} required">
	<label for="pcNacimiento">
		<g:message code="paciente.pcNacimiento.label" default="Pc Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pcNacimiento" value="${fieldValue(bean: pacienteInstance, field: 'pcNacimiento')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edadGestacional', 'error')} required">
	<label for="edadGestacional">
		<g:message code="paciente.edadGestacional.label" default="Edad Gestacional" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edadGestacional" type="number" max="45" value="${pacienteInstance.edadGestacional}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'historiaClinica', 'error')} ">
	<label for="historiaClinica">
		<g:message code="paciente.historiaClinica.label" default="Historia Clinica" />
		
	</label>
	<g:select id="historiaClinica" name="historiaClinica.id" from="${babycare.HistoriaClinica.list()}" optionKey="id" value="${pacienteInstance?.historiaClinica?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="paciente.foto.label" default="Foto" />
		
	</label>
	<input type="file" id="foto" name="foto" />

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="paciente.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${pacienteInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'padres', 'error')} ">
	<label for="padres">
		<g:message code="paciente.padres.label" default="Padres" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pacienteInstance?.padres?}" var="p">
    <li><g:link controller="padre" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="padre" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'padre.label', default: 'Padre')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'responsable', 'error')} required">
	<label for="responsable">
		<g:message code="paciente.responsable.label" default="Responsable" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="responsable" name="responsable.id" from="${babycare.Responsable.list()}" optionKey="id" required="" value="${pacienteInstance?.responsable?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="paciente.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${pacienteInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'vacunas', 'error')} ">
	<label for="vacunas">
		<g:message code="paciente.vacunas.label" default="Vacunas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pacienteInstance?.vacunas?}" var="v">
    <li><g:link controller="vacuna" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="vacuna" action="create" params="['paciente.id': pacienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'vacuna.label', default: 'Vacuna')])}</g:link>
</li>
</ul>


</div>

