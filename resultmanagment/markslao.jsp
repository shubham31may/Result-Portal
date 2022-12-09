<!DOCTYPE html>
<html>
<head>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body style="background-color:powderblue;">
  
<table class="center">
  <caption><h1>Your Marks</h1></caption>
<hr class="new1">
  <tr>
   <th>SR</th>
    <th>Roll Number</th>
    <th>Maths</th>
    <th>Physics</th>
    <th>Chemistry</th>
    <th>Biology</th>
    <th>English</th>
 <th>Edit</th>
    <th>Delete</th>
  </tr>


<%@ page import="java.sql.*" %>
<%
String s1,s2,s3,s4,s5,s6,s7;
Statement st;
Connection con;
int i;
i=0;
try
{
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/resultmanagment/student.accdb");
st=con.createStatement();
String s="select * from student";
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
i++;
s1=rs.getString("SR");
s2=rs.getString("Rollno");
s3=rs.getString("Maths");
s4=rs.getString("Physics");
s5=rs.getString("Chemistry");
s6=rs.getString("Biology");
s7=rs.getString("English");
	




	
%>
     
<tr>
<td><%=s1%></td>
<td><%=s2%></td>
<td><%=s3%></td>
<td><%=s4%></td>
<td><%=s5%></td>
<td><%=s6%></td>
<td><%=s7%></td>
<td><a href="edit.jsp">Edit</a></td>
<td><a href="delete.jsp">Delete</a></td>
</tr>
<%	
	
}
st.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</table>

</body>
</html><br><br>
<center><a href="adminHome.jsp">Back</a></center>
<br><br><br><br><br>
<br><br><br><br><br>

 


  <center>  <h3 style="background-color:grey;">All Right Reserved</h3>

