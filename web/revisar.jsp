<%-- 
    Document   : revisar
    Created on : 29-06-2018, 22:18:53
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                    <%
                        
          String user=request.getParameter("username");
          String pass=request.getParameter("password");
          
            String sql1="SELECT * FROM usuario WHERE username='"+user+"' and password='"+pass+"';";
           
             Connection conn=null;
             Statement st = null;
            try {
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/noesflix","root","");
             st= conn.createStatement();
                 ResultSet rs1=st.executeQuery(sql1);
                if(rs1.next()){
                    %>
                    <script language="javascript" type="text/javascript">
                        alert ("Felicidades, usted posee una membresía en NoEsFlix");
                        var url = "index.jsp";
                        location.href=url;
                        </script>
                        
            <%
                }else{
%>
            <script language="javascript" type="text/javascript">
                       function preguntar()
                       {
                           if(!confirm("Lo sentimos, no posee una membresía en NoEsFlix, para registrarse presione ACEPTAR, si no lo desea presione CANCELAR")) history.go(-1); else location.href("registraruser.jsp");
                           }
                       document.writeln(preguntar());
                        </script>
<%
}
                rs1.close();
conn.close();
st.close();
                } catch (SQLException ex) {
st.close();
                conn.close();
                    throw new SQLException (ex);
  
                }
                
            %>
    </body>
</html>
