<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import='java.util.Date'%>
<%@ page import='co.edu.unbosque.tiendagamer.Proveedores'%>
<%@ page import='java.util.ArrayList'%>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Listado</title>
	</head>
<body>
	<p>LISTADO DE PROVEEDORES</p>
	<p>Hora servidor es<%=new Date()%></p>
	<table>
		<tr>
			<td><label>NIT</label></td>
			<td><label>Nombre</label></td>
			<td><label>Ciudad</label></td>
			<td><label>Teléfono</label></td>
			<td><label>Dirección</label></td>
		</tr>
		
		<%
		ArrayList<Proveedores> lista = (ArrayList<Proveedores>) request.getAttribute("lista");
		for (Proveedores proveedor : lista) {
		%>
		<tr>
			<td><%=proveedor.getNit()%></td>
			<td><%=proveedor.getNombre_proveedor()%></td>
			<td><%=proveedor.getCiudad()%></td>
			<td><%=proveedor.getTelefono()%></td>
			<td><%=proveedor.getDireccion()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>