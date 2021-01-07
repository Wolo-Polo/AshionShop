<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="vie">

<jsp:include page="_head.jsp"></jsp:include>

<body>
    
    <jsp:include page="_top.jsp"></jsp:include>
    
    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 p-0">
                    <div class="categories__item categories__large__item set-bg"
                    data-setbg="${pageContext.request.contextPath}/img/categories/${womenfashion.urlAvatar}">
                    <div class="categories__text">
                        <h1>${womenfashion.tenDanhMuc}</h1>
                        <p>${womenfashion.moTa}</p>
                        <a href="${pageContext.request.contextPath}/shop/category/${womenfashion.id}">Mua ngay</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/${menfashion.urlAvatar}">
                            <div class="categories__text">
                                <h4>${menfashion.tenDanhMuc}</h4>
                                <p>${menfashion.moTa}</p>
                                <a href="${pageContext.request.contextPath}/shop/category/${menfashion.id}">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/${kidfashion.urlAvatar}">
                            <div class="categories__text">
                                <h4>${kidfashion.tenDanhMuc}</h4>
                                <p>${kidfashion.moTa}</p>
                                <a href="${pageContext.request.contextPath}/shop/category/${kidfashion.id}">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/${cosmetics.urlAvatar}">
                            <div class="categories__text">
                                <h4>${cosmetics.tenDanhMuc}</h4>
                                <p>${cosmetics.moTa}</p>
                                <a href="${pageContext.request.contextPath}/shop/category/${cosmetics.id}">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath}/img/categories/${accessories.urlAvatar}">
                            <div class="categories__text">
                                <h4>${accessories.tenDanhMuc}</h4>
                                <p>${accessories.moTa}</p>
                                <a href="${pageContext.request.contextPath}/shop/category/${accessories.id}">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>New product</h4>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Women’s</li>
                    <li data-filter=".men">Men’s</li>
                    <li data-filter=".kid">Kid’s</li>
                    <li data-filter=".accessories">Accessories</li>
                    <li data-filter=".cosmetic">Cosmetics</li>
                </ul>
            </div>
        </div>
        <div class="row property__gallery">
            
            <c:forEach items="${dsSanPham }" var="sanPham">
            <div class='col-lg-3 col-md-4 col-sm-6 mix
            	${sanPham.danhMuc.tenDanhMuc.equals("Thời trang nữ")?"women":"" }
            	${sanPham.danhMuc.tenDanhMuc.equals("Thời trang nam")?"men":"" }
            	${sanPham.danhMuc.tenDanhMuc.equals("Thời trang trẻ em")?"kid":"" }
            	${sanPham.danhMuc.tenDanhMuc.equals("Mĩ phẩm")?"accessories":"" }
            	${sanPham.danhMuc.tenDanhMuc.equals("Phụ kiện")?"cosmetic":"" }
            '>
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}img/products/${sanPham.urlAvatar1}">
                        <c:if test="${sanPham.thoiGianTao!=null?sanPham.thoiGianTao.plusDays(7).toLocalDate().isAfter(homNay):false}"><div class="label new">New</div></c:if>
                        <c:if test="${sanPham.giamGia!=0}"><div class="label sale">Sale</div></c:if>
                        
                        <ul class="product__hover">
                            <li><a href="${pageContext.request.contextPath}/img/products/${sanPham.urlAvatar1}" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#" ><span class="icon_heart_alt"></span></a></li>
                            <li><a onclick="themVaoGioHang(${sanPham.id})"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="${pageContext.request.contextPath}/product/${sanPham.id}">${sanPham.tenSanPham }</a></h6>
                        
                        <div class="product__price">
                        	<fmt:setLocale value = "vi_VN"/>
         					<fmt:formatNumber value = "${sanPham.gia}" type = "currency"/>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
            
        </div>
    </div>
</section>
<!-- Product Section End -->



<!-- Trend Section Begin -->
<section class="trend spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Hot Trend</h4>
                    </div>
                    <c:forEach items="${dsSanPhamHot }" var="sanPham">
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="${pageContext.request.contextPath}/img/products/${sanPham.urlAvatar1}" alt="" >
                        </div>
                        <div class="trend__item__text">
                            <h6><a href="${pageContext.request.contextPath}/product/${sanPham.id}">${sanPham.tenSanPham }</a></h6>
                            
                            <div class="product__price">
                            	<fmt:setLocale value = "vi_VN"/>
         						<fmt:formatNumber value = "${sanPham.gia}" type = "currency"/>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Feature</h4>
                    </div>
                    <c:forEach items="${dsSanPhamYeuThich }" var="sanPham">
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="${pageContext.request.contextPath}/img/products/${sanPham.urlAvatar1}" alt="" >
                        </div>
                        <div class="trend__item__text">
                            <h6><a href="${pageContext.request.contextPath}/product/${sanPham.id}">${sanPham.tenSanPham }</a></h6>
                            
                            <div class="product__price">
                            	<fmt:setLocale value = "vi_VN"/>
         						<fmt:formatNumber value = "${sanPham.gia}" type = "currency"/>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Best seller</h4>
                    </div>
                    <c:forEach items="${dsSanPhamGiamGia }" var="sanPham">
                    <div class="trend__item">
                        <div class="trend__item__pic"> 
                            <img src="${pageContext.request.contextPath}/img/products/${sanPham.urlAvatar1}" alt="" >
                        </div>
                        <div class="trend__item__text">
                            <h6><a href="${pageContext.request.contextPath}/product/${sanPham.id}">${sanPham.tenSanPham }</a></h6>
                            
                            <div class="product__price">
								<fmt:setLocale value = "vi_VN"/>
         						<fmt:formatNumber value = "${sanPham.gia}" type = "currency"/>
							</div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Trend Section End -->

<!-- Services Section Begin -->
<section class="services spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-car"></i>
                    <h6>Free Shipping</h6>
                    <p>For all oder over $99</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-money"></i>
                    <h6>Money Back Guarantee</h6>
                    <p>If good have Problems</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-support"></i>
                    <h6>Online Support 24/7</h6>
                    <p>Dedicated support</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-headphones"></i>
                    <h6>Payment Secure</h6>
                    <p>100% secure payment</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Blog</h4>
                </div>
            </div>
        </div>
        <div class="row">
        	<c:forEach items="${dsBaiViet }" var="baiViet">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/img/blogs/${baiViet.urlAvatar}"></div>
                    <div class="blog__item__text">
                        <h6><a href="${pageContext.request.contextPath}/blog/${baiViet.id}">${baiViet.moTaNgan}</a></h6>
                        <ul>
                            <li>Viết bởi <span>${baiViet.taiKhoan.tenDangNhap}</span></li>
                            <li>${baiViet.thoiGianTao}</li>
                        </ul>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Blog Section End-->

<jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>