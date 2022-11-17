    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%@page import="com.dao.ProductDao,java.util.*,com.bean.Product"%>
<%@ page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="gona" method="post">
	<button type="submit">submit</button>

</form>
<%
ArrayList<Product> p = new ArrayList<Product>();
ProductDao pd = new ProductDao();
p = pd.fetchAllProductForCrud();
out.print(p);


%>

</body>
</html>