<%@taglib uri="http://java.sun.com/jsp/jstl/core"
     prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<html>
<head><title>Hello</title>

</head>


<form>
<input type="text" name="username" size="25">
<p></p>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</form>

<c:if test="${fn:length(param.username) >= 5}" >
  <%@include file="responsegt5.jsp" %>
</c:if>

<c:if test="${fn:length(param.username) < 5}" >
  <%@include file="responselt5.jsp" %>
</c:if>


</body>
</html>