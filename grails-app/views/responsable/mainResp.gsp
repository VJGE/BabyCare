<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
		<asset:javascript src="mainResponsable.js"/>
		<asset:stylesheet src="style.css"/>
		<asset:stylesheet src="grid_12.css"/>
	</head>
	<body>
	<g:form action="mainResp">
		<section class="section-content">
		<div class="buttons">
			<ul class="ms">
				<li>
					<g:link action="datosResp" id="${session.responsable.id}" class="datos">DATOS PERSONALES</g:link>
				</li>
				<li>
					<g:link action="listaPacientes" id="${session.responsable.id}" class="misPeq">MIS PEQUEÑOS</g:link>
				</li>
				<li>
					<g:link class="modDatos" action="editarDatosResp" id="${session.responsable.id}" resource="${responsableInstance}">MODIFICAR DATOS</g:link>
				</li>
				<li>
				<div class="recomendaciones">RECOMENDACIONES</div>
					<ul>
						<li>
							<div id="btn_1" class="one" onClick="showRecom(this.id,'recomCognitivo')">Cognitivo</div>
						</li>
						<li>
							<div id="btn_2" class="two" onClick="showRecom(this.id,'recomSocial')">Social</div>
						</li>
						<li>
							<div id="btn_3" class="three" onClick="showRecom(this.id,'recomMotriz')">Motriz</div>
						</li>
						<li>
							<div id="btn_4" class="four" onClick="showRecom(this.id,'recomCom')">Comunicativo</div>
						</li>
					</ul>
			</li>
			</ul>
		</div>
		<div class="tittlecontent">
			<h1 class="text-center">RECOMENDACIONES</h1>
		</div>			
		<div id="squareText" class="divTextRecom">
			<p>HOLAAAAAAAAAAAAAAAAAAAa</p>
		</div>
		<div id="recomCognitivo" class="hideRecom">
			<asset:image src='cognitivo.jpg' alt='cargando' style='height:100%; width:auto;' />
		</div>
		<div id="recomSocial" class="hideRecom">
			<asset:image src='social.jpg' alt='cargando' style='height:100%; width:auto;' />
		</div>
		<div id="recomMotriz" class="hideRecom">
			<asset:image src='motricidad.jpg' alt='cargando' style='height:100%; width:auto;' />
		</div>
		<div id="recomCom" class="hideRecom">
			<asset:image src='comunicativo.jpg' alt='cargando' style='height:100%; width:auto;' />
		</div>
		
		
		<div id="squareRecom" class="divRecom">
			<div class="container_12">
          		<div class="grid_12">
                	<div class="pad-3">
                     	<div class="block-8 wrap">
                     		<div>
                        		<asset:image src="cognitivo.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_1_2" onClick="showRecom(this.id,'recomCognitivo')"><strong>Cognitivo</strong></div></p>
                    			<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat</p>
                       		</div>
                        	<div>
                        		<asset:image src="social.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_2_2" onClick="showRecom(this.id,'recomSocial')"><strong>Social</strong></div></p>
                    			<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat</p>
                        	</div>
                     	</div>
                     	<div class="block-8 wrap top-3">
                     		<div>
                        		<asset:image src="motricidad.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_3_2" onClick="showRecom(this.id,'recomMotriz')"><strong>Motriz</strong></div></p>
                    			<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat</p>
                        	</div>
                        	<div>
                        		<asset:image src="comunicativo.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_4_2" onClick="showRecom(this.id,'recomCom')"><strong>Comunicativo</strong></div></p>
                    			<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat</p>
                        	</div>
                     	</div>
                	</div>
				</div>
          	</div>
		</div>
		</section>	
		
		</section>	
		<section class="section-content2">
			<div class="botones2">
			<a href="mainResp" class="chat"> CHAT</a>
			<a href="mainResp" class="notificaciones"> NOTIFICACIONES </a>
		</div>
		</section>
	</g:form>
	<div class="clear"></div>
</body>
</html>