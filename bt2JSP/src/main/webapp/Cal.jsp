<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/28/2021
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>tínhtoan</title>
</head>
<body>
<%
   try{
       float s1 = Float.parseFloat(request.getParameter("first"));

       float s2 = Float.parseFloat(request.getParameter("second"));
       String x = request.getParameter("tinh");
       float result = 0;

       if (x.equals("Cộng")) {
           result = s1 + s2;

       } else if (x.equals("Trừ")) {
           result = s1 - s2;

       } else if (x.equals("Nhân")) {
           result = s1 * s2;

       } else if (x.equals("Chia")) {
           result = s1 / s2;

       }
       out.println("Kết quả: " + result);
   } catch (Exception e){
       out.println("Sai kiểu dữ liệu");
   }



%>
</body>
</html>
