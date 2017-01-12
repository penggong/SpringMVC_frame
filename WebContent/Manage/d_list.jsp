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
				<table align="center" border="1" width="700px" cellpadding="5"
					cellspacing="0" style="font-style:微软雅黑">
					<tr>
	                    <th>宿舍编号</th>
						<th>宿舍楼信息</th>
						<th>宿舍号</th>
						<th>宿舍容量</th>
						<th>宿舍类型</th>
						<th>操作</th>
					</tr>
					<c:choose>
						<c:when test="${not empty requestScope.pageBean.pageData}">
							<c:forEach var="dormitory" items="${requestScope.pageBean.pageData}"
								varStatus="vs">
								<tr>
									<td><a
										href="${pageContext.request.contextPath}/Manage/Dormitory_get.action?d_id=${dormitory.d_id}">${dormitory.d_id}</a></td>
									<td>${dormitory.d_floor}</td>
									<td>${dormitory.d_dormitoryID}</td>
									<td>${dormitory.d_capacity}</td>
									<td>${dormitory.d_type}</td>
									<td><a href="${pageContext.request.contextPath}/Manage/Dormitory_get.action?d_id=${dormitory.d_id}">修改</a>&nbsp;
  						                 <a href="${pageContext.request.contextPath}/Manage/Dormitory_delete.action?d_id=${dormitory.d_id}" onclick="return window.confirm('确定删除?')">删除</a>
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
						<td colspan="8" align="center">
							当前${requestScope.pageBean.currentPage
							}/${requestScope.pageBean.totalPage }页 &nbsp;&nbsp; <a
							href="${pageContext.request.contextPath }/Manage/DormitoryList.action?currentPage=1">首页</a>
							<a
							href="${pageContext.request.contextPath }/Manage/DormitoryList.action?currentPage=${requestScope.pageBean.currentPage-1}">上一页
						</a> <a
							href="${pageContext.request.contextPath }/Manage/DormitoryList.action?currentPage=${requestScope.pageBean.currentPage+1}">下一页
						</a> <a
							href="${pageContext.request.contextPath }/Manage/DormitoryList.action?currentPage=${requestScope.pageBean.totalPage}">末页</a>
						</td>
					</tr>
				</table>
			</div>
	     </div>
		<!-- /.container -->
	</section>
  </body>
</html>
