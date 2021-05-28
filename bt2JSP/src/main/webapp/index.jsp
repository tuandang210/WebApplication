<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/28/2021
  Time: 1:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <style>
        form {
            border: 1px solid gray;
            padding: 10px;
        }

        div {
            padding: 2px;
        }
    </style>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="Cal.jsp" method="get">
    <p>Calculator</p>
    <div>
        <div>First:</div>
        <input type="text" name="first">
    </div>
    <div>
        <div>
            Phép tính
        </div>
        <select name="tinh">
            <option>Cộng</option>
            <option>Trừ</option>
            <option>Nhân</option>
            <option>Chia</option>
        </select>
    </div>
    <div>
        <div>Second:</div>
        <input type="text" name="second">
    </div>
    <div>
        <button type="submit">Cal</button>
    </div>
</form>
</body>
</html>
