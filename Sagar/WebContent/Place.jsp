<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
</script><br><br>
COUNTRY   :        <select  name=t8>
          <option value=India>India     
		  </select><br><br>
STATE     :                <select  name=t1>
          <option value=Maharashtra>MAHARASHTRA
          </select><br><br>
<script language="javascript">
function reg(f1)
{	
	window.open("Histry.jsp");
}
</script>
<center><br><br>
<form name="f1"> 
<input type ="submit" value="SUBMIT" name="b1" onClick="reg(f1)">
</form>
</center>
<br>
</html>