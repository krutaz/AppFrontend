<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Bienvenido Gamer</title>
		<link rel="shortcut icon" href="css/mando-play.ico">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@300;700&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/style.css"/>	
	</head>
	<body>
		<header>Tienda Gaming</header>
		<form action="./LoginServlet" method="get">
			<table>
			    <tr>
			    	<td><label for="usuario">Usuario:</label></td>
			    	<td><input name="usuario" id="usuario"></td>			    	
			    </tr>
			    <tr>
			    	<td><label for="password">Contraseña:</label></td>
			    	<td><input type="password" name="password" id="password"></td>
			    </tr>
			    <tr>
			    	<td><button name="ingresar" value="Ingresar">Ingresar</button></td>
			    	<td><button type="reset">Cancelar</button></td>
			    </tr>
			</table>
		</form>
		<!-- Agregar correos de todos para referencia -->
		<a href="mailto:heavy_juan@hotmail.com, daniel097345@gmail.com">Correos de contacto aquí</a>
		<p>Copyright© 2021, Juan Solano, Hector Anzola, Axel Muñoz, Daniel barbosa, Hitam Howard</p>
	</body>
</html>