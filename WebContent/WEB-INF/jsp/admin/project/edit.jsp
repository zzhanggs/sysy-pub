<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript">
	function checkDate(){
				var checkDate =  $('#pdate').attr("value");
				var pattern = new RegExp("^[0-9]{4}-[0-9]{2}-[0-9]{2}$");
				if(pattern.test(checkDate)){
					return true;
				}
				else{
					alert("日期格式不正确！");
					return false;
				}
			}
	</script>
<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
A:active,A:visited,A:link {
	COLOR: #0629FD;
	TEXT-DECORATION: none
}

A:hover {
	COLOR: #FF6600;
	TEXT-DECORATION: none
}

A.relatelink:active,A.relatelink:visited,A.relatelink:link { 
	color: white;
	TEXT-DECORATION: none
}

A.relatelink:hover {
	COLOR: #FF6600;
	TEXT-DECORATION: none
}

td {
	font-size: 12px;
	color: #003366;
	height:24px
}

.STYLE1 a{
	COLOR: white;
}
.STYLE1 A:active,.STYLE1 A:visited,.STYLE1 A:link {
	COLOR: white;
	TEXT-DECORATION: none
}
.STYLE1 a:hover{
	COLOR: red;
}
-->
</style>
</head>
<body>
<sf:form modelAttribute="projectInfo" method="post" action="${pageContext.request.contextPath}/admin/project/edit" onsubmit="return checkDate();"> 
<input type="hidden" name="id" value="${projectInfo.id }">
<div style="background-color:#353C44" width="100%" style="padding-top:10px"><span class="STYLE1">修改项目</span></div>
<table>
<tr>
  
  </tr>
	<tr>
		<td>项目编码</td>
		<td><sf:input path="code"/><sf:errors path="code"/></td>
		
	</tr>
	<tr>
		<td>项目名称</td>
		<td><input name="name" type="text" value="${projectInfo.name}"></td>
	</tr>
	
	<tr>
		<td>项目开始时间</td>
		<td><input name="pdate" id="pdate" type="text" value="${projectInfo.startDateString}"></td>
	</tr>
	<tr>
	<td><input type="submit" value="保存"></td>
	<td><input type="reset" value="重置"></td>
	</tr>
</table>
</sf:form>
</body>
</html>

