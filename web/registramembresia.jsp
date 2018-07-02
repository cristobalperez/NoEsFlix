<%-- 
    Document   : registramembresia
    Created on : 30-06-2018, 2:01:39
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                        <script language="javascript" type="text/javascript">
                                    
            function Cancelar(){
            alert("Registro cancelado por el usuario");
            location.href("deleteregistro.jsp");
        }
        </script>
        <title>JSP Page</title>
    </head>
    <body>
                <%
            HttpSession s = request.getSession();
            out.print("<h1>"+s.getAttribute("usuario")+"</h1>");
            %>
            <form action="" method="">
           <label>Tipo de Membresía: </label>
                  <select name="Membresía">  
            <option value="">- Seleccionar -</option>
            <%
          
            String sql1="SELECT * FROM planes;";
           
             Connection conn=null;
             Statement st = null;
            try {
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/noesflix","root","");
             st= conn.createStatement();
                 ResultSet rs1=st.executeQuery(sql1);
                while(rs1.next()){
                    %>
                    <option value="<%= rs1.getString("id")%>"><%=rs1.getString("nombre")%></option>
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
            </select> 
            <button onclick="Cancelar()">Cancelar</button>
            </form>
            
    </body>
</html>
