<html>
	<head>
		<title>Baby Care/Paciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="carousel - copia.css"/>
		<asset:javascript src="carousel.js"/>
		<asset:stylesheet src="mainPaciente.css"/>
	</head>
	<body>
		<form name="form1" method="post" action="">
		<div class="buttons">
		<ul>
			<li>
				<g:link action="historiaPaciente" id="${pacienteInstance.id}" class="historia">Historia Clinica</g:link>
				<!-- <a href="" class="historia"> Historia clinica</a> -->
			</li>
			<li>
				<a href="" class="vacunas">Vacunas</a>
			</li>
			<li>
				<g:link action="citaPaciente" id="${pacienteInstance.id}" class="citas">Citas</g:link>
				<!--<a href="/BabyCare/paciente/citaPaciente" class="citas">Citas</a>-->
			</li>
			<li>
				<a href="" class="medicamentos">Medicamentos</a>
			</li>
			<li>
				<a href="/BabyCare/paciente/desarrolloPaciente" class="desarrollo">Desarrollo</a>
			</li>
		</ul>
		</div>
		</form>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
			<div class="contentpac1">
						
						<img id="imagenPerfil" src="${g.createLink(controller:'paciente',action:'mostrarImagen',params:[id:pacienteInstance.id])}">
						<h4 class="text-center"><g:fieldValue bean="${pacienteInstance}" field="nombre"/>
						<g:fieldValue bean="${pacienteInstance}" field="apellido"/></h4>
						<h5 class="text-center-h4"><g:fieldValue bean="${pacienteInstance}" field="edad"/> años 
						<g:fieldValue bean="${pacienteInstance}" field="edadMeses"/> meses </h5>
						<h5 class="text-center-h4"><g:fieldValue bean="${pacienteInstance}" field="tipoDocumento"/>: <g:fieldValue bean="${pacienteInstance}" field="documento"/></h5>
						<h5 class="text-center-h4">Teléfono: <g:fieldValue bean="${pacienteInstance}" field="telefono"/></h5>
						<h5 class="text-center-h4">Dirección: <g:fieldValue bean="${pacienteInstance}" field="direccion"/></h5>
						<h5 class="text-center-h4"><g:fieldValue bean="${pacienteInstance}" field="ciudad"/></h5>
						<h5 class="text-center-h4">EPS: <g:fieldValue bean="${pacienteInstance}" field="eps"/></h5>
						<h5 class="text-center-h4">IPS: <g:fieldValue bean="${pacienteInstance}" field="ipsPrimaria"/></h5>	
			</div>
          <div class="container">
            <div class="carousel-caption">
             </div>
          </div>
        </div>
        <div class="item">
          <div class="contentpac1">
						<h5 class="text-left-h4" style="margin-top:50px;">Sexo: <g:fieldValue bean="${pacienteInstance}" field="sexo"/></h5>
						<h5 class="text-left-h4">Grupo sanguíneo: <g:fieldValue bean="${pacienteInstance}" field="grupoSanguineo"/> RH: <g:fieldValue bean="${pacienteInstance}" field="rh"/></h5>
						<h5 class="text-left-h4">Fecha de nacimiento: <g:formatDate format = "dd-MM-yyyy" date="${pacienteInstance?.fechaNacimiento}" /></h5>
						<h5 class="text-left-h4">Peso de naciemiento: <g:fieldValue bean="${pacienteInstance}" field="pesoNacimiento"/></h5>
						<h5 class="text-left-h4">Talla de nacimiento: <g:fieldValue bean="${pacienteInstance}" field="tallaNacimiento"/></h5>
						<h5 class="text-left-h4">PC de naciemiento: <g:fieldValue bean="${pacienteInstance}" field="pcNacimiento"/></span></h5>
						<h5 class="text-left-h4">Edad gestacional: <g:fieldValue bean="${pacienteInstance}" field="edadGestacional"/> semanas</h5>
						<h5 class="text-left-h4">Tipo de nacimiento: <g:fieldValue bean="${pacienteInstance}" field="tipoNacimiento"/></h5>	
			</div>
          <div class="container">
            <div class="carousel-caption">
             </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      	<asset:image src="/FONDOS/izquierda.png"  id="left"/>
        <span class="sr-only">LEFT</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <asset:image src="/FONDOS/derecha.png" id="right" />
        <span class="sr-only">Next</span>
      </a>
    </div>
		<div class="contentpac2">
			<h1 class="text-center">TABLA DE DATOS</h1>
			<table border=1 bordercolor="silver" bgcolor="black">
			<tr><td>Fecha</td>
			<td>Edad</td>
			<td>Peso</td>
			<td>Talla</td>
			<td>PC</td></tr>
			<tr><td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td></tr>
			<tr><td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td></tr>
			<tr><td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td></tr>
			</table>
		</div>
	</body>
</html>
