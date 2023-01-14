<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado</title>

</head>
<body>


	<%
	String svalorA = request.getParameter("valorA");
	String svalorB = request.getParameter("valorB");
	String sopcao = request.getParameter("opcao");

	double dvalorA = Double.parseDouble(svalorA);
	double dvalorB = Double.parseDouble(svalorB);
	double result = 0;

	if (sopcao.equals("+")) {
		result = dvalorA + dvalorB;
	} else if (sopcao.equals("-")) {
		result = dvalorA - dvalorB;
	} else if (sopcao.equals("*")) {
		result = dvalorA * dvalorB;
	} else if (sopcao.equals("/")) {
		result = dvalorA / dvalorB;
	}
	out.print("Resultado<br>" + result);
	%>
	<a href="http://localhost:9000/CalcBasic/calcJSP.html">Novo Calculo</a>
</body>
</html>