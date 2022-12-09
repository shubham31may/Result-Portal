<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<div>
    <header>
        <center><h1 role="alert" style="color: green;">Marks added successfull</h1>
    </header>
</div>    
    <div>
        <center><a href="adminHome.jsp" role="button" class="a1">Back</a>
    </div>
<body>
   
   



 
<%@ page import="java.sql.*" %>
<%
    String s1,s2,s3,s4,s5,s6;
    int i=0;
    i++;
    Statement st;
    Connection con;
    i=0;
    try
    {
    Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
    con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/resultmanagment/student.accdb");
    st=con.createStatement();
    s1=request.getParameter("Rnum");
    s2=request.getParameter("num1");
     s3=request.getParameter("num2");
     s4=request.getParameter("num3");
     s5=request.getParameter("num4");
    s6=request.getParameter("num5");

    String s="insert into student(SR,Rollno,Maths,Physics,Chemistry,Biology,English) values('"+i+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')";
    st.executeUpdate(s);
    //out.println("<h1>Your Registration is successfull</h1>");
    st.close();
    con.close();
    }
    catch(Exception e)
    {
    out.println(e);
    }

%>



   

</body>
</html>