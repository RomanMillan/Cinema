<%@page import="java.util.ArrayList"%>
<%@page import="com.jacaranda.repository.CineRepository"%>
<%@page import="com.jacaranda.model.Cine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			ArrayList<Cine> listCines = null ;
			
			try{
				listCines = (ArrayList<Cine>) CineRepository.getCine();
			}catch(Exception e){
				/* Informar que hay un problema con la bd*/
			}
		%>
		
		<table>
			<thead>
				<th>Cine</th>
				<th>Direccion</th>
				<th>Ciudad</th>
				<th></th>
				<th></th>
			</thead>
			
			<tbody>
			<%for (Cine c: listCines){%>
			<tr>
				<td><%=c.getCine() %></td>
				<td><%=c.getDireccionCine() %></td>
				<td><%=c.getCiudadCine() %></td>
				<td>
					<form action="deleteCine.jsp">
						<input name="cine" type="text" value="<%=c.getCine()%>" hidden>
						<button type="submit">Borrar</button>
					</form>
				</td>
				<td>
					<form action="editCine.jsp">
						<input name="cine" type="text" value="<%=c.getCine()%>" hidden>
						<button type="submit">Modificar</button>
					</form>
				</td>
			</tr>
		<%}
			%>
			
				<th>
				</th>
			</tbody>
		</table>
		
	</body>
</html>