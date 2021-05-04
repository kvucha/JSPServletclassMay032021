<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fn"  uri = "http://java.sun.com/jsp/jstl/functions" %>
    

<html>
<head>
<title>Using JSTL Functions- Contains</title>
</head>
<body>
<c:set var="YELLOW" value="Welcome to JAVA"/>  



  <h1>TESTING SOMETHING</h1>
  
  
  
<c:if test="${fn:contains(YELLOW, 'JAVA')}">  
   <h1>Found JAVA string</h1>  
</c:if>  
  

</body>
</html>