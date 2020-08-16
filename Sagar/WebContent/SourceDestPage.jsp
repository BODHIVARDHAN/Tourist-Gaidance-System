<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Source And Destination Page</title>
</head>
<body background="Photo/DSC01240.JPG">
<%@ page import="java.sql.*" %>
<%
int Cost=0;
int Time=0;
boolean status=false;
ResultSet rs;
String[] desc=new String[6];
String src=request.getParameter("Source");
desc=request.getParameterValues("Destination");  
String  sort=request.getParameter("radio1");
out.print(src+desc);
out.print(sort);


try 
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourist","root","root");
	if(sort.equals("Cost"))
	{
		
		//RequestDispatcher rd=request.getRequestDispatcher("SourceDestPage.jsp");
		//rd.include(request, response);
		
		Statement st1=c.createStatement();
		String q="select * from sourcedest where Cost=(select min(Cost) from sourcedest where  Source='"+src+"' and Destination='"+desc+"' ) and Source='"+src+"' and Destination='"+desc+"'";
		rs=st1.executeQuery(q);
		out.print("<br><br><br><br><br><table align='center' border='2'><tbody><tr><th>Source</th><th>Destination</th><th>Time</th><th>Cost</th></tr>");
		
		while(rs.next())
		{
			
			out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td>"+rs.getInt(4)+"</td></tr>");
		}
		
		
		}
	
		
	
	
	else
		if(sort.equals("Time"))
		{
			out.print("<table align='center' border='2'><tbody><tr><th>Source</th><th>Destination</th><th>Time</th><th>Cost</th></tr>");
			Statement st1=c.createStatement();
			
			String q="select * from sourcedest where Time=(select min(Time) from sourcedest where  Source='"+src+"' and Destination='"+desc+"' ) and Source='"+src+"' and Destination='"+desc+"'";
			rs=st1.executeQuery(q);
			while(rs.next())
			{
				out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td>"+rs.getInt(4)+"</td></tr>");
			}
			}
		
		else System.out.println("nothing");

	
} catch (Exception e) {
	
	e.printStackTrace();
}
%>
</body>
</html>