<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Ejecicios en Java/Servelets</h3>
<form action="NewFile2.jsp" method="POST">
	<label>Factorial de: </label>
	<input type = "text" name="nro1"> <br>
	
	<label>Fibonaci de : </label>
	<input type = "text" name="nro2"> <br>
	
	<label>Tetranaci  de: </label>
	<input type = "text" name="nro3"> <br>
	
	<label>Calculadora: </label>
	<input type = "text" name="nro41" placeholder="1er Numero: "> <br>
	<input type = "text" name="nro42" placeholder="2do Numero: "> <br>
	
	<label>Calculadora de Matrices: </label>
	<input type = "text" name="nro51" placeholder="Matriz A: " value = "[{1,2,3}, {4,5,6},{7,8,9}]"> <br>
	<input type = "text" name="nro52" placeholder="Matriz B: " value="[{2,1,3},{5,1,2},{6,7,3}]"> <br>
	
	<input type="submit" value="Realizar Calculos" name="pregunta"> <br>
	
</form>
	
<%
	
%>
</body>
</html>