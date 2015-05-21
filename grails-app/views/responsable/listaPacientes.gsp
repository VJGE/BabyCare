<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
	</head>
	<body>
		<section class="section-Personal">
		<label class="indic">Nombre: </label>


<div id="show-responsable" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list responsable">
				<g:if test="${responsableInstance?.eps}">
				<li class="fieldcontain">
					<span id="eps-label" class="property-label"><g:message code="responsable.eps.label" default="Eps" /></span>
					
						<span class="property-value" aria-labelledby="eps-label"><g:fieldValue bean="${responsableInstance}" field="eps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${responsableInstance?.contrasenia}">
				<li class="fieldcontain">
					<span id="contrasenia-label" class="property-label"><g:message code="responsable.contrasenia.label" default="Contrasenia" /></span>
					
						<span class="property-value" aria-labelledby="contrasenia-label"><g:fieldValue bean="${responsableInstance}" field="contrasenia"/></span>
					
				</li>
				</g:if>
			
				
			
			</ol>
			<g:form url="[resource:responsableInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${responsableInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		

		</section>
		<g:form action="datosResp">
			<g:actionSubmit value="Regresar" action="mainResp" class="btn-navDR" />
		</g:form>
	</body>
</html>