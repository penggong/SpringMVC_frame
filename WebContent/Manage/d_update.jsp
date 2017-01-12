<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/Manage/js/modernizr.min.js"></script>
  </head>
  <script>
        var mes = '<%=request.getAttribute("mark")%>';
        if(mes=="success"){
           alert("添加成功");
        }
  </script>
  <script type="text/javascript">
		var id = <%=session.getAttribute("Manager_academy") %>;
		if(id==null){
		   alert("请您先登录");
		   window.location.href='${pageContext.request.contextPath}/Manage/login.jsp';
		}
		
  </script>
  <body>
    <%@ include file="index_top.jsp"%>
	<div style="position: absolute; left: 4px; top: 52px; width: 230px;">
		<%@ include file="index_left.jsp"%>
	</div>
	<div style="position: absolute; left: 240px; top: 90px; width: 330px;">
	   <form action="${pageContext.request.contextPath}/Manage/Dormitory_update.action" method="post">
	       <div>
			<br>
			  <input type="hidden" name="d_id" id="d_id" value="${dormitory.getD_id()}">
			  &nbsp;&nbsp;&nbsp;&nbsp;宿舍楼信息: &nbsp;<input type="text" name="d_floor" id="d_floor" value="${dormitory.getD_floor()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;宿舍号码:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="d_dormitoryID" id="d_dormitoryID" value="${dormitory.getD_dormitoryID()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;宿舍容量:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="d_capacity" id="d_capacity" value="${dormitory.getD_capacity()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;宿舍类型:&nbsp;&nbsp;&nbsp;&nbsp; 
			                       <select name="d_type" id="d_type">
			                          <option value="${dormitory.getD_type()}">${dormitory.getD_type()}</option>
                                      <option value="男">男</option>
                                      <option value="女">女</option>
                                   </select>
			  
			</div>
			<div style="position:absolute;left:100px;top:200px"><input type="submit" value="修改"></div>
	   </form>
	</div>
  </body>
</html>
