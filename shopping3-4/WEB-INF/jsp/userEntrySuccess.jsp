<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<html>
<head>
<title>���[�U�o�^�������</title>
</head>
<body>
<div align="center" class="body">
<h2>���[�U�o�^�������</h2>
<b><font color="red">���[�U�o�^���������܂����B</font></b><br>
<table>
	<tr height="40px">
		<td>���[�UID</td>
		<td>${user.userId}</td>
	</tr>
	<tr height="40px">
		<td>�p�X���[�h</td>
		<td>${user.password}</td>
	</tr>
	<tr height="40px">
		<td>���O</td>
		<td>${user.userName}</td>
	</tr>
	<tr height="40px">
		<td>�X�֔ԍ�</td>
		<td>${user.postCode}</td>
	</tr>
	<tr height="40px">
		<td>�Z��</td>
		<td>${user.address}</td>
	</tr>
	<tr height="40px">
		<td>E-MAIL</td>
		<td>${user.email}</td>
	</tr>
	<tr height="40px">
		<td>���d��</td>
		<td>${user.job}</td>
	</tr>
	<tr height="40px">
		<td>���N����</td>
		<td><f:formatDate value="${user.birthDay}" pattern="yyyy�NMM��dd��" /></td>
	</tr>
</table>
</div>
</body>
</html>