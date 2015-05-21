<html>
  <head>
 	<title>Baby Care/Paciente</title>
	<meta name="layout" content="main" />
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load('visualization', '1', {'packages': ['table', 'map', 'corechart']});
      google.setOnLoadCallback(initialize);

      function initialize() {
        // The URL of the spreadsheet to source data from.
        var query = new google.visualization.Query(
            'https://spreadsheets.google.com/pub?key=pCQbetd-CptF0r8qmCOlZGg');
        query.send(draw);
      }

      function draw(response) {
        if (response.isError()) {
          alert('Error in query');
        }

        var ticketsData = response.getDataTable();

        var data = google.visualization.arrayToDataTable([
		                                                  ['Nivel', '-3', '-2', '-1', '0', '1', '2'],
		                                                  ['0',  	2.0, 2.4, 2.8, 3.3, 3.8, 4.4],
		                                                  ['2',  	3.8, 4.4, 4.9, 5.6, 6.3, 7.1],
		                                                  ['4',  	5.0, 5.6, 6.2, 7.0, 7.8, 8.8],
		                                                  ['6',  	5.7, 6.4, 7.1, 7.9, 8.8, 9.8],
		                                                  ['8',  	6.2, 6.9, 7.7, 8.8, 9.8, 10.8],
		                                                  ['10',	6.6, 7.2, 8.2, 9.2, 10.2, 11.4 ],
		                                                  ['1 año',	6.9, 7.8, 8.8, 9.6, 10.8, 12.0],
		                                                  ['14',	7.2, 8.1, 9.0, 10.1, 11.3, 12.6],
		                                                  ['16',	7.6, 8.4, 9.4, 10.5, 11.8, 13.1],
		                                                  ['18',	7.8, 8.8, 9.8, 11.0, 12.2, 13.6],
		                                                  ['20',	8.1, 9.1, 10.2, 11.4, 12.7, 14.2],
		                                                  ['22',	8.4, 9.4, 10.5, 11.8, 13.2, 14.7],
		                                                  ['2 años',	8.6, 9.7, 10.9, 12.2, 13.6, 15.3]
		                                                ]);
		
		var opciones= {
				title: 'Peso para la edad de 0 a 2 años',
		        curveType: 'function',
				'width': 600,
				'height':300,
		        legend: { position: 'bottom' }
		};
		var grafica = new google.visualization.LineChart 

		(document.getElementById('chart_div'));
		grafica.draw(data,opciones);

		var data2 = google.visualization.arrayToDataTable([
		                                                  ['Nivel',	'-2', '-1', '0', '1', '2'],
		                                                  ['0',  	46.0, 48.0, 50.0, 52.0, 53.8],
		                                                  ['2',  	54.2, 56.2, 58.2, 60.2, 62.1],
		                                                  ['4',  	60.0, 62.0, 64.0, 66.0, 68.0],
		                                                  ['6',  	63.3, 65.5, 67.8, 69.9, 71.9],
		                                                  ['8',  	66.2, 68.5, 70.5, 73.0, 75.0],
		                                                  ['10',	68.0, 71.0, 73.5, 75.8, 78.0],
		                                                  ['1 año',	71.0, 73.5, 75.8, 78.0, 80.6],
		                                                  ['14',	73.0, 75.8, 78.0, 80.6, 83.0],
		                                                  ['16',	75.0, 77.8, 80.0, 83.0, 85.4],
		                                                  ['18',	77.0, 79.7, 82.2, 85.0, 87.8],
		                                                  ['20',	78.8, 81.5, 84.3, 87.0, 90.0],
		                                                  ['22',	80.0, 83.0, 86.0, 89.0, 92.0],
		                                                  ['2 años',	82.0, 85.0, 88.0, 91.0, 94.0]
		                                                ]);
		
		var opciones2= {
				title: 'Talla para la edad de 0 a 2 años',
		        curveType: 'function',
				'width': 600,
				'height':300,
		        legend: { position: 'bottom' }
		};
		var grafica2 = new google.visualization.LineChart 

		(document.getElementById('prueba_div'));
		grafica2.draw(data2,opciones2);
       
      }
    </script>
  </head>

  <body>
  	<label style="margin-top:50px;margin-left:400px">Gráficas de desarrollo</label>
    <table align="center">
      <tr>
        <td style="width:50%;">
          <div id="chart_div" style="align: center; width: 400px; height: 300px;"></div>
        </td>
        <td style="width:50%;">
          <div id="prueba_div" style="align: center; width: 400px; height: 300px;"></div>
        </td>
      </tr>
    </table>

  </body>
</html>