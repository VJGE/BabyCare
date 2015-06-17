<html>
	<head>
		<title>Baby Care/Paciente/citaPaciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainPaciente.css"/>
		<asset:stylesheet src="mainMedico.css"/>
		<style type="text/css">
  			.consultaIndividual{
  				padding: 1%;
  				border-color: #fff;
  				border-radius: 1%;
  			}
		</style>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
  		<script type="text/javascript">
	    google.load('visualization', '1.1', {packages: ['map']});
	    google.setOnLoadCallback(drawMap);
	
	    function drawMap () {
	        var data = google.visualization.arrayToDataTable([
	                                                          ['Lat', 'Long', 'Name'],
	                                                          [4.709919, -74.078267, 'Clinica Juan N. Corpas, Rodrigo Lara Bonilla #71B, '],
	                                                          [4.724298, -74.123645, 'Centro médico familiar calle 80, Av Calle 80 #116b-1 a 116b-73']
	                                                        ]);
	
	      var options = {
	        mapType: 'styledMap',
	        zoomLevel: 12,
	        showTip: true,
	        useMapTypeControl: true,
	        maps: {
	          // Your custom mapTypeId holding custom map styles.
	          styledMap: {
	            name: 'Styled Map', // This name will be displayed in the map type control.
	            styles: [
	              {featureType: 'poi.attraction',
	               stylers: [{color: '#fce8b2'}]
	              },
	              {featureType: 'road.highway',
	               stylers: [{hue: '#0277bd'}, {saturation: -50}]
	              },
	              {featureType: 'road.highway',
	               elementType: 'labels.icon',
	               stylers: [{hue: '#000'}, {saturation: 100}, {lightness: 50}]
	              },
	              {featureType: 'landscape',
	               stylers: [{hue: '#259b24'}, {saturation: 10}, {lightness: -22}]
	              }
	        ]}}
	      };
	
	      var map = new google.visualization.Map(document.getElementById('map_div'));
	
	      map.draw(data, options);
	    }
	  </script>
	</head>
	<body>
	<div id="busqueda">
		<div class="buttons" >
		<ul>
			<li>
				<g:link action="mainPaciente" id="${pacienteInstance.id}" class="datos">Datos personales</g:link>
				<!-- <a href="" class="datos"> Datos personales</a>  -->
			</li>
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
		</div>
	<div id="Consultas_hoy">
			<h1 class="titulo_seccion"> Proximas Consultas </h1>	
			<div class="buttons" id="consul">
                <g:each var="p" in="${babycare.Consulta.findByDocumentoPacienteAndFinalizada(pacienteInstance.documento , false,[max: 10, sort: "date", order: "desc"])}">
                    <g:set var="medic" value="${babycare.Medico.findByDocumento(p.documentoMedico)}"/>
					<div class="consultaIndividual">
                        ${p.date}<br>
                        ${medic.nombre} ${medic.apellido}  ${medic.especialidad}<br>
                        Clinica: ${p.lugar}<br>
                        Tipo de consulta:  ${p.tipoDeConsulta}

                    </div><br>
                </g:each>
			</div>
	</div>
	
	<div class="mapa">
		<div id="map_div" style="height: 300px; width: 500px"></div>
	</div>
	
	</body>
</html>