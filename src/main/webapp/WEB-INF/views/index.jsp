<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<header><h2 style="text-align: center;">Quản Lý Máy Tính</h2></header>
<main>
    <section class="container">
        <a class="btn btn-success" href="/may-tinh/view-add">Add</a>
    </section>
    <section>
        <div class="container">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Mã máy tính</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Bộ nhớ</th>
                    <th scope="col">Màu sắc</th>
                    <th scope="col">Mã hãng</th>
                    <th scope="col">Tên máy tính</th>
                    <th scope="col">Mô Tả</th>
                    <th scope="col">hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ listMayTinh.content }" var="mayTinh">
                    <tr>
                        <td>${mayTinh.ma}</td>
                        <td>${mayTinh.ten}</td>
                        <td>${mayTinh.gia}</td>
                        <td>${mayTinh.boNho }</td>
                        <td>${mayTinh.mauSac }</td>
                        <td>${mayTinh.hang.ma}</td>
                        <td>${mayTinh.hang.tenHang}</td>
                        <td>${mayTinh.mieuTa}</td>
                        <td>
                            <a class="btn btn-success" href="/may-tinh/detail/${mayTinh.id}">detail</a>
                            <a class="btn btn-primary" href="/may-tinh/view-update/${mayTinh.id}">update</a>
                            <a class="btn btn-danger" href="/may-tinh/delete/${mayTinh.id}">xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <c:forEach begin="0" end="${ listMayTinh.totalPages -1}" varStatus="loop">
                        <li class="page-item">
                            <a class="page-link" href="/may-tinh/hien-thi?page=${loop.begin + loop.count - 1}">
                                    ${loop.begin + loop.count }
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </nav>
        </div>
    </section>
</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
</body>
</html>
