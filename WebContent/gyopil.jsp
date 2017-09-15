<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${sessionScope.gyopil}" var="dataAll">

		<tr>
			<th><input type="button" value="¼±ÅÃ" id="table_bt" onclick='upload("${dataAll.lectime}","${dataAll.subject}","${dataAll.professor}","${dataAll.classroom}")'/></th>
			<td>${dataAll.grade}</td>
			<td>${dataAll.division}</td>
			<td>${dataAll.idnum}</td>
			<td>${dataAll.major}</td>
			<td>${dataAll.subject}</td>
			<td>${dataAll.credit}</td>
			<td>${dataAll.hours}</td>
			<td>${dataAll.classnum}</td>
			<td>${dataAll.professor}</td>
			<td>${dataAll.lectime}</td>
			<td>${dataAll.classroom}</td>
			<td></td>
			<td>${dataAll.note}</td>
		</tr>

</c:forEach>