<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${sessionScope.mytable}" var="dataAll" varStatus="status">
	<c:if test="${dataAll.semester == param.msg}">
		<tr>
			<td><select name="grade${status.index}"><option value="A+"
						selected="selected">A+</option>
					<option value="A0">A0</option>
					<option value="B+">B+</option>
					<option value="B0">B0</option>
					<option value="C+">C+</option>
					<option value="C0">C0</option>
					<option value="D+">D+</option>
					<option value="D0">D0</option>
					<option value="F">F</option>
					<option value="Fail">F</option>
					<option value="Pass">P</option></select></td>
			<td><input type="text" name="credit${status.index}" maxlength="4" value="${dataAll.credit}"></td>
			<td><input type="text" name="name${status.index}" maxlength="50" value="${dataAll.subject}"></td>
		</tr>
	</c:if>
</c:forEach>