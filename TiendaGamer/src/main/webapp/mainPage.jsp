<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Página principal</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@300;700&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/style2.css"/>
		<script src="tabsscript.js" type="text/javascript"></script>
	</head>
	<body>
		<header>Tienda Gaming</header>
		<div class="t-container">
		  <ul class="t-tabs">  
		    <li class="t-tab">Usuarios</li> 
		    <li class="t-tab">Clientes</li> 
		    <li class="t-tab">Proveedores</li> 
		    <li class="t-tab">Productos</li>
		    <li class="t-tab">Ventas</li>
		    <li class="t-tab">Reportes</li> 
		  </ul>
		  <ul class="t-contents">
		   	<li class="t-content">
		   		<form method="get" action="">
			    	<table>
			    		<tr>
			    			<td><label>Cédula:</label></td>
			    			<td><input name="cedula"></td>
			    			<td><label>Usuario:</label></td>
			    			<td><input name="usuario"></td>
			    		</tr>
			    		<tr>
			    			<td><label>Nombre Completo:</label></td>
			    			<td><input name="nombre"></td>
			    			<td><label>Contraseña:</label></td>
			    			<td><input name="contrasena"></td>
			    		</tr>
			    		<tr>
			    			<td><label>Correo Electrónico:</label></td>
			    			<td><input name="email"></td>
			    		</tr>
			    		<tr>
							<td><button name="consultar">Consultar</button></td>
							<td><button name="crear">Crear</button></td>
							<td><button name="actualizar">Actualizar</button></td>
							<td><button name="borrar">Borrar</button></td>
						</tr>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="">
			    	<table>
			    		<tr>
			    			<td><label>Cédula:</label></td>
			    			<td><input name="cedula"></td>
			    			<td><label>Teléfono:</label></td>
			    			<td><input name="telefono"></td>
			    		</tr>
			    		<tr>
			    			<td><label>Nombre Completo:</label></td>
			    			<td><input name="nombre"></td>
			    			<td><label>Correo Electrónico:</label></td>
			    			<td><input name="email"></td>
			    		</tr>
			    		<tr>
			    			<td><label>Dirección:</label></td>
			    			<td><input name="direccion"></td>
			    		</tr>
			    		<tr>
							<td><button name="consultar">Consultar</button></td>
							<td><button name="crear">Crear</button></td>
							<td><button name="actualizar">Actualizar</button></td>
							<td><button name="borrar">Borrar</button></td>
						</tr>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="">
			    	<table>
			    		<tr>
			    			<td><label>NIT:</label></td>
			    			<td><input name="nit"></td>
			    			<td><label>Teléfono:</label></td>
			    			<td><input name="telefono"></td>
			    		</tr>
			    		<tr>
			    			<td><label>Nombre Proveedor:</label></td>
			    			<td><input name="nombreP"></td>
			    			<td><label>Ciudad:</label></td>
			    			<td><input name="ciudad"></td>
			    		</tr>
			    		<tr>
			    			<td><label>Dirección:</label></td>
			    			<td><input name="direccion"></td>
			    		</tr>
			    		<tr>
							<td><button name="consultar">Consultar</button></td>
							<td><button name="crear">Crear</button></td>
							<td><button name="actualizar">Actualizar</button></td>
							<td><button name="borrar">Borrar</button></td>
						</tr>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<p>Contenido Productos</p>
		    </li>
		    <li class="t-content">
		    	<p>Contenido Ventas</p>
		    </li>
		    <li class="t-content">
		    	<p>Contenido Reportes</p>
		    </li>
		  </ul>
		  <script>(function() { easyTabs(); })();</script>
		 </div>
	</body>
</html>