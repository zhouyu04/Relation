<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<meta charset="utf-8" />
<title>添加页</title>
<content tag="customCss">
<style>
.hrline {
	display: inline-block;
	width: 30px;
	margin: 0;
	background-color: black;
	color: black;
	height: 1px;
	margin-bottom: 5px;
	margin-right: 8px;
}

table th {
	text-align: center;
}

table td {
	text-align: center;
}

form.form-horizontal label {
	width: 100px;
}

form.form-horizontal input, select {
	width: 60%;
	height: 26px;
}

form.form-horizontal div {
	padding-top: 10px;
}
</style>
</content>
</head>
<body>
	<script>
		function submit() {
			alert(1);
			$.ajax({
				url : '${ctx}/test.do',
				type : 'POST',
				data : $('form').serialize(),
				dataType : 'json',
				success : function(data) {
					alert("成功！");
				}
			});
		}
	</script>
	<div class="form-group">
		<label for="descript">事件描述:</label> <input type="text"
			class="form-control" id="descript">
	</div>
	
	<div class="col-xs-2">
    	<a id="export"
         href="/Relation/add/input"
         class="btn btn-primary btn-block">添加
    	</a>               
    </div>

</body>
</html>