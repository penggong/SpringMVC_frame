<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>user模型收集${pageContext.request.contextPath}</title>
</head>
<body>
  <form action="insert.action" method="post">
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