<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>
<html>
<head>
<title><spring:message code="itemAdd.title" /></title>
</head>
<body>
<form:form modelAttribute="item" action="register.html"
	enctype="multipart/form-data">
	<div align="center" class="body">
	<h2><font color="green"><spring:message
		code="itemAdd.title" /></font></h2>
	<table>
		<tr height="40px">
			<td>���i��</td>
			<td><form:input path="itemName" cssClass="itemName"
				maxlength="20" /></td>
			<td><font color="red"><form:errors path="itemName" /></font></td>
		</tr>
		<tr height="40px">
			<td>���i</td>
			<td><form:input path="price" cssClass="price" maxlength="6" />&nbsp;�~
			</td>
			<td><font color="red"><form:errors path="price" /></font></td>
		</tr>
		<tr height="40px">
			<td>�t�@�C��</td>
			<td><input type="file" name="picture" /></td>
			<td></td>
		</tr>
		<tr height="40px">
			<td>�T�v</td>
			<td><form:textarea path="description" cssClass="description" />
			</td>
			<td><font color="red"><form:errors path="description" /></font></td>
		</tr>
	</table>
	<br>
	<input type="submit" value="�o�^" /> <input type="reset" value="���Z�b�g" /><br>
	<br>
	<a href="index.html">�߂�</a></div>
</form:form>
</body>
</html>