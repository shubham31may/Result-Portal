<%@ page import="java.sql.*" %>
    <%
    Statement st;
    Connection con;
      try{
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/resultmanagment/student.accdb");
        String SR = request.getParameter("SR");
        st=con.createStatement();
        st.executeUpdate("UPDATE data2 SET isConfirm='TRUE' WHERE SR="+SR);
        st.close();
        con.close();
      }
      catch(Exception e)
      {
      out.println(e);
      }
      
      %>