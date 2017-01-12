<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>left_page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Manage/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/Manage/js/modernizr.min.js"></script>
  </head>
  
  <body>
  <div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
      <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a>当前为后台首页</a></li>
                <li><a href="${pageContext.request.contextPath}/Web/index.jsp" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><%=request.getSession().getAttribute("t_name")%>,您好</li>
                <li><a></a></li>
                <li><a href="${pageContext.request.contextPath}/login/loginout_t.action">退出</a></li>
            </ul>
        </div>
    </div>
  </div>
  </body>
</html>
