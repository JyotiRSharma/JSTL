<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${student}" var="s">
		${s} <br>
	</c:forEach>
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/testdb" user="root" password=""/>
	
	<sql:query var="rs" dataSource="${db}"> select * from student </sql:query>
	
	<c:forEach items="${rs.rows}" var="stud" >
		<br> <c:out value="${stud.id}"></c:out> : <c:out value="${stud.name}" /> : <c:out value="${stud.age}"></c:out>
	</c:forEach> 
	
</body>
</html>
