<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/27/2021
  Time: 2:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Discount</title>
    <style>
        input {
            display: block;
            margin: 10px;
        }
        button{
            margin: 10px;
        }
    </style>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/display-discount" method="post">
    <input type="text" name="productSearch" placeholder="Mô tả"/>
    <input type="text" name="price" placeholder="Giá niêm yết">
    <input type="text" name="discount" placeholder="Chiết khấu">
    <button type="submit">Tính chiết khấu</button>
</form>
</body>
</html>
