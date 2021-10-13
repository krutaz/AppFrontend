<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import='co.edu.unbosque.tiendagamer.Usuarios'%>
<%@ page import='java.util.ArrayList'%>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Página principal</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@300;700&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/style2.css"/>
		<script src="javascript/tabsscript.js" type="text/javascript"></script>
	</head>
	<body>
		<header>Tienda Gaming
			<a href="http://localhost:8080/TiendaGamer/login.jsp">Salir</a>
		</header>
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
		   		<form method="get" action="./UsuariosServlet">
			    	<table>
			    		<thead></thead>
			    		<tbody>
				    		<tr>
				    			<td><label for="cedula">Cédula:</label></td>
				    			<td><input type="number" name="cedula" id="cedula"></td>
				    			<td><label for="usuario">Usuario:</label></td>
				    			<td><input name="usuario" id="usuario"></td>
				    		</tr>
				    		<tr>
				    			<td><label for="nombre">Nombre Completo:</label></td>
				    			<td><input name="nombre" id="nombre"></td>
				    			<td><label for="contraseña">Contraseña:</label></td>
				    			<td><input name="password" id="contraseña"></td>
				    		</tr>
				    		<tr>
				    			<td><label for="correo">Correo Electrónico:</label></td>
				    			<td><input type="email" name="email" id="correo"></td>
				    		</tr>
				    	</tbody>
				    	<tfoot>
				    		<tr>
								<td><button name="crear" value="crear">Crear</button></td>
								<td><button name="actualizar" value="actualizar">Actualizar</button></td>
								<td><button name="eliminar" value="eliminar">Borrar</button></td>
								<td><button type="reset">Cancelar</button></td>
							</tr>
						</tfoot>
			    	</table>
			    </form>			    
		    </li>
		    <li class="t-content">
		    	<form method="get" action="./ClientesServlet">
			    	<table>
			    		<thead></thead>
			    		<tbody>
				    		<tr>
				    			<td><label for="cedula">Cédula:</label></td>
				    			<td><input type="number" name="cedula" id="cedula"></td>
				    			<td><label for="telefono">Teléfono:</label></td>
				    			<td><input type="number" name="telefono" id="telefono"></td>
				    		</tr>
				    		<tr>
				    			<td><label for="nombre">Nombre Completo:</label></td>
				    			<td><input name="nombre" id="nombre"></td>
				    			<td><label for="correo">Correo Electrónico:</label></td>
				    			<td><input type="email" name="email" id="correo"></td>
				    		</tr>
				    		<tr>
				    			<td><label for="direccion">Dirección:</label></td>
				    			<td><input name="direccion" id="direccion"></td>
				    		</tr>
				    	</tbody>
				    	<tfoot>
				    		<tr>
								<td><button name="consultar" value="consultar">Consultar</button></td>
								<td><button name="crear" value="crear">Crear</button></td>
								<td><button name="actualizar" value="actualizar">Actualizar</button></td>
								<td><button name="eliminar" value="eliminar">Borrar</button></td>
								<td><button type="reset">Cancelar</button></td>
							</tr>
						</tfoot>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="./ProveedoresServlet">
			    	<table>
			    		<thead></thead>
			    		<tbody>
				    		<tr>
				    			<td><label for="nit">NIT:</label></td>
				    			<td><input name="nit" id="nit"></td>
				    			<td><label for="telefono">Teléfono:</label></td>
				    			<td><input name="telefono" id="telefono"></td>
				    		</tr>
				    		<tr>
				    			<td><label for="nombre">Nombre Proveedor:</label></td>
				    			<td><input name="nombre" id="nombre"></td>
				    			<td><label for="ciudad">Ciudad:</label></td>
				    			<td><input name="ciudad" id="ciudad"></td>
				    		</tr>
				    		<tr>
				    			<td><label for="direccion">Dirección:</label></td>
				    			<td><input name="direccion" id="direccion"></td>
				    		</tr>
				    	</tbody>
			    		<tfoot>
				    		<tr>
				    			<td><button name="consultar" value="consultar">Consultar</button></td>
								<td><button name="crear" value="crear">Crear</button></td>
								<td><button name="actualizar" value="actualizar">Actualizar</button></td>
								<td><button name="eliminar" value="eliminar">Borrar</button></td>
								<td><button type="reset">Cancelar</button></td>
							</tr>
						</tfoot>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="./ProductosServlet">
		    		<table>
		    			<thead></thead>
		    			<tbody>
			    			<tr>
			    				<td><label>Nombre del Archivo:</label></td>
			    				<td><input type="file" name="archivo"></td>
			    			</tr>
			    		</tbody>
			    		<tfoot>
			    			<tr>
			    				<td></td>
			    				<td><button name="cargar" value="cargar">Cargar</button></td>
			    			</tr>
			    		</tfoot>
		    		</table>
		    	</form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="">
		    		<table>
		    			<thead>
			    			<tr>
			    				<td><label for="cedula3">Cédula:</label></td>
			    				<td><input name="cedula3" id="cedula3"></td>
			    				<td><button name="consultar" value="consultar">Consultar</button></td>
			    				<td><label>Cliente:</label></td>
			    				<td><input name="nombre"></td>
			    				<td><label>Consec.</label></td>
			    				<td><input name="consec"></td>
			    			</tr>
			    		</thead>
			    		<tbody>
			    			<tr>
			    				<td><label>Cod. Producto</label></td>
			    				<td></td>
			    				<td><label>Nombre Producto</label></td>
			    				<td><label>Cant.</label></td>
			    				<td><label>Vlr. Total</label></td>
		    				</tr>
		    				<tr>
		    					<td><input name="codigo1"></td>
		    					<td><button name="consultar1">Consultar</button></td>
		    					<td><input name="nombreP1"></td>
		    					<td><input name="cantidad1"></td>
		    					<td><input name="vlrTotal1"></td>
		    				</tr>
		    				<tr>
		    					<td><input name="codigo2"></td>
		    					<td><button name="consultar2">Consultar</button></td>
		    					<td><input name="nombreP2"></td>
		    					<td><input name="cantidad2"></td>
		    					<td><input name="vlrTotal2"></td>
		    				</tr>
		    				<tr>
		    					<td><input name="codigo3"></td>
		    					<td><button name="consultar3">Consultar</button></td>
		    					<td><input name="nombreP3"></td>
		    					<td><input name="cantidad3"></td>
		    					<td><input name="vlrTotal3"></td>
		    				</tr>
			    		</tbody>
			    		<tfoot>
			    			<tr>
			    				<td></td>
			    				<td></td>
			    				<td></td>
			    				<td><label>Total Venta:</label></td>
			    				<td><input name="vlrVenta"></td>
			    			</tr>
			    			<tr>
			    				<td></td>
			    				<td></td>
			    				<td></td>
			    				<td><label>Total IVA:</label></td>
			    				<td><input name="vlrIVA"></td>
			    			</tr>
			    			<tr>
			    				<td></td>
			    				<td></td>
			    				<td><button name="confirmar">Confirmar Venta</button></td>
			    				<td><label>Total con IVA:</label></td>
			    				<td><input name="vlrVentaT"></td>
			    			</tr>
			    		</tfoot>
		    		</table>
		    	</form>
		    </li>
		    <li class="t-content">
		    	<form action="./ReportesServlet">
			    	<table>
			    		<thead></thead>
			    		<tbody>
			    			<tr>
			    				<td><button name="consulUSU" value="consulUSU">Listado de Usuarios</button></td>
			    			</tr>
			    			<tr>
			    				<td><button name="consulCLI" value="consulCLI">Listado de Clientes</button></td>
			    			</tr>
			    			<tr>
			    				<td><button name="consulVEN" value="consulVEN">Ventas por Cliente</button></td>
			    			</tr>
			    		</tbody>
			    		<tfoot></tfoot>
			    	</table>
		    	</form>
		    </li>
		  </ul>
		  <script>(function() { easyTabs(); })();</script>
		 </div>
	</body>
</html>