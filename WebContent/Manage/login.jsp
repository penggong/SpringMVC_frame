<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录</title>
    <script type="text/javascript">
       function mycheck(){
		   if(formlogin.loginname.value==""){  
		   alert("请输入用户名！"); 
		   return false;
		   }
		   if(formlogin.loginpass.value==""){  
		   alert("请输入密码！"); 
		   return false;
		   }
   
  }
  </script>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- jQuery ui -->
<link href="${pageContext.request.contextPath}/Resource/css/jquery-ui-1.10.4.min.css" rel="stylesheet" media="screen">
<script src="${pageContext.request.contextPath}/Resource/js/jquery-ui-1.10.4.min.js"></script>

<!-- SliderLock -->
<link href="${pageContext.request.contextPath}/Resource/css/style.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="${pageContext.request.contextPath}/Resource/js/sliderlock.js"></script>

</head>
<body>

<div class="container login" style="width: 970px!important;">

	<div class="rom">
		<div class="col-xs-8 login-box">
			<h4>用户登陆</h4>
			<form name="formlogin" class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/User/login.action" onSubmit="return mycheck()">
				<div class="form-group">
					<label for="sliderLock" class="col-xs-2 control-label">解锁验证</label>
					<div class="col-xs-7">
						<div id="slider" class="sliderLock">
							<p>Slide to Unlock</p>
						</div>
						<label class="control-label helplable" for="sliderLock">用鼠标点击箭头向右滑动解锁</label>
					</div>
				</div>
				<div class="form-group">
					<label for="login-name" class="col-xs-2 control-label">登陆名称</label>
					<div class="col-xs-7">
						<input type="text" name="u_name" id="u_name" class="form-control" placeholder="登陆名称">
						<label class="control-label helplable" for="login-name">填写用户名</label>
					</div>
				</div>
				<div class="form-group">
					<label for="login-pass" class="col-xs-2 control-label">登陆密码</label>
					<div class="col-xs-7">
						<input type="password" name="u_pwd" id="u_pwd" class="form-control"  placeholder="登陆密码">
						<label class="control-label helplable" for="login-pass">忘记密码 <a href="#">点此找回</a></label>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-4">
						<button type="submit" class="btn btn-primary btn-block">登 陆</button>
					</div>
				</div>
			</form>
		</div>
		
	</div>
	
</div>


  </body>
</html>
<script> 
//取出传回来的参数error并与yes比较
  var errori ='<%=request.getParameter("error")%>';
  if(errori=='yes'){
   alert("登录失败!");
  }
</script>
