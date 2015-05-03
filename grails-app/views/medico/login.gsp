<html>
	<head>
		<title>LOGIN MEDICO</title>
		<meta name="layout" content="main" />
	</head>
	<body>
		<div id="loginContainer" class="container"> 
		        <form class="form-signin">
        <h2 class="clase_login_encabezado">Inicie sesión</h2>
        <%-- <div class=loginSep>
        <label for="inputEmail" class="clase_login_label">Numero de documento</label>
        </div>--%>
        <div class=loginSep>
        <input type="text" id="inputDocumento" class="clase_login" placeholder="Numero de documento" required autofocus>
        </div>
        <%-- <div class=loginSep>
        <label for="inputPassword" class="clase_login_label">Contraseña</label>
        </div>--%>
        <div class=loginSep>
        <input type="password" id="inputContraseña" class="clase_login" placeholder="Contraseña" required>
        </div>
        <%-- <div class="separador">
          <a class="recuperarContraseña">Recuperar contraseña</a>
        </div>--%>
        <div class="check">
          <label>
            <input type="checkbox" value="recuerdame"> Recuerdame
          </label>
        </div>
        <button class="btn btn-lg" type="submit">Ingresar</button>
        
      </form>

    </div> <!-- /container -->
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>


