<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
		<asset:javascript src="mainResponsable.js"/>
		<asset:stylesheet src="mainPaciente.css"/>
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
				<div id="btn_1" class="one" onClick="showRecom(this.id,'squareRecom')">Alimentos</div>
				</li>
				<li>
				<div id="btn_2" class="two" onClick="showRecom(this.id,'squareRecom')">Entretenimiento</div>
				</li>
				</ul>
			</li>
			</ul>
		</div>
		<div class="tittlecontent">
			<h1 class="text-center">RECOMENDACIONES</h1>
		</div>			
		<div id="squareRecom" class="divRecom">
			<div class="container_12">
          <div class="grid_12">
                <div class="pad-3">
                     <div class="block-8 wrap">
                     	<div>
                        	<asset:image src="/FONDOS/page4-img1.jpg" alt="" class="img-border" />
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div>
                        	<asset:image src="/FONDOS/page4-img2.jpg" alt="" class="img-border" />
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                     </div>
                     <div class="block-8 wrap top-3">
                     	<div>
                        	<asset:image src="/FONDOS/page4-img4.jpg" alt="" class="img-border" />
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                        <div>
                        	<asset:image src="/FONDOS/page4-img5.jpg" alt="" class="img-border" />
                        	<p class="top-1"><a href="#" class="link"><strong>Lorem ipsum dolor sit amet</strong></a></p>
                    		<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna erat... <a href="#" class="link">Read More</a></p>
                        </div>
                     </div>
                </div>
		</div>
		
		
          </div>
		</div>
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