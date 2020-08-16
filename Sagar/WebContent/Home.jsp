<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tourist Guidance</title>
</head>

<body background="i/backgrnd[2].gif"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="Home.jsp"><img src="i/Home.png" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AboutUs.jsp"><img src="i/About.png" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Place.jsp"><img src="i/Place.png" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Admin.jsp"><img src="i/AdminLogin.jpg" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="ContactUs.jsp"><img src="i/ContactUs.jpg" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="FEEDBACK.jsp">FEEDBACK</a><br>
</body>

<fieldset>
<legend><font color="red" size="6" face="monotype Corsiva">Tourist Points Photo</font></legend>
<marquee behavior="alternate" direction="right"" scrollamount="4">
<img  src="i/img (13).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (15).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (20).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (23).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (21).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/Bangkok, Thailand.jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (35).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (37).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (20).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (24).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/Budha.jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/CAQ9C3GZ.jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (22).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (25).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (26).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (27).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (28).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/tiranga.gif" name="Nature" height="250" width="240" border="1">
<img  src="i/img (31).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (32).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (33).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (34).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (16).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (17).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (31).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (32).jpg" name="Nature" height="250" width="240" border="1">
</marquee>
</fieldset>
<br>
<center>
<script type="text/javascript">
<!--
	var currentDate = new Date()
	var day = currentDate.getDate()
	var month = currentDate.getMonth() + 1
	var year = currentDate.getFullYear()
	document.write("<b>" + day + "/" + month + "/" + year + "</b>")
//-->
</script>


<script type="text/javascript">
<!--
	var currentTime = new Date()
	var hours = currentTime.getHours()
	var minutes = currentTime.getMinutes()

	if (minutes < 10)
	minutes = "0" + minutes

	var suffix = "AM";
	if (hours >= 12) {
	suffix = "PM";
	hours = hours - 12;
	}
	if (hours == 0) {
	hours = 12;
	}

	document.write("<b>" + hours + ":" + minutes + " " + suffix + "</b>")
//-->
</script>
</center>
<br>


<center><img src="i/TouristGuidance.jpg" height="60" width="800" onmouseover="this.src='i/TouristGuidance1.jpg'" onmouseout="this.src='i/TouristGuidance.jpg'" >
</center>
<br>
<br>
<fieldset>
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
  		
  		<table border="0" align="center">
  		<tr>
            <td height="50" valign="top">
  		<div class="div_border">
			<form action="Home" method="post">
					
					<table >
						
						<tr>
							<td class="pageSubheader" style="padding-right:10px ">
								<font color="red" size="5" face="monotype corsiva"><b><u> Source:</u></b></font>
								 
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
							<font color="red" size="5" face="monotype corsiva"><b><u>Destination:</u></b></font>
							<br><br>
							</td>
							<td>
					
							<select name="Destination"  size="1" >
						 
							
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
 <font color="red" size="5" face="monotype corsiva"><b><u> Cost</u></b></font><input type="radio" value="Cost" name="radio1"> </td>
  <td>
  <font color="red" size="5" face="monotype corsiva"><b><u>Time</u></b></font><input type="radio" value="Time" name="radio1"></td>
  </tr>
						<tr>
						
							<td>
								<input type="submit" value="Submit"></td>
								<td> <input type="reset" value="Reset"/>
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
</fieldset>

</body>
</html>