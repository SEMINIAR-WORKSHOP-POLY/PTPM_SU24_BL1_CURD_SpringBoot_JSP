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
<header><h2 style="text-align: center;">Sửa Máy Tính</h2></header>
<main>
    <form action="/may-tinh/update?id=${mayTinh.id}" method="post" class="container">
        <div class="mb-3">
            <label class="form-label">Mã</label>
            <input type="text" class="form-control" name="ma" value="${mayTinh.ma}">
        </div>
        <div class="mb-3">
            <label class="form-label">Tên</label>
            <input type="text" class="form-control" name="ten" value="${mayTinh.ten}">
        </div>
        <div class="mb-3">
            <label class="form-label">Giá</label>
            <input type="text" class="form-control" name="gia" value="${mayTinh.gia}">
        </div>
        <div class="mb-3">
            <label class="form-label">Bộ nhớ </label>
            <select name="boNho">
                <option value="128GB" ${mayTinh.boNho == "128GB" ? "selected" : ""}>128GB</option>
                <option value="256GB" ${mayTinh.boNho == "256GB" ? "selected" : ""}>256GB</option>
                <option value="512GB" ${mayTinh.boNho == "512GB" ? "selected" : ""}>512GB</option>
                <option value="1TB" ${mayTinh.boNho == "1TB" ? "selected" : ""}>1TB</option>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Màu sắc </label>
            <input type="radio" name="mauSac" value="Đen" ${mayTinh.mauSac == "Đen" ? "checked" : ""} checked>Đen
            <input type="radio" name="mauSac" value="Bạc" ${mayTinh.mauSac == "Bạc" ? "checked" : ""}>Bạc
        </div>
        <div class="mb-3">
            <label class="form-label">Hãng </label>
            <select name="hang">
                <c:forEach items="${hangs }" var="h">
                    <option value="${h.id}" ${h.id == mayTinh.hang.id ? 'selected="selected"' : ''}>${h.tenHang}</option>
                </c:forEach>
            </select></div>
        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <input type="text" class="form-control" name="moTa" value="${mayTinh.mieuTa}">
        </div>
        <button class="btn btn-success" type="submit">Update</button>
    </form>
</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
</body>
</html>
