<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Functions</title>
</head>
<body>
	<c:set var="str" value="Jyoti Ranjan is a good person" />
	<c:forEach items="${fn:split(str, ' ')}" var="s">
		<br>
		${s}
	</c:forEach>
	
	<c:set var="str" value="Jyoti Ranjan is a good person" />
	Index of: ${fn:indexOf(str, 'good')} <br>
	
	Is there: ${fn:contains(str, 'person') } <br>
	
	<c:if test = "${fn:endsWith(str, 'person')}">
		You are right. Jyoti is a person.
	</c:if>
 </body>
</html>
