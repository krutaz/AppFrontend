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
		<script src="javascript/tabsscript.js" type="text/javascript"></script>
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
		   		<form method="get" action="./inicio">
			    	<table>
			    		<thead></thead>
			    		<tbody>
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
				    			<td><input name="password"></td>
				    		</tr>
				    		<tr>
				    			<td><label>Correo Electrónico:</label></td>
				    			<td><input name="email"></td>
				    		</tr>
				    	</tbody>
				    	<tfoot>
				    		<tr>
								<td><button name="consultar">Consultar</button></td>
								<td><button name="crear">Crear</button></td>
								<td><button name="actualizar">Actualizar</button></td>
								<td><button name="borrar">Borrar</button></td>
							</tr>
						</tfoot>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="">
			    	<table>
			    		<thead></thead>
			    		<tbody>
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
				    	</tbody>
				    	<tfoot>
				    		<tr>
								<td><button name="consultar">Consultar</button></td>
								<td><button name="crear">Crear</button></td>
								<td><button name="actualizar">Actualizar</button></td>
								<td><button name="borrar">Borrar</button></td>
							</tr>
						</tfoot>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="">
			    	<table>
			    		<thead></thead>
			    		<tbody>
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
				    	</tbody>
			    		<tfoot>
				    		<tr>
								<td><button name="consultar">Consultar</button></td>
								<td><button name="crear">Crear</button></td>
								<td><button name="actualizar">Actualizar</button></td>
								<td><button name="borrar">Borrar</button></td>
							</tr>
						</tfoot>
			    	</table>
			    </form>
		    </li>
		    <li class="t-content">
		    	<form method="get" action="">
		    		<table>
		    			<thead></thead>
		    			<tbody>
			    			<tr>
			    				<td><label>Nombre del Archivo:</label></td>
			    				<td><input name="archivo"></td>
			    				<td><button name="examinar">Examinar</button></td>
			    			</tr>
			    		</tbody>
			    		<tfoot>
			    			<tr>
			    				<td></td>
			    				<td><button name="cargar">Cargar</button></td>
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
			    				<td><label>Cédula:</label></td>
			    				<td><input name="cedula"></td>
			    				<td><button name="consultar">Consultar</button></td>
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
		    					<td><input name="codigo1"></td>
		    					<td><button name="consultar1">Consultar</button></td>
		    					<td><input name="nombreP1"></td>
		    					<td><input name="cantidad1"></td>
		    					<td><input name="vlrTotal1"></td>
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
		    	<table>
		    		<thead></thead>
		    		<tbody>
		    			<tr>
		    				<td><button name="ListaUsu">Listado de Usuarios</button></td>
		    			</tr>
		    			<tr>
		    				<td><button name="ListaCli">Listado de Clientes</button></td>
		    			</tr>
		    			<tr>
		    				<td><button name="ListaVen">Ventas por Cliente</button></td>
		    			</tr>
		    		</tbody>
		    		<tfoot></tfoot>
		    	</table>
		    </li>
		  </ul>
		  <script>(function() { easyTabs(); })();</script>
		 </div>
	</body>
</html>