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
    con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/result managment/student.accdb");
    st=con.createStatement();
    s1=request.getParameter("name");
    s2=request.getParameter("pass1");

    String s="insert into data1(SR,course,branch,rollNo,name,fathername,gender) values('"+i+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')";
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
