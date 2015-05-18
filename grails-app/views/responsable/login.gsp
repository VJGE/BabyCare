<html>
	<head>
		<title>Baby Care/Responsable</title>
		<meta name="layout" content="main" /> 
	</head>
	<body>
		<g:if test="${flash.message}">
			<div class="message">
			${flash.message }
			</div>
		</g:if>
		
		<div id="loginContainer" class="container"> 
		<div id="imagen_medico"> 
				<asset:image src="padre.png" alt="Medico" width="350" height="263" id="imagdoc"/>
		<g:form action="handleLogin" method="post" class="form-signin">
	        <h2 class="clase_login_encabezado">Inicie sesión</h2>
	        <div class=loginSep>
	        <g:textField name="documento" value="${responsable?.documento}" type="text" id="inputDocumento" class="clase_login" placeholder="Numero de documento" />
	        </div>
	        <div class=loginSep>
	        <g:passwordField name="contrasenia" value="${responsable?.contrasenia}" type="text" id="inputContraseña" class="clase_login" placeholder="Contraseña " />
	        </div>
	        <div class="check">
	          <label>
	            <input type="checkbox" value="recuerdame"> Recuerdame
	          </label>
	        </div>
	        <g:actionSubmit value="Ingresar" action="handleLogin" class="btn btn-log" />
      </g:form></div>
      </div>
	</body>
</html>



