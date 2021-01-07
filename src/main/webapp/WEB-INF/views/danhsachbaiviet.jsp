<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vie">

<jsp:include page="_head.jsp"></jsp:include>

<body>
    <jsp:include page="_top.jsp"></jsp:include>
    
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${pageContext.request.contextPath}/home"><i class="fa fa-home"></i> Home</a>
                        <span>Blog</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
            	<c:forEach items="${dsBaiViet }" var="baiViet">
                <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/img/blogs/${baiViet.urlAvatar}"></div>
                        <div class="blog__item__text">
                            <h6><a href="${pageContext.request.contextPath}/blog/${baiViet.id}">${baiViet.moTaNgan}</a></h6>
                            <ul>
                                <li>viết bởi <span>${baiViet.taiKhoan.tenDangNhap}</span></li>
                                <li>${baiViet.thoiGianTao}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
                <div class="col-lg-12 text-center">
                    <a href="#" class="primary-btn load-btn">Load more posts</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->


	<jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>