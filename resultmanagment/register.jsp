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
        <center><h1 role="alert" style="color: green;">Student added successfull</h1>
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
    con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/resultmanagment/User-data.accdb");
    st=con.createStatement();
    s1=request.getParameter("Cname");
    s2=request.getParameter("Bname");
     s3=request.getParameter("Rnum");
     s4=request.getParameter("name");
     s5=request.getParameter("Fname");
    s6=request.getParameter("gen");

    String s="insert into data1(SR,Coursename,Branchname,Rollnumber,Name,Fathername,Gender) values('"+i+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')";
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