<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Baby Care"</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
	</head>
	<body>
		<div id="logo" role="banner"><a href=""><asset:image src="icono.png" alt="BabyCare"/></a></div>
		<div id="loginContainer" class="container"> 
		        <form class="form-signin">
        <h2 class="clase_login_encabezado">Inicie sesión</h2>
        <div class=loginSep>
        <label for="inputEmail" class="clase_login_label">Numero de documento</label>
        </div>
        <div class=loginSep>
        <input type="text" id="inputDocumento" class="clase_login" placeholder="Numero de documento" required autofocus>
        </div>
        <div class=loginSep>
        <label for="inputPassword" class="clase_login_label">Contraseña</label>
        </div>
        <div class=loginSep>
        <input type="password" id="inputContraseña" class="clase_login" placeholder="Contraseña" required>
        </div>
        <div class="separador">
          <a class="recuperarContraseña">Recuperar contraseña</a>
        </div>
        <div class="check">
          <label>
            <input type="checkbox" value="recuerdame"> Recuerdame
          </label>
        </div>
        <button class="btn btn-lg" type="submit">Ingresar</button>
        
      </form>

    </div> <!-- /container -->
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>