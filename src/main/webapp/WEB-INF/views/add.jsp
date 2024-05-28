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
<header><h2 style="text-align: center;">Thêm Máy Tính</h2></header>
<main>
    <form action="/may-tinh/add" method="post" class="container">
        <div class="mb-3">
            <label class="form-label">Mã</label>
            <input type="text" class="form-control" name="ma">
        </div>
        <div class="mb-3">
            <label class="form-label">Tên</label>
            <input type="text" class="form-control" name="ten">
        </div>
        <div class="mb-3">
            <label class="form-label">Giá</label>
            <input type="text" class="form-control" name="gia">
        </div>
        <div class="mb-3">
            <label class="form-label">Bộ nhớ </label>
            <select name="boNho">
                <option value="128GB">128GB</option>
                <option value="256GB">256GB</option>
                <option value="512GB">512GB</option>
                <option value="1TB">1TB</option>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Màu sắc </label>
            <input type="radio" name="mauSac" value="Đen" checked>Đen
            <input type="radio" name="mauSac" value="Bạc">Bạc
        </div>
        <div class="mb-3">
            <br>
            <label class="form-label">Hãng </label>
            <select name="hang">
                <c:forEach items="${hangs }" var="h">
                    <option value="${h.id}">${h.tenHang}</option>
                </c:forEach>
            </select>
            <br>
        </div>
        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <input type="text" class="form-control" name="moTa">
        </div>
        <button class="btn btn-success" type="submit">Add</button>
    </form>
</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
</body>
</html>
