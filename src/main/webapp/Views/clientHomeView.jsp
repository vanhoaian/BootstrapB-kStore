<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Website Cửa Hàng Sách</title>
<!-- Bootstrap CSS -->
<link
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    rel="stylesheet">
<!-- Your custom CSS -->
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/css/style.css">
<style>
.mySlides {
    display: none;
}
</style>
</head>
<body>
    <jsp:include page="_header_client.jsp"></jsp:include>
    <div class="mt-4"> <!-- Thêm khoảng cách ở đây -->
        <div class="container">
            <div class="row">
                <jsp:include page="_left_sidebar.jsp"></jsp:include>
                <div class="col-lg-9">
                    <div class="block" align="center" id="searchResult">
                        <div class="d-flex flex-wrap">
                            <c:forEach items="${bookList}" var="book">
                                <div class="item_content col-lg-4 col-md-6 mb-4">
                                    <div class="card">
                                        <img class="card-img-top" src="${book.imagePath}" alt="Book Image">
                                        <div class="card-body">
                                            <p class="card-text">${book.title}</p>
                                            <p class="card-text" style="color: #c20000;">${book.price}<sup>đ</sup></p>
                                            <button class="btn btn-primary" id="button-card-icon">bedfgh</button>
                                            <button class="btn btn-success" id="button-buy">Mua</button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <p style="color: red;">${errors}</p>
                    </div>
                    <div class="block" align="center">
                        <c:choose>
                            <c:when test="${empty keyword}">
                                <div style="margin-top: 5px">
                                    <c:if test="${currentPage gt 1}">
                                        <a href="clientHome?page=${currentPage - 1}" class="btn btn-secondary">Previous</a> &nbsp;
                                    </c:if>
                                    <c:forEach begin="1" end="${noOfPages}" var="i">
                                        <c:choose>
                                            <c:when test="${currentPage eq i}">
                                                &nbsp;<span class="btn btn-primary disabled">${i}</span>&nbsp;
                                            </c:when>
                                            <c:otherwise>
                                                &nbsp;<a href="clientHome?page=${i}" class="btn btn-secondary">${i}</a>&nbsp;
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${currentPage lt noOfPages}">
                                        &nbsp;<a href="clientHome?page=${currentPage + 1}" class="btn btn-secondary">Next</a>
                                    </c:if>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div style="margin-top: 5px">
                                    <c:if test="${currentPage gt 1}">
                                        <a href="clientHome?page=${currentPage - 1}&keyword=${keyword}" class="btn btn-secondary">Previous</a>&nbsp;
                                    </c:if>
                                    <c:forEach begin="1" end="${noOfPages}" var="i">
                                        <c:choose>
                                            <c:when test="${currentPage eq i}">
                                                &nbsp;<span class="btn btn-primary disabled">${i}</span>&nbsp;
                                            </c:when>
                                            <c:otherwise>
                                                &nbsp;<a href="clientHome?page=${i}&keyword=${keyword}" class="btn btn-secondary">${i}</a>&nbsp;
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${currentPage lt noOfPages}">
                                        &nbsp;<a href="clientHome?page=${currentPage + 1}&keyword=${keyword}" class="btn btn-secondary">Next</a>
                                    </c:if>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS and jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
