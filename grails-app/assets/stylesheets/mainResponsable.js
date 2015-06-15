function showRecom(btn,square){
	var food="<p>Son ustedes quienes deciden qué alimentos se compran en su casa y cuándo se sirven. Aunque es de esperar que los niños den la lata a sus padres para que les dejen comer alimentos menos nutritivos, son los adultos quienes deciden qué alimentos entran en casa. Los niños no se quedarán con hambre porque en su casa no hay lo que más les apetece comer. Comerán lo que haya en los armarios y la nevera. Si el tentempié favorito de su hijo no tiene nada de nutritivo, aún y todo, usted puede comprárselo de vez en cuando para que no se atiborre de ese alimento en cuanto caiga en sus manos.</p>";
	var tec="<p>De este modo, evitará que su hijo pique mecánicamente mientras está delante de una pantalla y fomentará en él la actividad física. Las investigaciones han demostrado que los niños que reducen las horas de televisión también reducen su porcentaje de grasa corporal. Cuando se les limita el tiempo de televisión y ordenador, los niños encuentran formas más activas de pasar el tiempo. Y, si la familia al completo limita el tiempo que pasan delate de cualquier tipo de pantalla, tendrán más tiempo para estar activos juntos.</p>";
	var other="<p>No se que falla</p>";		
	
	console.log("estoy aqui 1");
	
	if(btn == "btn_1"){
		console.log("estoy aqui 2");
		document.getElementById(square).innerHTML = food;
	} 
	if(btn == "btn_2"){
		console.log("estoy aqui 3");
		document.getElementById(square).innerHTML = tec;
	}
  }