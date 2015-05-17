<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="main.css"/>
		<style type="text/css">
		.section-content {
				width: 1100px;
				margin-top: 10%;
			}
			.section-content2 {
				width: 1100px;
				margin-left: 23.5%;
			}
			.navresp1 {
				width: 294px;
				background-color: #5CA8D3;
				float: left;
				border:3px outset gray;
			}
			.contentresp1 {
				margin: 0px 0px 0px 20px;
				width: 778px;
				background-color: #CED8F6;
				float: left;
				border: 1px outset gray;
			}

			.down-boton {
				margin: 20px;
				height: 100px;
				width: 1000px;
				border: 2px;
				padding-right: 100px;
			}

			section {
				text-align: center;
				margin: 20px auto;
			}
			.text-center {
				text-align: center;
			}
			.clear {
				clear: both;
			}
			.btn-nav {
				width: 250px;
				height: 60px;
				margin-top: 5px;
				display: block;
				padding: 10px;
				border-radius:5px;
				border: 3px outset gray;
				background-color: #A9D0F5;
				color: black;
				font-weight: 400;
				text-decoration: none;
				margin-left:20px;
			}
			.btn-nav:hover {
				border: 3px inset gray;
				background-color: #819FF7;
				color: white;
			}
			.navresp1 ul {
				text-decoration: none;
				list-style: none;
			}
			.btn-nav2 {
				width: 160px;
				height: 40px;
				margin-top: 3px;
				display: block;
				padding: 8px;
				border-radius:5px;
				border: 3px outset gray;
				background-color: #A9D0F5;
				color: black;
				font-weight: 400;
				text-decoration: none;
				float: right;
			}
			.btn-nav2:hover {
				border: 3px inset gray;
				background-color: #819FF7;
				color: white;
			}
		</style>
		
	</head>
	<body>
	<g:form action="mainResp">
		<section class="section-content">
			<div class="navresp1">
				<ul>
					<li><g:actionSubmit value="DATOS PERSONALES" action="datosResp" class="btn-nav" /></li>
					<li><g:actionSubmit value="MIS PEQUEÑOS" action="handleLogin" class="btn-nav" /></li>
					<li><g:actionSubmit value="MODIFICAR DATOS PERSONALES" action="handleLogin" class="btn-nav" /></li>	
				</ul>
			</div>
			<div class="contentresp1">
				<h1 class="text-center">RECOMENDACIONES</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
			</div>
		</section>	
		<section class="section-content2">
			<div class="down-boton">
				<a class="btn-nav2" href="#">CHAT</a>
				<a class="btn-nav2" href="#">NOTIFICACIONES</a>
			</div>
		</section>
	</g:form>
	<div class="clear"></div>
</body>
</html>