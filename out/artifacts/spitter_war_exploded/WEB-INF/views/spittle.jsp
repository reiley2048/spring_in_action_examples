<%--
  Created by IntelliJ IDEA.
  User: chingchou
  Date: 2018-12-11
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<html>
<head>
    <title>spittle</title>
</head>
<body>

    <c:forEach items="${spittleList}" var="spittle" >
        <li id="spittle_<c:out value="spittle.id" />">
            <div class="spittleMessage">
                <c:out value="${spittle.message}" />
            </div>
            <div>
                <span class="spittleTime"><c:out value="${spittle.time}" /> </span>
                <span class="spittleLocation">
                    (<c:out value="${spittle.latitude}" />,
                    <c:out value="${spittle.longitude}" />)
                </span>
            </div>
        </li>
    </c:forEach>

</body>
</html>
