<%-- 
    Document   : registraruser
    Created on : 29-06-2018, 23:18:32
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script language="javascript" type="text/javascript">
            function Cancelar(){
            alert("Registro cancelado por el usuario");
            location.href("index.jsp");
        }
        </script>
        <title>Registro Usuario y Clave</title>
    </head>
    <body>
        <h1>Ingrese sus datos</h1>
        <form action="ingresaruser.jsp" method="post">
            <p><label>Usuario:</label> <input name="username" type="text" required></p>
            <p><label>Contraseña: </label><input name="password" type="password" required></p>
            <p><label>Reingrese contraseña: </label><input name="password2"  type="password"  required></p>
            <p><input type="submit" value="Siguiente --->">   <button><a href="index.jsp" onclick="Cancelar()"style="text-decoration: none; color: black;">Cancelar registro</a></button></p>
        </form>
        
    </body>
</html>
