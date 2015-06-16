<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="mainResponsable.css"/>
		<asset:javascript src="mainResponsable.js"/>
		<asset:stylesheet src="style.css"/>
		<asset:stylesheet src="grid_12.css"/>
		<asset:stylesheet src="fullcalendar.css"/>
		<asset:stylesheet src="fullcalendar.min.css"/>
		<asset:stylesheet src="fullcalendar.print.css.css" media='print'/>
		<asset:javascript src="fullcalendar.js"/>
		<asset:javascript src="jquery.min.js"/>
		<asset:javascript src="moment.min.js"/>
		<asset:javascript src="fullcalendar.min.js"/>
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
                    			<p>12 a 18 meses de edad</p>
                       		</div>
                        	<div>
                        		<asset:image src="social.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_2_2" onClick="showRecom(this.id,'recomSocial')"><strong>Social</strong></div></p>
                    			<p>Bebés de 7 meses y Niños de 1 a 3 años</p>
                        	</div>
                     	</div>
                     	<div class="block-8 wrap top-3">
                     		<div>
                        		<asset:image src="motricidad.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_3_2" onClick="showRecom(this.id,'recomMotriz')"><strong>Motriz</strong></div></p>
                    			<p>Niños de 1-3 años</p>
                        	</div>
                        	<div>
                        		<asset:image src="comunicativo.jpg" alt="" class="img-border" />
                        		<p class="top-1"><div id="btn_4_2" onClick="showRecom(this.id,'recomCom')"><strong>Comunicativo</strong></div></p>
                    			<p>Inicio del habla</p>
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
	
	<div class="calendario">
	<script>
	
		$(document).ready(function() {
	
			$('#calendar').fullCalendar({
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay'
				},
				defaultDate: '2015-02-12',
				businessHours: true, // display business hours
				editable: true,
				events: [
					{
						title: 'Business Lunch',
						start: '2015-02-03T13:00:00',
						constraint: 'businessHours'
					},
					{
						title: 'Meeting',
						start: '2015-02-13T11:00:00',
						constraint: 'availableForMeeting', // defined below
						color: '#257e4a'
					},
					{
						title: 'Conference',
						start: '2015-02-18',
						end: '2015-02-20'
					},
					{
						title: 'Party',
						start: '2015-02-29T20:00:00'
					},
	
					// areas where "Meeting" must be dropped
					{
						id: 'availableForMeeting',
						start: '2015-02-11T10:00:00',
						end: '2015-02-11T16:00:00',
						rendering: 'background'
					},
					{
						id: 'availableForMeeting',
						start: '2015-02-13T10:00:00',
						end: '2015-02-13T16:00:00',
						rendering: 'background'
					},
	
					// red areas where no events can be dropped
					{
						start: '2015-02-24',
						end: '2015-02-28',
						overlap: false,
						rendering: 'background',
						color: '#ff9f89'
					},
					{
						start: '2015-02-06',
						end: '2015-02-08',
						overlap: false,
						rendering: 'background',
						color: '#ff9f89'
					}
				]
			});
			
		});
	
	</script>
	
	<div id='calendar'></div>	

	</div>
</body>
</html>