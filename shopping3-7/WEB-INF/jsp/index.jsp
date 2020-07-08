<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ include file="/WEB-INF/jsp/header.jsp"%>
<html>
<head>
<title><spring:message code="itemMenu.title" /></title>
</head>
<body>
<form:form method="POST" action="search.html">
	<div align="center" class="body">
	<h2><spring:message code="itemMenu.title" /></h2>
	���i������<input type="text" name="itemName" /><input type="submit"
		value="����" /><a href="create.html">���i�o�^</a>
	<table border="1">
		<tr class="header">
			<th align="center" width="80">���iID</th>
			<th align="center" width="320">���i��</th>
			<th align="center" width="100">���i</th>
			<th align="center" width="80">�ҏW</th>
			<th align="center" width="80">�폜</th>
		</tr>
		<c:forEach items="${itemList}" var="item">
			<tr class="record">
				<td align="center">${item.itemId}</td>
				<td align="left">${item.itemName}</td>
				<td align="right"><f:formatNumber type="CURRENCY"
					currencySymbol="" value="${item.price}" minFractionDigits="0" />�~</td>
				<td align="center"><a
					href="<c:url value="edit.html">
				<c:param name="itemId" value="${item.itemId}"></c:param>
				</c:url>">���i�ҏW</a></td>
				<td align="center"><a
					href="<c:url value="confirm.html">
				<c:param name="itemId" value="${item.itemId}"></c:param>
				</c:url>">���i�폜</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="../j_spring_security_logout">�����O�A�E�g����</a></div>
</form:form>
</body>
</html>