<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<c:forEach items="${sessionScope.mygrade}" var="dataAll" varStatus="status">
		<c:if test="${dataAll.semester == param.msg}">
			<tr>
				<td><input type="text" name="name${status.index}" maxlength="50"
					style="width: 300px" value='${dataAll.subject}' readonly></td>
				<td><input type="text" name="credit${status.index}" maxlength="4"
					style="width: 150px" value='${dataAll.credit}'></td>
				<td><input type="text" name="grade${status.index}" maxlength="4"
					style="width: 150px" value='${dataAll.grade}'></td>
			</tr>
		</c:if>
	</c:forEach>
