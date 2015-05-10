<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<style type="text/css">
			.btn-nav {
				width: 100px;
				height: 50px;
				margin-top: 5%;
				display: block;
				padding: 10px;
				border-radius:5px;
				border: 3px outset gray;
				background-color: #A9D0F5;
				color: black;
				font-weight: 400;
				text-decoration: none;
				margin-left:40%;
			}
			.btn-nav:hover {
				border: 3px inset gray;
				background-color: #819FF7;
				color: white;
			}
			.section-Personal{
				margin-top: 10%;
				margin-left: 5%;
			}
			.indic{
				float:left;
				margin-left: 5%;
				width: 100px;
			}
			.rec{
				width:250px;
				height:25px;
				border:1px solid black;
				float:left;
				padding-left:5px;
				padding-top:2px;
			}
			.tittle{
				margin-top: 1%;
				margin-left: 35%;
			}
			.section-Personal2{
				margin-top: 2%;
				margin-left: 5%;
			}
		</style>
	</head>
	<body>
		<section class="section-Personal">
		<label class="tittle">PERSONA RESPONSABLE</label>
		<br>
		<br>
		<br>
		<label class="indic">Nombre: </label>
		<label class="rec">${session.responsable?.nombre}</label>
		<label class="indic">Apellidos: </label>
		<label class="rec">${session.responsable?.apellido}</label>
		<br>
		<br>
		<br>
		<label class="indic">${session.responsable?.tipoDocumento}:</label>
		<label class="rec">${session.responsable?.documento}</label>
		<label class="indic">Edad:</label>
		<label class="rec">${session.responsable?.edad}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		</section>
		<section class="section-Personal2">
		<label class="tittle">INFORMACION DE CONTACTO</label>
		<br>
		<br>
		<br>
		<label class="indic">Dirección: </label>
		<label class="rec">${session.responsable?.direccion} ${session.responsable?.ciudad}</label>
		<label class="indic">Telefono: </label>
		<label class="rec">${session.responsable?.telefono}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		<label class="tittle">INFORMACION FAMILIAR Y OCUPACIONAL</label>
		<br>
		<br>
		<br>
		<label class="indic">Estado Civil: </label>
		<label class="rec">${session.responsable?.estadoCivil}</label>
		<label class="indic">Parentesco responsabilidad: </label>
		<label class="rec">${session.responsable?.parentesco}</label>
		<br>
		<br>
		<br>
		<label class="indic">Ocupación: </label>
		<label class="rec">${session.responsable?.ocupacion}</label>
		<label class="indic">Nivel Salarial: </label>
		<label class="rec">${session.responsable?.nivelSalarial}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		<label class="tittle">INFORMACION DE EPS</label>
		<br>
		<br>
		<br>
		<label class="indic">EPS: </label>
		<label class="rec">${session.responsable?.eps}</label>
		<label class="indic">Tipo Afiliación: </label>
		<label class="rec">${session.responsable?.tipoAfiliado}</label>
		<br>
		<br>
		<br>
		<label class="indic">Tipo Plan EPS: </label>
		<label class="rec">${session.responsable?.tipoPlan}</label>
		<label class="indic">IPS primaria: </label>
		<label class="rec">${session.responsable?.ipsPrimaria}</label>
		<br>
		</section>
		<g:form action="datosResp">
			<g:actionSubmit value="Regresar" action="mainResp" class="btn-nav" />
		</g:form>
	</body>
</html>