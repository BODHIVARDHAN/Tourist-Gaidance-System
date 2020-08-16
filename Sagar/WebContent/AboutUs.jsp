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
<br><br>
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

<table>
<tr>
<td>
<img src="i/TouristGuidance1.jpg" height="300" width="300" onmouseover="this.src='i/img (49).jpg'" onmouseout="this.src='i/BODHI.jpg'" >
</td>
<td>       <font color="blue" size="6" face="monotype Corsiva"> 
   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This is the mini Project which establishes in 2014 in Mind Script Technology(Pune). <br>
             This site is useful for those people who don't know about Tourist sites and How to goes in various Picnic spots.</font>
</td>
<td>
        <img src="i/TouristGuidance.jpg" height="300" width="300" onmouseover="this.src='i/BODHI.jpg'" onmouseout="this.src='i/img (49).jpg'" >
</td>
</tr>
</table>


</html>