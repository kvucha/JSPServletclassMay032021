<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html>
<head>
<title>Using JSTL Functions on Strings</title>
</head>
<body>
	<h1>Contains Function With Choose----></h1>
	<c:set var="String" value="Welcome to JTVA" />

	<c:choose>
		<c:when test="${fn:contains(String, 'JAVA')}">
			<p>Contains JAVA</p>
			<br />
		</c:when>
		<c:otherwise>
			<p>Doesn't Contain JAVA</p>
			<br />
		</c:otherwise>
	</c:choose>
	<br />

	<c:set var="string1" value="This is first string" />
	<h1>Contains Function With IF----></h1>
	<c:if test="${fn:contains(string1, 'first')}">
		<p>Found 'first' in string</p>
	</c:if>


	<br />
	<h1>fn:containsIgnoreCase Function ----></h1>
	<c:if test="${fn:containsIgnoreCase(string1, 'first')}">
		<p>Found 'first' string</p>
	</c:if>
	<c:if test="${fn:containsIgnoreCase(string1, 'FIRST')}">
		<p>Found 'FIRST' string</p>
	</c:if>

	<br />
	<h1>fn:endsWith Function ----></h1>
	<c:if test="${fn:endsWith(string1, 'string')}">
		<p>String ends with 'string'
		<p>
	</c:if>

	<br />
	<h1>fn:length Function ----></h1>
	<p>Length: ${fn:length(string1)}</p>
 
	<br />
	<h1>fn:replace Function ----></h1>
	<c:set var="string2" value="${fn:replace(string1, 'first', 'third')}" />
	<p>Source String : ${string1}</p>
	<p>Target String : ${string2}</p>
	
	<p>Target new String : "${fn:replace(string2, 'third', 'eith')}"</p>
</body>
</html>