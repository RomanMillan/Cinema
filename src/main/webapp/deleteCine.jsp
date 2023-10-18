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
			Cine c = null;
			try{
				c = CineRepository.getCine(request.getParameter("cine"));
			}catch(Exception e){
				
			}
		%>
		
		<form action="deleteCineDB.jsp">
			<input type="text" name="cine" value="<%=c.getCine() %>"> <br>
			<input type="text" name="ciudadCine" value="<%=c.getCiudadCine() %>"> <br>
			<input type="text" name="direccionCine" value="<%=c.getDireccionCine() %>"> <br>
			<button type="submit">borrar</button>
		</form>
		
	</body>
</html>