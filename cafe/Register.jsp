<%-- 
    Document   : Register
    Created on : Sep 2, 2023, 2:14:00 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    
    <body>
        <%
            String n=request.getParameter("a");
            String m=request.getParameter("b");
            String ps=request.getParameter("c");
            String reps=request.getParameter("d");
            
            String v="INSERT INTO ashlin (sno,a,b,c,d) values (sno,'"+n+"','"+m+"','"+ps+"','"+reps+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafe","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(v);
            
            if(i>0){
            %>
            <script>
                alert("Regestration is successful!!!!!!!!!!!");
                window.location="Login.jsp";
            </script>
            <%
                }
else{
%>
    <script>alert("something is wrong");
    window.location="signin.jsp";
</script>
<%
    }
%>
         
    

    </body>
</html>
