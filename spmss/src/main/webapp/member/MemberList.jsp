<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
	<jsp:include page="/Header.jsp" />
	<h1>회원목록</h1>
	<p>
		<a href='add'>신규 회원</a>
	</p>	
	<c:forEach var="member" items="${members}">
	
		${member.no},
		<a href='<c:url value="update?no=${member.no}"/>'>${member.name}</a>,
		${member.email},
		${member.createdDate}
		<a href='<c:url value="delete"><c:param name="no" value="${member.no}"/></c:url>'>[삭제]</a>
		<br>
		

	</c:forEach>
	<c:import url="/Tail.jsp"/>
</body>
</html>