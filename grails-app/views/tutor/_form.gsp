<%@ page import="babycare.Tutor" %>



<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'registroEPS', 'error')} required">
	<label for="registroEPS">
		<g:message code="tutor.registroEPS.label" default="Registro EPS" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="registroEPS" type="number" value="${tutorInstance.registroEPS}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'hijos', 'error')} required">
	<label for="hijos">
		<g:message code="tutor.hijos.label" default="Hijos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hijos" name="hijos.id" from="${babycare.Paciente.list()}" optionKey="id" required="" value="${tutorInstance?.hijos?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'paciente', 'error')} ">
	<label for="paciente">
		<g:message code="tutor.paciente.label" default="Paciente" />
		
	</label>
	<g:select name="paciente" from="${babycare.Paciente.list()}" multiple="multiple" optionKey="id" size="5" value="${tutorInstance?.paciente*.id}" class="many-to-many"/>

</div>

