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
		<label class="rec">${responsableInstance.nombre}</label>
		<label class="indic">Apellidos: </label>
		<label class="rec">${responsableInstance.apellido}</label>
		<br>
		<br>
		<br>
		<label class="indic">${responsableInstance.tipoDocumento}:</label>
		<label class="rec">${responsableInstance.documento}</label>
		<label class="indic">Edad:</label>
		<label class="rec">${responsableInstance.edad}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		</section>
		<section class="section-Personal2">
		<label class="tittle">CONTACTO</label>
		<br>
		<br>
		<br>
		<label class="indic">Dirección: </label>
		<label class="rec">${responsableInstance.direccion} ${session.responsable?.ciudad}</label>
		<label class="indic">Telefono: </label>
		<label class="rec">${responsableInstance.telefono}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		<label class="tittle">FAMILIAR Y OCUPACIONAL</label>
		<br>
		<br>
		<br>
		<label class="indic">Estado Civil: </label>
		<label class="rec">${responsableInstance.estadoCivil}</label>
		<label class="indic">Parentesco responsabilidad: </label>
		<label class="rec">${responsableInstance.parentesco}</label>
		<br>
		<br>
		<br>
		<label class="indic">Ocupación: </label>
		<label class="rec">${responsableInstance.ocupacion}</label>
		<label class="indic">Nivel Salarial: </label>
		<label class="rec">${responsableInstance.nivelSalarial}</label>
		<br>
		<hr width="90%" style="border:1px solid black;">
		<label class="tittle">EPS</label>
		<br>
		<br>
		<br>
		<label class="indic">EPS: </label>
		<label class="rec">${responsableInstance.eps}</label>
		<label class="indic">Tipo Afiliación: </label>
		<label class="rec">${responsableInstance.tipoAfiliado}</label>
		<br>
		<br>
		<br>
		<label class="indic">Tipo Plan EPS: </label>
		<label class="rec">${responsableInstance.tipoPlan}</label>
		<label class="indic">IPS primaria: </label>
		<label class="rec">${responsableInstance.ipsPrimaria}</label>
		<label>${flash.message }</label>
		<br>
		</section>
		<g:form action="datosResp">
			<g:actionSubmit value="Regresar" action="mainResp" class="btn-navDR" />
		</g:form>
	</body>
</html>