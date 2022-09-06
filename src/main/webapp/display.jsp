<%--
  Created by IntelliJ IDEA.
  User: Kasuni
  Date: 9/6/2022
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String answer=request.getAttribute("answer").toString();
%>
<html>
<head>
    <title>Let's See Answer</title>
</head>
<body>
<h>Answer : <%= answer%>  </h>
<br/><br/>

<form method="get" action="index.jsp">
    <input type="submit" value="Go to Home">
</form>

</body>
</html>
