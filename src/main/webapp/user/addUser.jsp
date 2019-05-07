<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p style="color: red">
		<html:errors />
	</p>
	<html:form action="/view-user.do" method="post">
		<html:messages id="user_name" property="error_user_name">
			<p style="color: red">
				<bean:write name="user_name" />
			</p>
		</html:messages>
		<label>Name</label>
		<html:text property="name" name="user"></html:text>
		<br>
		<html:messages id="user_age" property="error_user_age">
			<p style="color: red">
				<bean:write name="user_age" />
			</p>
		</html:messages>
		<label>Age</label>
		<html:text property="age" name="user"></html:text>
		<br>
		<label>Sex</label>
		<html:radio property="sex" value="Male" name="user">Male</html:radio>
		<html:radio property="sex" value="Female" name="user">Female</html:radio>
		<br>
		<label>About</label>
		<html:textarea property="about" name="user">About yourself</html:textarea>
		<br>
		<label>Job</label>
		<html:select property="job" name="user">
			<html:option value="IT">IT</html:option>
			<html:option value="Tester">Tester</html:option>
			<html:option value="BA">BA</html:option>
			<html:option value="CTO">CTO</html:option>
		</html:select>
		<html:submit>Them nguoi dung</html:submit>
	</html:form>
</body>
</html>