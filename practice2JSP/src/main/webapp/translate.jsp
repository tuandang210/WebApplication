<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/28/2021
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Map<String, String> map = new HashMap<>();
        %>
    <%
        map.put("hello", "xin chào");
        map.put("sorry", "xin lỗi");
        map.put("walk", "đi bộ");
        map.put("run", "chạy");

        String search = request.getParameter("word");

        String result = map.get(search);
        if (result != null) {
            out.println("Word: " + search);
            out.println("Result: " + result);
        } else {
            out.println("Not found");
        }
    %>
</body>
</html>
