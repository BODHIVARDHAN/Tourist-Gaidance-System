<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
<title>File Uploading Form</title>
</head>
<body background="Photo/DSC01240.JPG">
<h3><font color="red" size="7" face="Monotype Corsiva">File Upload:</font></h3>
<font color="blue" size="7" face="Monotype Corsiv">Select a file to upload:</font> <br />
<form action="FileUplaod.jsp" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50" />
<br>
<input type="submit" value="Upload File" />
</form>
</body>
</html>
