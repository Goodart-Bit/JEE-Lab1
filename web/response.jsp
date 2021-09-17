<%-- 
    Document   : response
    Created on : 16-sep-2021, 22:28:53
    Author     : juand
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/responseStyle.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="time" class="java.util.Date"/>
        <jsp:useBean id="datebean" scope="session" class="org.mypackage.hello.CalcAge"/>
        <jsp:useBean id="namebean" scope="session" class="org.mypackage.hello.NameHandler"/>
        <jsp:setProperty name="namebean" property="name" />
        <jsp:setProperty name="datebean" property="date" />
        <h1>
            <c:choose>
                <c:when test="${time.hours > 18}">
                    Buenas noches!,
                </c:when>
                <c:otherwise>
                    <c:choose>
                        <c:when test="${time.hours > 12}">
                            Buenas tardes!,
                        </c:when>
                        <c:otherwise>
                            Buenos días!,
                        </c:otherwise>
                    </c:choose>
                </c:otherwise>
            </c:choose>
                        <jsp:getProperty name="namebean" property="name" />
            <br>
            <p>Usted tiene <span><jsp:getProperty name="datebean" property="age" /></span> años</p>
        </h1>
            <footer>Fecha: ${time.toLocaleString()}</footer>
    </body>
</html>
