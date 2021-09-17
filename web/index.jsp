<%-- 
    Document   : index
    Created on : 16-sep-2021, 22:20:38
    Author     : juand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/style.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Forma de Diligenciamiento</h1>
        <div>
            <form name="Forma de Nombre" action="response.jsp">
                Ingrese su nombre:<br>
                <input type="text" name="name" />
                <br><br>
                Seleccione su fecha de nacimiento:
                <input type="date" name="date" />
                <br>
                <input type="submit" value="OK" class="btn"/>
            </form>
        </div>
    </body>
</html>
