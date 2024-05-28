<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<header><h2 style="text-align: center;">Detail Máy Tính</h2></header>
<main>
    <div class="container">
        <div class="mb-3">
            <label class="form-label">Mã</label>
            <span>${mayTinh.ma}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Tên</label>
            <span>${mayTinh.ten}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Giá</label>
            <span>${mayTinh.gia}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Bộ nhớ </label>
            <span>${mayTinh.boNho}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Màu sắc </label>
            <span>${mayTinh.mauSac}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Mã Hãng </label>
            <span>${mayTinh.hang.ma}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Tên Hãng </label>
            <span>${mayTinh.hang.tenHang}</span>
        </div>
        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <span>${mayTinh.mieuTa}</span>
        </div>
    </div>
</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
</body>
</html>
