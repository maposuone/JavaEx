<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<html>
<head>
<title>���i�ڍ׉��</title>
</head>
<body>
<div align="center" class="body">
<h2>���i�ڍ׉��</h2>
<table>
	<tr>
		<td><img src="img/${item.pictureUrl}"></td>
		<td align="center">
		<table>
			<tr height="50">
				<td width="80">���i��</td>
				<td width="160">${item.itemName}</td>
			</tr>
			<tr height="50">
				<td width="80">���i</td>
				<td width="160">${item.price}�~</td>
			</tr>
			<tr height="50">
				<td width="80">�R�����g</td>
				<td width="160">${item.description}</td>
			</tr>
			<tr>
				<td colspan="2" align="center" width="240"><a href="index.html">���ꗗ�ɖ߂�</a></td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</div>
</body>
</html>