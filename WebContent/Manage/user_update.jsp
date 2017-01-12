<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/Manage/js/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ajax.js"></script>
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
  <script type="text/javascript">
   function mycheck(){
   if(isNull(from_u_update.old_pwd.value)){  
   alert("请输入旧密码！"); 
   return false;
   }
   if(isNull(from_u_update.new_pwd.value)){  
   alert("请输入新密码！"); 
   return false;
   }
   if(from_u_update.new_pwd.value!=from_u_update.new_pwd2.value){
   alert("两次密码不一致！");
   return false;
   }
   
  }
  
	function isNull(str) {
		if (str == "")
			return true;
		var regu = "^[ ]+$";
		var re = new RegExp(regu);
		return re.test(str);
	}
    </script>
  <body>
    <%@ include file="index_top.jsp"%>
	<div style="position: absolute; left: 4px; top: 52px; width: 230px;">
		<%@ include file="index_left.jsp"%>
	</div>
	<div style="position: absolute; left: 240px; top: 90px; width: 330px;">
	   <form name="from_u_update" action="${pageContext.request.contextPath}/teacher/bind_academy.action" method="post" onSubmit="return mycheck()">
	           <table align="center"  width="400px">
	            <tr height="40px">
					<th>原密码</th>
					<td><input type="text" name="old_pwd" id="old_pwd"/></td>
				</tr>
				<tr height="40px">
					<th>新密码</th>
					<td><input type="text" name="new_pwd" id="new_pwd"/></td>
			    </tr>
			    <tr height="40px">
					<th>确认新密码</th>
					<td><input type="text" name="new_pwd2"/></td>
			    </tr>
			    
			 </table>
			 <div style="position:absolute;left:120px;top:120px"><input type="submit" value="修改"/></div>
	   </form>
	</div>
  </body>
</html>
