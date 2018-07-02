<%-- 
    Document   : ingresaruser
    Created on : 30-06-2018, 0:28:00
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
        String user= request.getParameter("username");
        String pass1 = request.getParameter("password");
        String pass2 = request.getParameter("password2");
if(pass1.equals(pass2)){
                    Statement st=null, st2=null;
            Connection conn=null, conn2=null;


            String query1 = "INSERT INTO usuario (username, password) values('"+user+"','"+pass1+"');";
            try {
                
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/NoEsFlix","root","" );
                    st=conn.createStatement();
                   ResultSet rs= st.executeQuery("SELECT * FROM usuario WHERE username='"+user+"';");
                   if(rs.next()==true){
                       %>
        <script language="javascript" type="text/javascript">
            alert("El usuario ingresado ya existe, por favor intente con otro");
            location.href("registraruser.jsp");

        </script>
        <%
            conn.close();
                   }else{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/NoEsFlix","root","" );
                    st2=conn2.createStatement();
st2.executeUpdate(query1);
                    response.sendRedirect("registrodatos.jsp");
                    s.setAttribute("usuario", user);
                    s.setAttribute("clave", pass1);
                    conn2.close();
}
                } catch (SQLException ex) {
                response.sendRedirect("registraruser.jsp");
                conn.close();
                throw new SQLException (ex);
                }

        }else{
%>
        <script language="javascript" type="text/javascript">
            alert("Las contraseñas no son iguales, por favor ingreselas nuevamente");
            location.href("registraruser.jsp");

        </script>
        <%
}
        
        
        %>
    </body>
</html>
