<%-- 
    Document   : index
    Created on : 29-06-2018, 22:07:17
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Revisa si tienes tu Membresía!!!</h1>
        <form action="revisar.jsp" method="post">
            <p><label>Usuario:</label> <input name="username" type="text" required></p>
            <p><label>Contraseña: </label><input name="password" type="password" required></p>
            <input type="submit" value="Consultar">
        </form>
    </body>
</html>
