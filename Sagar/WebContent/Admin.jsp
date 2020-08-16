<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN</title>
</head>
<body background="i/backgrnd[2].gif"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<a href="Home.jsp"><img src="i/Home.png" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="AboutUs.jsp"><img src="i/About.png" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Place.jsp"><img src="i/Place.png" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Admin.jsp"><img src="i/AdminLogin.jpg" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="ContactUs.jsp"><img src="i/ContactUs.jpg" height="50" width="150" border="2"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="FEEDBACK.jsp">FEEDBACK</a><br>
</body>>

<fieldset>
<legend><font color="red" size="6" face="monotype Corsiva">Tourist Points Photo</font></legend>
<marquee behavior="alternate" direction="right" scrollamount="4">
<img  src="i/img (20).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (23).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (21).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (24).jpg" name="Nature" height="250" width="240" border="1">
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
<img  src="i/img (35).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (37).jpg" name="Nature" height="250" width="240" border="1">
<img  src="i/img (20).jpg" name="Nature" height="250" width="240" border="1">

</marquee>
</fieldset>
<br>


<script language="JavaScript">
function validate()
{
	if(document.form.uname.value=="" || document.form.password.value=="")
		{
		alert("Please Enter LoginId and Password");
		return false;
		}
	document.form.action="AdminLogin.jsp";
	document.form.submit();
}
</script>
<form name="form">

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

<CENTER>
<fieldset>
<font face="monotype corsiva" size="5" color="black" >-: <u><b>
Admin Login</b></u> :-</font><br><br>
<table border="2" bordercolor="orange" cellspacing="2" cellpadding="2">
<table border="2" bordercolor="orange" cellspacing="2" cellpadding="2">
<tr>  <td bgcolor="black"><font face="monotype corsiva" size="5" color="white">&nbsp;
Login id </font></td>
      <td bgcolor="black"><font face="monotype corsiva" size="5" color="orange">
             <input type="text" name="uname" size="15" height="100"></font></td></tr>
<tr>  <td bgcolor="black"><font face="monotype corsiva" size="5" color="white">&nbsp;
Password&nbsp;</font></td>
      <td bgcolor="black"><font face="monotype corsiva" size="5" color="orange">
      <input type="password" name="password" size="15" height="100"></font></td></tr>
</table>
<input type="submit" value="Login" onclick="validate();">
</table>
</fieldset>
</CENTER>
</body>
</html>