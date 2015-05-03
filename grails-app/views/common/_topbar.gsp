<div id="imagen">
	<asset:image src="icono.png" alt="Grails"/>
</div>

<div id="menu">	
	<nobr>
		<g:if test="${session.medico}">
			<b>${session.medico?.nombre}&nbsp;${session.Medico?.apellido}</b>
			<g:link controller="Medico" action="logout"><g:message code="topbar.Logout" /></g:link>
		</g:if>
		<g:else>
			<g:link controller ="Medico" action="login"><g:message code="topbar.Login" /></g:link>
		</g:else>
	</nobr>
</div>
