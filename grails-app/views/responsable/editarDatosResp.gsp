<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
	</head>
	<body>
		
		<div id="edit-responsable" class="content scaffold-edit" role="main">
			<h1>MODIFICAR DATOS RESPONSABLE</h1>
			
			<g:hasErrors bean="${responsableInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${responsableInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			
			<g:form url="[resource:responsableInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${responsableInstance?.version}" />
				<fieldset class="form2">
					<g:render template="form2"/>
				</fieldset>
				
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>

		<g:form action="datosResp">
			<g:actionSubmit value="Regresar" action="mainResp" class="btn-navDR" />
		</g:form>
	</body>
</html>