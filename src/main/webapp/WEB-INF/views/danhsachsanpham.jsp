<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__categories">
                            <div class="section-title">
                                <h4>Danh mục sản phẩm</h4>
                            </div>
                            <div class="categories__accordion">
                                <div class="accordion" id="accordionExample">
									<div class="card">
										<div class="card-heading">
											<a href="${pageContext.request.contextPath}/shop">Tất cả sản phẩm</a>

										</div>
									</div>
									<c:forEach items="${dsDanhMuc}" var="danhMucCha">
                                    <div class="card">
                                        <div class="card-heading">
                                            <c:if test="${danhMucCha.value.size()==0}">
                                            	<a href="${pageContext.request.contextPath}/shop/category/${danhMucCha.key.id}">${danhMucCha.key.tenDanhMuc}</a>
                                            </c:if>
                                            <c:if test="${danhMucCha.value.size()!=0}">
                                            	<a data-toggle="collapse" data-target="#collapseDanhMuc${danhMucCha.key.id}">${danhMucCha.key.tenDanhMuc}</a>
                                           	</c:if>
                                        </div>
                                        <c:if test="${danhMucCha.value.size()!=0}">
                                        <div id="collapseDanhMuc${danhMucCha.key.id}" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                	<c:forEach items="${danhMucCha.value}" var="danhMucCon">
                                                    <li><a href="${pageContext.request.contextPath}/shop/category/${danhMucCon.id}">${danhMucCon.tenDanhMuc }</a></li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                        </c:if>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__filter">
                            <div class="section-title">
                                <h4>Lọc theo giá</h4>
                            </div>
                            <div class="filter-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="0" data-max="10000000"></div>
                                <div class="range-slider">
                                    <div class="price-input">
                                        <p>Giá (VND):</p><br/>
                                        <input type="text" id="minamount">
                                        <input type="text" id="maxamount">
                                    </div>
                                </div>
                            </div>
                            <a href="#" onclick="loc()">Filter</a>
                        </div>
                        
                        
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="row">
                    	<c:forEach items="${dsSanPham }" var="sanPham">
            				<div class='col-lg-3 col-md-4 col-sm-6 mix
            					${sanPham.danhMuc.tenDanhMuc.equals("Thời trang nữ")?"women":"" }
            					${sanPham.danhMuc.tenDanhMuc.equals("Thời trang nam")?"men":"" }
            					${sanPham.danhMuc.tenDanhMuc.equals("Thời trang trẻ em")?"kid":"" }
            					${sanPham.danhMuc.tenDanhMuc.equals("Mĩ phẩm")?"accessories":"" }
            					${sanPham.danhMuc.tenDanhMuc.equals("Phụ kiện")?"cosmetic":"" }
            				'>
	                			<div class="product__item">
	                		    	<div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/img/products/${sanPham.urlAvatar1}">
	                        			<c:if test="${sanPham.thoiGianTao!=null?sanPham.thoiGianTao.plusDays(7).toLocalDate().isAfter(homNay):false}"><div class="label new">New</div></c:if>
	                        			<c:if test="${sanPham.giamGia!=0}"><div class="label sale">Sale</div></c:if>
	                        
	                        		<ul class="product__hover">
	                            		<li><a href="${pageContext.request.contextPath}/img/products/${sanPham.urlAvatar1}" class="image-popup"><span class="arrow_expand"></span></a></li>
	                            		<li><a href="#"><span class="icon_heart_alt"></span></a></li>
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
                       
                        <div class="col-lg-12 text-center">
                            <div class="pagination__option">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

 	<jsp:include page="_footer.jsp"></jsp:include>
 	<script type="text/javascript">
		function loc(){
			window.location.href='/shop/minamount='+document.getElementById('minamount').value+'&maxamount='+document.getElementById('maxamount').value;

		}
 	</script>
 	
</body>

</html>