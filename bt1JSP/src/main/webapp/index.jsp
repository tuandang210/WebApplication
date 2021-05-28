<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        div{
            border: 1px solid lightblue;
            width: 600px;
            padding: 20px;
        }
        th{
            height: 50px;
            width: 200px;
        }
        table{
            text-align: left;
            width: 100%;
        }
        td{
            height: 50px;
            width: 300px;
        }
        img {
            display: block;
            max-width:200px;
            max-height:50px;
            width: auto;
            height: auto;
        }
    </style>
</head>
<body>
<%! public class KhachHang {
    private String ten;
    private String ngaySinh;
    private String diaChi;
    private String photo;

    public KhachHang() {
    }

    public KhachHang(String ten, String ngaySinh, String diaChi, String photo) {
        this.ten = ten;
        this.ngaySinh = ngaySinh;
        this.diaChi = diaChi;
        this.photo = photo;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}
%>
<%
    List<KhachHang> khachHangs = new ArrayList<>();
%>

<%
    KhachHang khachHang = new KhachHang("Nguyễn Văn Hoàn", "1983-08-20", "Hà Nội",
            "https://photographer.com.vn/wp-content/uploads/2020/08/1596889696_Anh-avatar-dep-va-doc-dao-lam-hinh-dai-dien.jpg");
    khachHangs.add(khachHang);
    KhachHang khachHang1 = new KhachHang("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang",
            "https://i.pinimg.com/originals/8f/33/30/8f3330d6163782b88b506d396f5d156f.jpg");
    khachHangs.add(khachHang1);
%>
<div>
    <h1>Danh Sách Khách Hàng</h1>
    <table>
        <tr>
            <th>Tên</th>
            <th>Ngày Sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        <tr>
            <td><%= khachHangs.get(0).getTen()%></td>
            <td><%= khachHangs.get(0).getNgaySinh()%></td>
            <td><%= khachHangs.get(0).getDiaChi()%></td>
            <td><img src="<%=khachHangs.get(0).getPhoto() %>"></td>
        </tr>
        <tr>
            <td><%= khachHangs.get(1).getTen()%></td>
            <td><%= khachHangs.get(1).getNgaySinh()%></td>
            <td><%= khachHangs.get(1).getDiaChi()%></td>
            <td><img src="<%=khachHangs.get(1).getPhoto() %>"></td>
        </tr>

    </table>
</div>
</body>
</html>
