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
        <title>contact Page</title>
    </head>
    
    <body>
        <%
            String n=request.getParameter("name");
            String m=request.getParameter("email");
            String ps=request.getParameter("phno");
            String reps=request.getParameter("message");
            
            String v="INSERT INTO shahu (sno,name,email,phno,message) values (sno,'"+n+"','"+m+"','"+ps+"','"+reps+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection ob=DriverManager.getConnection("jdbc:mysql://localhost:3306/cafe","root","");
            Statement st=ob.createStatement();
            int i=st.executeUpdate(v);
            
            if(i>0){
            %>
            <script>
                alert("THANKS FOR COMING!!!!!");
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
