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
		Cine cineUpdate = null;
		try{
			c = CineRepository.getCine(request.getParameter("cine"));
			
			if(request.getParameter("ciudadCine") != null){				
				cineUpdate = new Cine(c.getCine(),request.getParameter("ciudadCine"),request.getParameter("direccionCine"));
			}else{
				cineUpdate = new Cine(c.getCine(),c.getCiudadCine(),c.getDireccionCine());
			}
			
			CineRepository.annadirCine(cineUpdate);

		}catch(Exception e){
			
		}
	%>
	

	<form action="editCine.jsp">
		<label>Nombre cine</label>
		<input type="text" name="cine" value="<%=cineUpdate.getCine() %>" readonly> <br>
		<label>Ciudad</label>
		<input type="text" name="ciudadCine" value="<%=cineUpdate.getCiudadCine() %>"><br>
		<label>Dirección</label>
		<input type="text" name="direccionCine" value="<%=cineUpdate.getDireccionCine() %>"> <br>
		<button type="submit">Actualizar</button>
	</form>
	
	
</body>
</html>