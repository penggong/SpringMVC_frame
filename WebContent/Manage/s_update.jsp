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
           alert("修改成功");
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
	   <form name="from_s_add" action="${pageContext.request.contextPath}/student/student_update.action" method="post" onSubmit="return mycheck()">
	           <div>
			<br>
			  <input type="hidden" name="s_id" id="s_id" value="${student.getS_id()}" >
			  &nbsp;&nbsp;&nbsp;&nbsp;学生姓名:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="s_name" id="s_name" value="${student.getS_name()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;学号:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="s_member" id="s_member" value="${student.getS_member()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <select name="s_gender" id="s_gender">
                                      <option value="男">男</option>
                                      <option value="女">女</option>
                                   </select><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;学院:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                      <select name="s_academy" id="s_academy" onchange="updateSelect()">   
						           <option>请选择学院</option>
						              <option value="${student.getS_academy()}" selected="selected">${student.getA_name()}</option>   
						             <c:forEach var="academy" items="${requestScope.list_academy}">
						              <option value="${academy.a_id}">${academy.a_name }</option>   
						            </c:forEach>
						          </select>   <br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;专业:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  <select name="s_major" id="s_major">   
						            <option value="${student.getS_major()}">${student.getM_name()}</option>     
						          </select> <br><br>
          
			  &nbsp;&nbsp;&nbsp;&nbsp;班级:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="s_class" id="s_class" value="${student.getS_class()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;身份证号码:  <input type="text" name="s_idcard" id="s_idcard" value="${student.getS_idcard()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;生源地:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="s_source" id="s_source" value="${student.getS_source()}"><br><br>
			  &nbsp;&nbsp;&nbsp;&nbsp;入学年份:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="s_enteryear" id="s_enteryear" value="${student.getS_enteryear()}"><br><br>
			 
			  
			  
			  
			</div>
			<div style="position:absolute;left:100px;top:450px"><input type="submit" value="修改"></div>
	   </form>
	</div>
	<script type="text/javascript">
     var httpReq = createAjaxObj();  
     function updateSelect(){  
        var selected = document.all.s_academy.value;  
        httpReq.open("GET","${pageContext.request.contextPath}/student/bind_major.action?a_id="+selected,false);  
        httpReq.onreadystatechange=function(){  
            checkReqCallBack();  
        };  
        httpReq.send(null);  
    }  
      
    function checkReqCallBack(){  
        if(httpReq.readyState == 4) {   
             if(httpReq.status ==200){  
                  var xmlDoc = httpReq.responseXML.documentElement;//获得返回的XML文档  
                  var xSel = xmlDoc.getElementsByTagName('select');  
                  //获得XML文档中的所有<select>标记  
                  var select_root = document.getElementById('s_major');  
                  //获得网页中的第二个下拉框  
                  select_root.options.length=0;  
                  //每次获得新的数据的时候先把每二个下拉框架的长度清0  
                    
                  for(var i=0;i<xSel.length;i++){  
                    var xValue = xSel[i].childNodes[0].firstChild.nodeValue;  
                    //获得每个<select>标记中的第一个标记的值,也就是<value>标记的值  
                    var xText = xSel[i].childNodes[1].firstChild.nodeValue;  
                    //获得每个<select>标记中的第二个标记的值,也就是<text>标记的值  
                      
                    var option = new Option(xText, xValue);  
                    //根据每组value和text标记的值创建一个option对象  
                      
                    try{  
                      select_root.add(option);//将option对象添加到第二个下拉框中  
                    }catch(e){  
                    }  
                  }  
             }else{  
                  alert("不能得到描述信息:" + req.statusText);  
             }  
        }  
     }
     function mycheck(){
		   if(from_s_add.s_name.value==""){  
		   alert("请输入学生姓名！"); 
		   return false;
		   }
		   if(from_s_add.s_number.value==""){  
		   alert("请输入学生学号！"); 
		   return false;
		   }
     }
    </script>
  </body>
</html>
