function showRecom(btn,square){
	var food="<p>Son ustedes quienes deciden qué alimentos se compran en su casa y cuándo se sirven. Aunque es de esperar que los niños den la lata a sus padres para que les dejen comer alimentos menos nutritivos, son los adultos quienes deciden qué alimentos entran en casa. Los niños no se quedarán con hambre porque en su casa no hay lo que más les apetece comer. Comerán lo que haya en los armarios y la nevera. Si el tentempié favorito de su hijo no tiene nada de nutritivo, aún y todo, usted puede comprárselo de vez en cuando para que no se atiborre de ese alimento en cuanto caiga en sus manos.</p>";
	var tec="<p>De este modo, evitará que su hijo pique mecánicamente mientras está delante de una pantalla y fomentará en él la actividad física. Las investigaciones han demostrado que los niños que reducen las horas de televisión también reducen su porcentaje de grasa corporal. Cuando se les limita el tiempo de televisión y ordenador, los niños encuentran formas más activas de pasar el tiempo. Y, si la familia al completo limita el tiempo que pasan delate de cualquier tipo de pantalla, tendrán más tiempo para estar activos juntos.</p>";
	var other="<p>No se que falla</p>";	
	
	var cogn="<p><strong>12 a 18 meses</strong><br>Puedes ayudarlo mencionando cada nombre de las cosas que usan rutinariamente. Puede que se interese más en los objetos que usan todos los días como “cuchara” o “auto”. A muchos niños pequeños les gusta también conocer los sonidos que hacen las cosas o los animales y si le dices “pato” lo relaciona con el sonido “cuac”. <br>Está aprendiendo las partes de su cuerpo, aunque quizá no pueda nombrarlas aún. De todas formas sabrá a lo que te refieres cuando dices “nariz” y señalas la suya. Aprovecha para jugar nombrando las partes del cuerpo y decir cosas como ¿dónde está tu pancita? ¡aquí está!</p>";
	var mot="<p><strong>Niños de 1-3 años</strong> <br>Desde colocar cuidadosamente un bloque de madera encima de otro hasta ensartar aros de colores en un palo de plástico, apilar (y derribar, por supuesto) es una de las actividades que mejor desarrollaran su motricidad fina.<br>Déjalo hacer tareas sencillas, como vestirse (puede empezar a pasar botones grandes por ojales) y hacer el desayuno (dale una espátula, una rebanada de pan tostado y un tarro de mermelada y deja que la unte). </p>";
	var com="<p><strong>Iniciar a hablar</strong><br>Háblale tanto y tan a menudo como puedas. Mírale atentamente y muéstrate interesada cuando te conteste.<br>Muéstrale lo que quieres decir, explicando lo que haces. Por ejemplo, puedes decir: “ahora quitamos los zapatos”, cuando le quites los zapatos, y “ahora los calcetines”, cuando le quites los calcetines.</p>";
	var soci="<p><strong>En bebés de 7 meses</strong><br> Trata de salir de la habitación durante unos minutos y observa qué sucede. Si tu hijo llora, inténtalo de nuevo. “Entra y sal de la habitación, y a la larga tu hijo estará seguro de que, aunque no estés presente en ese momento, siempre regresarás pronto.<br><strong>Niños de 1 a 3 años</strong><br> Les va bien tener a su alrededor a otros niños de su edad, así que invita a otros niños a tu casa, pero asegúrate de tener suficientes juguetes para todos</p>";
	
	console.log("estoy aqui 1");
	document.getElementById("recomSocial").className = "hideRecom";
	document.getElementById("recomCognitivo").className = "hideRecom";
	document.getElementById("recomMotriz").className = "hideRecom";
	document.getElementById("recomCom").className = "hideRecom";
	document.getElementById("squareRecom").className = "hideRecom";
	
	if(btn=="btn_1"){
		document.getElementById("squareText").innerHTML = cogn;
	}
	if(btn=="btn_1_2"){
		document.getElementById("squareText").innerHTML = cogn;
	}
	if(btn=="btn_2"){
		document.getElementById("squareText").innerHTML = soci;
	}
	if(btn=="btn_2_2"){
		document.getElementById("squareText").innerHTML = soci;
	}
	if(btn=="btn_3"){
		document.getElementById("squareText").innerHTML = mot;
	}
	if(btn=="btn_3_2"){
		document.getElementById("squareText").innerHTML = mot;
	}
	if(btn=="btn_4"){
		document.getElementById("squareText").innerHTML = com;
	}
	if(btn=="btn_4_2"){
		document.getElementById("squareText").innerHTML = com;
	}
	document.getElementById(square).className = "divRecom";
  }