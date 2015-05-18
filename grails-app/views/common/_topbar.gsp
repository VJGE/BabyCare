<asset:stylesheet src="bootstrap.min.css"/>
<asset:javascript src="bootstrap.min.js"/>
<div id="imagen">
	<asset:image src="icono.png" alt="Grails"/>
</div>

<div id="menu">	
		<div class="botones">
			<ul>
				<li>
					<a href="/BabyCare" class="inicio"> Inicio</a>
				</li>
				<g:if test="${session.medico}">
					<li>
						<a href="/BabyCare/medico/mainMedico" class="nombre"><b>${session.medico?.nombre}&nbsp;${session.medico?.apellido}</b></a>
					</li>
					<li>
						<g:link controller="Medico" action="logout" class="cerrar">Cerrar
						</g:link>
					</li>
				</g:if>
				<g:else>
					<g:if test="${session.responsable}">
						<li>
							<a href="/BabyCare/responsable/mainResp" class="nombre"><b>${session.responsable?.nombre}&nbsp;${session.responsable?.apellido}</b></a>
						</li>
						<li>
						<g:link controller="Responsable" action="logout" class="cerrar">Cerrar
						</g:link>
						</li>
					</g:if>
					<g:else>
						<li>
							<g:link controller ="Medico" action="login" class="medico">Medico
							</g:link>
						</li>
						<li>
							<a href="/BabyCare/Responsable/login" class="responsable">Responsable</a>
						</li>
						
						<%-- 
						<a class="medico"> Medico</a>
						<g:link controller ="Medico" action="login">
							<button type="button" class="btn btn-lg btn-danger">Médico</button>
						</g:link>
						<g:link controller ="Responsable" action="login">
							<button type="button" class="btn btn-lg btn-danger">Responsable</button>
						</g:link>--%>
					</g:else>
				</g:else>
			</ul>
		</div>
</div>
