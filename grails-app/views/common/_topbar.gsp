<asset:stylesheet src="bootstrap.min.css"/>
<asset:javascript src="bootstrap.min.js"/>
<div id="imagen">
	<asset:image src="icono.png" alt="Grails"/>
</div>

<div id="menu">	
	<nobr>
		<g:if test="${session.medico}">
			<b>${session.medico?.nombre}&nbsp;${session.Medico?.apellido}</b>
			<g:link controller="Medico" action="logout"><g:message code="topbar.Logout" /> 
			</g:link>
		</g:if>
		<g:else>
			<g:link controller ="Medico" action="login">
			<button type="button" class="btn btn-lg btn-danger">Iniciar sesión</button>
			</g:link>
		</g:else>
	</nobr>
</div>
