<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- TemplateBeginEditable name="doctitle" -->
<title>无标题文档</title>
<%
		response.addHeader("Cache-Control", "no-store, must-revalidate"); 
		response.addHeader("Expires", new java.util.Date().getTime()+"");
		%>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:1300px;
	height:40px;
	z-index:1;
	top: 10px;
	left: 1px;
	background-image: url(img/bg6.jpg);
	
}
.STYLE1 {font-size: large;font-weight: bold;}
-->
</style>


</head>

<body>
<div id="Layer1">
<div style="padding-top: 10px;padding-left: 20px;">
<span style="color:#ffffff;font-size: 18px;font-weight: bold;" >修改图书</span>
</div></div>
<br/>
<br/>
<br/>
<div style="margin-left:-10px">
<form action="bookupdate2" method="post" enctype="multipart/form-data" >
<table width="1150" height="120" border="1">
  <tr>
    <tr>
    <td width="212" background="img/bg7.jpg"><div align="right" class="STYLE1">图书名</div></td>
    <td width="913">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="bookname" size="30" value="${bean.bookname }"/><input type="hidden" name="id" value="${bean.id }"/>
    </td>
  </tr>
<tr>
    <td width="212" background="img/bg7.jpg"><div align="right" class="STYLE1">作者</div></td>
    <td width="913">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="zuozhe" size="30" value="${bean.zuozhe }"/>
    </td>
  </tr>
  <tr>
    <td width="212" background="img/bg7.jpg"><div align="right" class="STYLE1">出版社</div></td>
    <td width="913">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="chubanshe" size="30" value="${bean.chubanshe }"/>
    </td>
  </tr>
   <tr>
    <td width="212" background="img/bg7.jpg"><div align="right" class="STYLE1">图书简介</div></td>
    <td width="913">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <textarea class="InputCss" rows="7" cols="50" name="info">${bean.info }</textarea>
    </td>
  </tr>
 
   <tr>
    <td width="212" background="img/bg7.jpg"><div align="right" class="STYLE1">上传图书封面</div></td>
    <td width="913">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="<%=basePath %>uploadfile/${bean.path1 }" width="80" height="100"/>
		<input  name="uploadfile1"  type="file"  />

    </td>
  </tr>
   <tr>
    <td width="212" background="img/bg7.jpg"><div align="right" class="STYLE1">上传图书内容</div></td>
    <td width="913">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input  name="uploadfile2"  type="file"  />(请上传txt格式的图书内容)

    </td>
  </tr>

  <tr>
    <td background="img/bg7.jpg"><div align="right" class="STYLE1">操作</div></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="submit" value="提交" style="width: 60px"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" />
    </td>
  </tr>
</table>
</form>
</div>
</body>
</html>
