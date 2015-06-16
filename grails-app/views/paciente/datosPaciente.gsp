<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care/Paciente</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="fullcalendar.css"/>
		<asset:stylesheet src="fullcalendar.min.css"/>
		<asset:stylesheet src="fullcalendar.print.css.css" media='print'/>
		<asset:javascript src="fullcalendar.js"/>
		<asset:javascript src="jquery.min.js"/>
		<asset:javascript src="moment.min.js"/>
		<asset:javascript src="fullcalendar.min.js"/>
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
	<style>
	
		body {
			margin: 40px 10px;
			padding: 0;
			font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
			font-size: 14px;
		}
	
		#calendar {
			max-width: 900px;
			margin: 0 auto;
		}
	
	</style>
	</head>
	<body>
	
		<div id='calendar'></div>
	
	</body>
</html>
