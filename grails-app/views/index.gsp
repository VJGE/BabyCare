<!DOCTYPE html>
<html>
	<head>
		<title>Baby Care</title>
		<meta name="layout" content="main" />
		<asset:stylesheet src="bootstrap.min.css"/>
		<asset:javascript src="bootstrap.min.js"/>
		<asset:stylesheet src="carousel.css"/>
		<asset:javascript src="carousel.js"/>
		<asset:javascript src="navbar-fixed-top.css"/>
	</head>
	<body>	
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      	<asset:image src="flechaL.png"  id="left"/>
        <span class="sr-only">LEFT</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <asset:image src="flechaR.png" id="right" />
        <span class="sr-only">Next</span>
      </a>
    </div>
    
    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h2>Sigue de cerca el crecimiento de tu niño!</h2>
        <p>Ahora podras tener acceso a los reportes y registros de todo lo relacionado con tus hijos. BabyCare siempre a tu lado, apoyando esa hermosa labor de ser padre</p>
        <p>
          <a class="btn btn-lg btn-primary" href="http://www.minsalud.gov.co/salud/publica/Vacunacion/Paginas/pai.aspx" role="button">Informacion de vacunas &raquo;</a>
        </p>
      </div>

    </div>
    
    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <asset:image class="img-circle" src="bebe.jpg" width="140" height="140"/>
          <h2>Pacientes</h2>
          <p>Ten siempre en respaldo la información más actualizada de esas personitas tan importantes, consulta la información y revisa el progreso</p>
          <p><a class="btn btn-default" href="#" role="button">Más información &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <asset:image class="img-circle" src="medico.jpg" width="140" height="140"/>
          <h2>Medicos</h2>
          <p>El respaldo en todos los procesos del profesional de la salud, brinda un seguimiento cuidadoso, que deja de lado las molestias de muchas hojas</p>
          <p><a class="btn btn-default" href="#" role="button">Profesionales de la salud &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <asset:image class="img-circle" src="papas.jpg" width="140" height="140"/>
          <h2>Responsables</h2>
          <p>Toda persona a cargo de un paciente tiene el acceso a revisar los datos y la historia clínica, ya sean los padres o acudientes</p>
          <p><a class="btn btn-default" href="#" role="button">Politicas de uso &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
    </div>
    
    
	</body>
</html>