<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@page import="java.sql.*" %>
    <% ResultSet rs=null,rs1=null; %>
<% try{

		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourist","root","root");
		String Source;
		Statement stmt=con.createStatement();
		Statement s1=con.createStatement();
		rs=stmt.executeQuery("select * from trip1");
		rs1=s1.executeQuery("select * from trip1");
		
		
							%> 		
  		
  		<table border="0" width="55px" cellpadding="0" cellspacing="0" align="center"style="position: fixed;right:310px;top:160px;">
  		<tr>
            <td height="50" valign="top">
  		<div class="div_border">
			<form action="Home" method="post">
					
					<table >
						
						<tr>
							<td class="pageSubheader" style="padding-right:10px ">
								 Source:
								 
								 <br><br>
								 
							</td>
							<td>
							<select name="Source">
							<% while(rs.next()){ %>
							<option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
							</option>
							<% } %>
								</select>
								<br><br>
							</td>
							
						</tr>
						
						<tr>
						
							<td class="pageSubheader" style="padding-right:10px ">
							Destination:
							<br><br>
							</td>
							<td>
					
							<select name="Destination" multiple="multiple" size="6" >
						 
							
							<% 
							while(rs1.next()){ %>
							<option value="<%= rs1.getString(2) %>"><%= rs1.getString(2) %>
							</option>
							<% } %>
							
								</select>
								<br><br>
							</td>
						</tr>
						<tr>
							
							<td>
								<input style="position: relative;right: 10px;" type="radio" name="radio1" value="Time"/>
								<br><br>
							</td>
							<td class="pageSubheader" style="padding-right:30px;position: relative;right:120px; ">
								 Time
								 <br><br>
							</td>
							<td>
								<input style="position: relative;right: 120px;" type="radio" name="radio1" value="Cost"/>
								<br><br>
							</td>
							<td class="pageSubheader" style="padding-right:10px;position: relative;right:80px; ">
								 Cost
								 <br><br>
							</td>
							
						</tr>
						
						
						
						<tr>
							<td height="13"></td>
						</tr>
						<tr>
							<td height="13"></td>
						</tr>
						
						<tr>
							<td></td>
							<td>
								<!--<a href="javascript:saveUser();"><img src="image/save.gif" alt="Save" width="88" height="16" border="0" align="absmiddle" />
								</a>
								--><input type="submit" value="Submit" style=" float:left; background-color:#115577;color:#FFFFFF; border-radius:5px;"/>
								 &nbsp;&nbsp;&nbsp;&nbsp; <input style=" background-color:#115577;color:#FFFFFF; border-radius:5px;" type="reset" value="Reset"/>
							</td>
						</tr>
					</table>
					</form>
		</div>
		</td>
		</tr>
	 </table>
	 <%} catch (Exception e) {
			// TODO: handle exception
		}%>
</body>
</html>