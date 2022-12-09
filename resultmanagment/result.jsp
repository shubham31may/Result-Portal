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
   
    <th>Roll Number</th>
    <th>Maths</th>
    <th>Physics</th>
    <th>Chemistry</th>
    <th>Biology</th>
    <th>English</th>
  </tr>


<%@ page import="java.sql.*" %>
<%
String s1,s3, s111, s4, s5, s6, s7, s8;
Statement st;
Connection con;
int i;
i=0;
try
{
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
con=DriverManager.getConnection("jdbc:ucanaccess://C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/resultmanagment/student.accdb");
st=con.createStatement();
s111=request.getParameter("Rollno");

String s="select * from student";
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
i++;
s1=rs.getString("Rollno");

if(s1.equals(s111)){
	

	s3=rs.getString("Rollno");
	s4=rs.getString("Maths");
	s5=rs.getString("Physics");
	s6=rs.getString("Chemistry");
	s7=rs.getString("Biology");
	s8=rs.getString("English");
	




	
%>
     
<tr>
<td><%=s3%></td>
<td><%=s4%></td>
<td><%=s5%></td>
<td><%=s6%></td>
<td><%=s7%></td>
<td><%=s8%></td>
</tr>
<%	
	
}
else
out.println("");
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
<center><a href="student.html">Back</a></center>

