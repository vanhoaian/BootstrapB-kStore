<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/clientHome"><i class="fa fa-fw fa-home" style="color: red"></i>Trang chủ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Sách phổ biến</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Sách bán chạy</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Sách mới</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Giá thấp đến cao</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Giá cao đến thấp</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Tìm sách ..." aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
