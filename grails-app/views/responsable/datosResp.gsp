<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
	</head>
	<body>
		<section class="section-Personal">
		<label class="tittle">RESPONSABLE</label>
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
		<label class="tittle">CONTACTO</label>
		<br>
		<br>
		<br>
		<label class="indic">Dirección: </label>
		<label class="rec">${session.responsable?.direccion} ${session.responsable?.ciudad}</label>
		<label class="indic">Telefono: </label>
		<label class="rec">${session.responsable?.telefono}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		<label class="tittle">FAMILIAR Y OCUPACIONAL</label>
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
		<label class="tittle">EPS</label>
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
		<label>${flash.message }</label>
		<br>
		</section>
		<div class="botones2">
			<a href="mainResp" class="regresar"> REGRESAR</a>
		</div>
	</body>
</html>