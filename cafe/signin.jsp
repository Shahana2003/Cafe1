<%-- 
    Document   : signin
    Created on : Sep 2, 2023, 3:03:10 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String m=request.getParameter("b");
         String ps=request.getParameter("c");
         String w="select * from ashlin where b='"+m+"' and c='"+ps+"'";
         Class.forName("com.mysql.jdbc.Driver");
         Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafe","root","");
         Statement st=ob.createStatement();
         ResultSet i=st.executeQuery(w);
            if(i.next()){
            %>
            <script>
                alert("Login successful!!!!!!!!!");
                window.location="index.html";
            </script> 
            <%
                }
else{
%>
<script>
    alert("failed to login");
    window.location="login.jsp";
    </script>
    <%
}
%>
    </body>
</html>
