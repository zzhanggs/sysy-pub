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
<script type="text/javascript">
function confirm_delete(id){
	var r=confirm("确认删除吗？");
	if (r==true)
	  {
	  	window.location.href="delete/"+id;
	  }
	else
	  {
	  }
	
}
//跳转到用户选定的菜单
function selectMenu(){
	var index = window.document.getElementById("menuId").selectedIndex; 
    var val = window.document.getElementById("menuId").options[index].value;
    //alert(val);
    window.location.href="listMenu/"+val;
}
</script>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="94%" valign="bottom"><span class="STYLE1"> 文件列表</span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
   <pg:pager items="${total}" url="${pageContext.request.contextPath}/admin/attachment/list" maxIndexPages="15"  maxPageItems="20">
		<pg:first><a href="${pageUrl}">首页</a></pg:first>
		<pg:prev><a href="${pageUrl}">上一页</a></pg:prev>
		<pg:pages>
		<c:if test="${nowPage eq pageNumber}"><font color=red>${pageNumber}</font>&nbsp;</c:if>
		<c:if test="${nowPage != pageNumber}"><a href="${pageUrl}">${pageNumber}</a>&nbsp;</c:if>
		
		
		</pg:pages>
		<pg:next><a href="${pageUrl}">下一页</a></pg:next>
		<pg:last><a href="${pageUrl}">尾页</a></pg:last>
		|共有${total}条数据
	</pg:pager>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
      	<td  bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">文件名</span></div></td>
        <td   bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">文件类型</span></div></td>
        <td   bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">路径</span></div></td>
        <td   bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">大小</span></div></td>
        <td   bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">上传时间</span></div></td>
      	<td   bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">操作</span></div></td>
      </tr>
      <c:forEach items="${datas}" var="data">
      <tr>
      		<td style= "word-break:break-all;" width="80" bgcolor="#FFFFFF" class="STYLE19">${data.name}</td>
	        <td style= "word-break:break-all;" width="60"  bgcolor="#FFFFFF" class="STYLE19">${data.type}</td>
	        <td style= "word-break:break-all; " width="170" bgcolor="#FFFFFF" class="STYLE19">${data.path}</td>
	        <td style= "word-break:break-all;" width="50" bgcolor="#FFFFFF" class="STYLE19">${data.size/1000}kb</td>
	        <td style= "word-break:break-all;" width="60" bgcolor="#FFFFFF" class="STYLE19">${data.uploadDate}</td>
	        <td style= "word-break:break-all;" width="70" bgcolor="#FFFFFF"><div align="center" class="STYLE21">
	        <a href="${pageContext.request.contextPath}/${data.path}" >查看</a> |
	        <a href="${pageContext.request.contextPath}/admin/attachment/delete/${data.id}?action=1&pager.offset=${(nowPage-1)*20}">删除</a>
	        </div></td>
       
      </tr>
       </c:forEach>
       
    </table></td>
  </tr>
  <tr>
       <td>
	       <pg:pager items="${total}" url="${pageContext.request.contextPath}/admin/attachment/list" maxIndexPages="15"  maxPageItems="20">
		<pg:first><a href="${pageUrl}">首页</a></pg:first>
		<pg:prev><a href="${pageUrl}">上一页</a></pg:prev>
		<pg:pages>
		<c:if test="${nowPage eq pageNumber}"><font color=red>${pageNumber}</font>&nbsp;</c:if>
		<c:if test="${nowPage != pageNumber}"><a href="${pageUrl}">${pageNumber}</a>&nbsp;</c:if>
		
		
		</pg:pages>
		<pg:next><a href="${pageUrl}">下一页</a></pg:next>
		<pg:last><a href="${pageUrl}">尾页</a></pg:last>
		|共有${total}条数据
	</pg:pager>
		<td>
       </tr>
</table>
</body>
</html>

