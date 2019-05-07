<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<label><bean:message key="user.name"/></label>
<p><bean:write name="user" property="name"/></p>
<label><bean:message key="user.age"/></label>
<p></p><bean:write name="user" property="age" format="#####"/>
<label><bean:message key="user.sex"/></label>
<p><bean:write name="user" property="sex"/></p>
<label><bean:message key="user.about"/></label>
<p><bean:write name="user" property="about"/></p>
<label><bean:message key="user.job"/></label>
<p><bean:write name="user" property="job"/></p>
</body>
</html>