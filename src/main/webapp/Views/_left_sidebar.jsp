<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="leftcolumn">
    <div class="block">
        <ul class="list-group">
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách thiếu nhi</a></li>
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách ngoại ngữ</a></li>
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách kỹ năng sống</a></li>
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách nuôi dạy con</a></li>
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách cổ học tinh hoa</a></li>
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách kinh tế - xã hội</a></li>
            <li class="list-group-item"><a href="#"><i class="fa fa-book" style="color: red"></i> Sách khoa học - công nghệ</a></li>
        </ul>
    </div>
    <div class="block" align="center">
        <h2>Sách mới</h2>
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${book.imagePath}" class="d-block w-100" alt="...">
                </div>
                <!-- Repeat the above div with different book images -->
            </div>
        </div>
    </div>
    <div class="block">
        <h3>Đăng kí nhận mail</h3>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập email...">
        <button type="submit" class="btn btn-primary" style="margin-top: 15px;">Gửi <i class="fa fa-send-o" style="color: white"></i></button>
    </div>
</div>