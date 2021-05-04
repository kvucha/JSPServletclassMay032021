<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  
     url="jdbc:oracle:thin:@localhost:1521:orclkris"  
     user="c##scott"  password="HHHHHH"/>  


<sql:query dataSource="${db}" var="rs">  
SELECT * from emp
</sql:query>  


<table border="2" width="100%">  
<tr>  
<th>EMP NO</th>  
<th>EMP NAME</th>  
<th>EMP JOB</th>  
<th>EMP MGR</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.EMPNO}"/></td>  
<td><c:out value="${table.ENAME}"/></td>  
<td><c:out value="${table.JOB}"/></td>  
<td><c:out value="${table.MGR}"/></td>  
</tr>  
</c:forEach>  
</table>  




</body>  

</body>
</html>