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
			/* ver si me ha puesto los datos para añadir un nuevo cine */
			try{
				Cine c = new Cine(request.getParameter("cine"),request.getParameter("ciudadCine"),request.getParameter("direccionCine"));
				CineRepository.deleteCine(c);
			}catch(Exception e){
				/* Hay dos posibilidades: 
					- Que no me haya pasado nada
					- Que haya fallado al añadir
				*/
			}
		%>
		
		<form action="deleteCine.jsp">
			<input type="text" name="cine">
			<input type="text" name="ciudadCine">
			<input type="text" name="direccionCine">
			<button type="submit">borrar</button>
		</form>
		
	</body>
</html>