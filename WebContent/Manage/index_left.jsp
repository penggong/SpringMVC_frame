<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
    <title>后台首页左侧</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/Manage/js/modernizr.min.js"></script>
  <body>
     <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/student/bind_academy.action">学生添加</a></li>
                        <li><a href="${pageContext.request.contextPath}/student/Student_list.action">查看学生</a></li>
                        <li><a href="${pageContext.request.contextPath}/Manage/d_add.jsp">宿舍添加</a></li>
                        <li><a href="${pageContext.request.contextPath}/Manage/DormitoryList.action">查看宿舍</a></li>
                        <li><a href="${pageContext.request.contextPath}/student/Student_list_q.action">分配宿舍</a></li>
                    </ul>
                </li>
                <li>
                    <a>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/Manage/user_update.jsp"></i>修改密码</a></li>
                        
                    </ul>
                </li>
            </ul>
        </div>
    </div>
  </body>
</html>
