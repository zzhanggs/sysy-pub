<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<sf:form action="${pageContext.request.contextPath}/admin/menu/add/${id}" method="post" modelAttribute="menu"> 
<input type="hidden" name="id" value="${id}"/>
<div style="background-color:#353C44" width="100%" style="padding-top:10px"><span class="STYLE1">添加子菜单</span></div>
<table>
<tr>
  
  </tr>
	<tr>
		<td>名称</td>
		<td><sf:input path="name" /><sf:errors path="name"/></td>
		
	</tr>
	<tr>
		<td>等级</td>
		<td><input name="level" type="text" ></td>
	</tr>
	<tr>
		<td>显示在首页</td>
		<td>
		<c:if test="${menu.visible == true}"><input name="visible" type="checkBox" checked="checked" /></c:if>
		<c:if test="${menu.visible != true}"><input name="visible" type="checkBox"  /></c:if>
		</td>
	</tr>
	<tr>
	<td><input type="submit" value="添加"></td>
	<td><input type="reset" value="重置"></td>
	</tr>
</table>
</sf:form>
</body>
</html>

