<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="i/backgrnd[2].gif" bgcolor=black text=magenta topmargin=0>
<form >
<center><h2><u>FEEDBACK</u></h2>
<a href="Home.jsp"><img src="i/home[1].gif" align="left" width=60 height=60></a>
<img src="i/designborder.gif" align="center"><br><br>
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
</script><br>
<pre>
UserId        :<input type=text name=t1 size=15><br>   
First Name    :<input type=text name=t2 size=15><br>
 Last Name    :<input type=text name=t3 size=15><br>
Sex     :<input type=radio name=r  value=male>M<input type=radio name=r value=female>F <br>
    E-MAIL    :<input type=text name=t5 size=15><br>
  Locality    :<input type=text name=t6 size=15><br>
   City    :<select  name=s1>
           <option value=Mumbai>           mumbai  
           <option value=Hydarabad>Hydrabad
           <option value=Bhopal>Bhopal
<option value=Lucknow>Lucknow</select><br>
    STATE    :<select  name=t1>
          <option value=Maharashtra>Maharashtra
          <option value=A.p.>A.P.
          <option value=M.P.>M.P.
          <option value=U.P.>U.P</select><br>
Country   :<select  name=t8>
          <option value=India>            India     
		  <option value=U.S.A>U.S.A
		  <option value=Canada>Canada
		  <option value=Jermany>Jermany</select><br>    
Are you satisfied?<br>           : <input type=radio name=r  value=Yes>Yes<input type=radio name=r value=No>No<br>
             suggestion  : <textarea Name="t9" Rows=4 Cols=20></textarea><br>
</pre>
<input type=submit value="send">
<input type=reset value="cancel">
</center>
</form>

</body>
</html>