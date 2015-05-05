<asset:stylesheet src="bootstrap.min.css"/>
<asset:javascript src="bootstrap.min.js"/>
<div id="imagen">
	<asset:image src="icono.png" alt="Grails"/>
</div>

<div id="menu">	
	<nobr>
		<g:if test="${session.medico}">
			<b>${session.medico?.nombre}&nbsp;${session.medico?.apellido}</b>
			<g:link controller="Medico" action="logout"><g:message /> 
			<button type="button" class="btn btn-lg btn-danger">Cerrar sesión</button>
			</g:link>
		</g:if>
		<g:else>
			<g:if test="${session.responsable}">
				<b>${session.responsable?.nombre}&nbsp;${session.responsable?.apellido}</b>
				<g:link controller="Responsable" action="logout"><g:message /> 
				<button type="button" class="btn btn-lg btn-danger">Cerrar sesión</button>
				</g:link>
			</g:if>
			<g:else>			
				<g:link controller ="Medico" action="login">
					<button type="button" class="btn btn-lg btn-danger">Médico</button>
				</g:link>
				<g:link controller ="Responsable" action="login">
					<button type="button" class="btn btn-lg btn-danger">Responsable</button>
				</g:link>
			</g:else>
		</g:else>
	</nobr>
</div>
