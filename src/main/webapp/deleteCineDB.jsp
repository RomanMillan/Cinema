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
			CineRepository.deleteCine(c);
		}catch(Exception e){
			
		}
		
		response.sendRedirect("mostrarCines.jsp");
	%>
</body>
</html>