<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import='java.util.Date'%>
<%@ page import='co.edu.unbosque.tiendagamer.Clientes'%>
<%@ page import='java.util.ArrayList'%>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Listado</title>
	</head>
<body>
	<p>LISTADO DE CLIENTES</p>
	<p>Hora servidor es<%=new Date()%></p>
	<table>
		<tr>
			<td><label>Cédula</label></td>
			<td><label>Nombre</label></td>
			<td><label>Correo</label></td>
			<td><label>Teléfono</label></td>
			<td><label>Dirección</label></td>
		</tr>
		
		<%
		ArrayList<Clientes> lista = (ArrayList<Clientes>) request.getAttribute("lista");
		for (Clientes cliente : lista) {
		%>
		<tr>
			<td><%=cliente.getCedula_cliente()%></td>
			<td><%=cliente.getNombre_cliente()%></td>
			<td><%=cliente.getEmail_cliente()%></td>
			<td><%=cliente.getTelefono()%></td>
			<td><%=cliente.getDireccion()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>