<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/Manage/js/modernizr.min.js"></script>
  </head>
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
	<section id="about" class="section">
        <div class="container">
			<div class="row">
				<table align="center" border="1" width="800px" cellpadding="5"
					cellspacing="0" style="font-style:微软雅黑">
					<tr>
	                    <th>学生姓名</th>
						<th>学生学号</th>
						<th>性别</th>
						<th>学院</th>
						<th>专业</th>
						<th>班级</th>
						<th>身份证号码</th>
						<th>生源地</th>
						<th>入学年份</th>
						<th>宿舍号</th>
	                    <th>操作</th>
					</tr>
					<c:choose>
						<c:when test="${not empty requestScope.pageBean.pageData}">
							<c:forEach var="student" items="${requestScope.pageBean.pageData}"
								varStatus="vs">
								<tr>
									<td><a
										href="${pageContext.request.contextPath}/student/student_get_info.action?s_id=${student.s_id}">${student.s_name}</a>
									</td>
									<td>${student.s_member}</td>
									<td>${student.s_gender}</td>
									<td>${student.a_name}</td>
									<td>${student.m_name}</td>
									<td>${student.s_class}</td>
									<td>${student.s_idcard}</td>
									<td>${student.s_source}</td>
									<td>${student.s_enteryear}</td>
									<td><a href="${pageContext.request.contextPath}/Manage/Dormitory_get.action?d_id=${student.s_dormitoryID}">${student.s_dormitoryID}</a></td>
	                                <td><a href="${pageContext.request.contextPath}/student/student_get_info.action?s_id=${student.s_id}">修改</a>&nbsp;
  						                 <a href="${pageContext.request.contextPath}/student/student_delete.action?s_id=${student.s_id}" onclick="return window.confirm('确定删除?')">删除</a>
  						            </td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="3">对不起，没有你要找的数据</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<tr>
						<td colspan="11" align="center">
							当前${requestScope.pageBean.currentPage
							}/${requestScope.pageBean.totalPage }页 &nbsp;&nbsp; <a
							href="${pageContext.request.contextPath }/student/Student_list.action?currentPage=1">首页</a>
							<a
							href="${pageContext.request.contextPath }/student/Student_list.action?currentPage=${requestScope.pageBean.currentPage-1}">上一页
						</a> <a
							href="${pageContext.request.contextPath }/student/Student_list.action?currentPage=${requestScope.pageBean.currentPage+1}">下一页
						</a> <a
							href="${pageContext.request.contextPath }/student/Student_list.action?currentPage=${requestScope.pageBean.totalPage}">末页</a>
						</td>
						
						
						
					</tr>
	
				</table>
			</div>
	     </div>
		<!-- /.container -->
	</section>
  </body>
</html>
