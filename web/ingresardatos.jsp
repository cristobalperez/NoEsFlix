<%-- 
    Document   : ingresardatos
    Created on : 30-06-2018, 2:33:04
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          
            HttpSession s = request.getSession();
            Connection conn=null, conn2= null;
            Statement st=null, st2=null;
        String name= request.getParameter("name");
        String lname= request.getParameter("lastname");
        String fecha= request.getParameter("fechanac");
        String sexo= request.getParameter("Sexo");
        String correo= request.getParameter("Correo");
        String sql="SELECT * FROM usuario WHERE username='"+s.getAttribute("usuario")+"';";
        
 try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/noesflix","root","");
            st= conn.createStatement();
         ResultSet rs= st.executeQuery(sql);
         while(rs.next()){
              String id = rs.getString("id");
              s.setAttribute("iduser", id);
              if(id!=null | id!=""){
                   Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/NoEsFlix","root","" );
                    st2=conn2.createStatement();
                   st2.executeUpdate("INSERT INTO registro (name, lastname, fecha, sexo, email, id_user) values('"+name+"', '"+lname+"', '"+fecha+"', '"+sexo+"', '"+correo+"',"+id+");");
             conn2.close();
             response.sendRedirect("registramembresia.jsp");
              }
         }
         conn.close();

                              } catch (SQLException e) {
throw new SQLException (e); 
                }
             %>
    </body>
</html>
