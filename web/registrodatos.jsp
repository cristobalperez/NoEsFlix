<%-- 
    Document   : registrodatos
    Created on : 30-06-2018, 1:36:41
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
            location.href("registrauser.jsp");
        }
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            out.print("<h1>"+s.getAttribute("usuario")+"</h1>");
            %>
        <h1>Ingresa tus datos</h1>
        <form action="ingresardatos.jsp" method="POST">
            <p>Nombre:<input name="name" type="text" size="40%" required></p>
            <p>Apellido:<input name="lastname" type="text" size="40%" required></p>
            <p>Fecha de nacimiento:<input name="fechanac" type="date" size="40%" required></p>
            <p>Sexo<br> F: <input name="Sexo" type="radio" value="Femenino"> 
             M: <input name="Sexo" type="radio" value="Masculino"required/></p>
            <p>E-mail: <input pattern="/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])/" name="Correo" type="email" required/></p> 
            <input name="btnRegistrar" type="submit" value="Registrar"> <button><a href="deleteuser.jsp">Cancelar</a></button>
        </form>
        
    </body>
</html>
