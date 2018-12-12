<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<%--
  Created by IntelliJ IDEA.
  User: chingchou
  Date: 2018-12-11
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page session="false" %>
<html>
<head>
    <title>Spittr</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css" />" >
</head>
<body>

    <h1>spittr</h1>
    <a href="<c:url value="/spittles" />">Spittles</a>
    <a href="<c:url value="/spitter/register" />">Register</a>
</body>
</html>
