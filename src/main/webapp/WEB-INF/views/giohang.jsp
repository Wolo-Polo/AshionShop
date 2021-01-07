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
                        <span> Giỏ hàng</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
        	<form action="${pageContext.request.contextPath}/cart/reload" method="post" id="cartform">
    		<div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${dsSanPham}" var="sanPham">
                                <tr class="sanpham">
                                    <td class="cart__product__item">
                                        <img src="img/products/${sanPham.key.urlAvatar1 }" width="100px" alt="">
                                        <div class="cart__product__item__title">
                                            <h6>${sanPham.key.tenSanPham }</h6>
                                        </div>
                                    </td>
                                    <td class="cart__price" class="dongia">
                                    	<fmt:setLocale value = "vi_VN"/>
                                    	<fmt:formatNumber value = "${sanPham.key.gia}" type = "currency"/>
                                    </td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                            <input type="text" name=${sanPham.key.id } value="${sanPham.value }" class="soluong">
                                        </div>
                                    </td>
                                    
                                    <td class="cart__total" class="thanhtien">
                                    	<fmt:setLocale value = "vi_VN"/>
                                    	<fmt:formatNumber value = "${sanPham.key.gia*sanPham.value }" type = "currency"/>
                                    </td>
                                    <td class="cart__close">
                                    	
                                    	<span class="icon_close" onclick="reloadCart(${sanPham.key.id})"></span>
                                    	
                                    </td>
                                </tr>
                                </c:forEach>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <input type="hidden" name="idsanphamxoa" id="sanphamxoa"/>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn">
                        <a href="${pageContext.request.contextPath}/shop"> Continue Shopping</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn update__btn">
                        <a href="#" onclick='document.getElementById("cartform").submit()'><span class="icon_loading"></span> Cập nhật giỏ hàng</a>
                    </div>
                </div>
            </div>
            </form>
            <div class="row">
                <div class="col-lg-6">
                    <div class="discount__content">
                        <h6>Mã giảm giá</h6>
                        <form action="#">
                            <input type="text" placeholder="Nhập mã giảm giá (nếu có)">
                            <button type="submit" class="site-btn"> Áp dụng</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-2">
                    <div class="cart__total__procced">
                        <h6>Chi phí</h6>
                        <ul>
                            <li>Tổng chi phí 
                            	<span>
                            		<fmt:setLocale value = "vi_VN"/>
                                   	<fmt:formatNumber value = "${tongTien}" type = "currency"/>
                                </span>
                           	</li>
                            <li>Tổng chi phí sau khi đã tính mã giảm giá <span></span></li>
                        </ul>
                        <a href="${pageContext.request.contextPath}/checkout" class="primary-btn">Đặt hàng ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->
    
    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>