<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<meta charset="utf-8" />
<title>Insert title here</title>
</head>
<body>
	<form:form action="/Relation/add/input" method="post"
		modelAttribute="AccountModel">
		
			<c:forEach items="${AccountModel.accounts}" varStatus="status">
				姓名:<form:input path="accounts[${status.index}].rsName" name="rsName"
					 type="text"/>
				金额:<form:input path="accounts[${status.index}].operateamount" name="operateamount"
					 type="text"/>
			</c:forEach>
		
		<input type="submit" value="save">
	</form:form>
</body>
</html>