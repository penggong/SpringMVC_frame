<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>user模型收集${pageContext.request.contextPath}</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.3.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.5/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(
		function(){
			$("#btn_test").click(
			    function(){
			    	$.post(
			    	    "${pageContext.request.contextPath}/insertAjax.action"	,
			    	    {u_id:1001,u_name:"testname",u_phone:123,u_sal:1} ,
			    	    function(json){alert(json.u_name);},
			    	    "json"
			    	);
			    }		
			);
		}
		);
</script>
</head>
<body>
  <button id="btn_test">testJSON</button>
  <form action="${pageContext.request.contextPath}/User/insertAjax.action" method="post">
     <table>
        <tr>
           <td>
                                    编号<input type="text" name="u_id">
           </td>
        </tr>
        <tr>
           <th>
                                  姓名<input type="text" name="u_name">
           </th>
        </tr>
        <tr>
           <th>
                                 手机<input type="text" name="u_phone">
           </th>
        </tr>
        <tr>
           <th>
                                 性别<input type="text" name="u_sal">
           </th>
        </tr>
        <tr>
          <th>
           <input type="submit" value="提交">
          </th>
        </tr>
       
     </table>
  </form>
</body>
</html>