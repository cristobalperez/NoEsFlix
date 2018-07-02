<%-- 
    Document   : deleteuser
    Created on : 30-06-2018, 2:07:28
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              HttpSession s = request.getSession();
                    Connection conn =null; 
        try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/NoEsFlix","root","");
                String query="DELETE FROM usuario WHERE username='"+s.getAttribute("usuario")+"' and password='"+s.getAttribute("clave")+"';";
                PreparedStatement st= conn.prepareStatement(query);
                st.executeUpdate();
                conn.close();
               %>
                       <script language="javascript" type="text/javascript">
            alert("Registro cancelado por el usuario");
            location.href("index.jsp");
        </script>
               <%
            } catch (SQLException ex) {
                throw new SQLException (ex);
            }
        

        
        %>
    </body>
</html>
