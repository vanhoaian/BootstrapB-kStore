<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/clientHome">
                <img src="${pageContext.request.contextPath}/img/book-cloud-logo.png" alt="" class="header_left">
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
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
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Tìm sách ..." aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Tìm kiếm</button>
                </form>
            </div>
        </div>
    </nav>
</div>