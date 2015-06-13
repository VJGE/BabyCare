<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
	</head>
	<body>
	<g:form action="mainResp">
		<section class="section-content">
		<div class="buttons">
			<ul>
			<li>
			<g:link action="datosResp" id="${session.responsable.id}" class="datos">DATOS PERSONALES</g:link>
			</li>
			<li>
			<g:link action="listaPacientes" id="${session.responsable.id}" class="misPeq">MIS PEQUEÑOS</g:link>
			</li>
			<li>
			<a href="mainResp" class="modDatos">MODIFICAR DATOS</a>
			</li>
			<li>
			<g:link class="edit" action="edit" id="${session.responsable.id}" resource="${responsableInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
			</li>
			</ul>
		</div>
		<div class="tittlecontent">
			<h1 class="text-center">RECOMENDACIONES</h1>
		</div>
			<div class="contentresp1">
				<asset:image src="consejo2.jpg" />
			</div>
			<div class="contentresp2">
				<asset:image src="bebecomiendo.jpg" />
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