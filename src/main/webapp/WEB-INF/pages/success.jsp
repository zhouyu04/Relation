<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script type="text/ecmascript" src="/Relation/plugins/jQuery/jquery-2.2.3.min.js"></script> 
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="/Relation/plugins/jqGrid-master/js/i18n/grid.locale-en.js"></script>
    <!-- This is the Javascript file of jqGrid -->   
    <script type="text/ecmascript" src="/Relation/plugins/jqGrid-master/js/jquery.jqGrid.min.js"></script>
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="/Relation/plugins/jqGrid-master/css/ui.jqgrid-bootstrap.css" />

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <meta charset="utf-8" />
    <title>jqGrid Loading Data - Virtual mode - paging with scrollbar</title>
</head>
<body>
	success!!!
	
	<div style="center">
    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
	</div>
	
	 <script type="text/javascript"> 
        $(document).ready(function () {
			
            $("#jqGrid").jqGrid({
                url: '/Relation/rs/account',
                mtype: "GET",
				styleUI : 'Bootstrap',
                datatype: "json",
                colModel: [
                    { label: '编号', name: 'reNum', key: true, width: 75 },
                    { label: '姓名', name: 'rsName', width: 150 },
                    { label: '余额', name: 'balance', width: 150 },
                    { label: '上次余额', name: 'lastBalance', width: 150 },
                    { label: '累计输入', name: 'accumulatIncrease', width: 150 },
                    { label: '累计数出', name: 'accumulatDecrease', width: 150 },
                    { label: '创建时间', name: 'createDate', width: 150 },
                    { label: '修改时间', name: 'modifyDate', width: 150 },
                    { label:'操作人', name: 'operater', width: 150 }
                ],
				viewrecords: true,
                height: 250,
                rowNum: 20,
                pager: "#jqGridPager"
            });
        });
 
   </script>
	</body>
</html>