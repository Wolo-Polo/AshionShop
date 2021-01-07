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
						<a href="${pageContext.request.contextPath}/home"><i class="fa fa-home"></i> Home</a> <span>Shopping
							cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6 class="coupon__link">
						<span class="icon_tag_alt"></span> <a href="#">Bạn có mã giảm giá?</a>
						Ấn vào đây để nhập mã giảm giá
					</h6>
				</div>
			</div>
			<form action="${pageContext.request.contextPath}/saveorder" class="checkout__form" method="post">
				<div class="row">
					<div class="col-lg-8">
						<h5>Chi tiết thanh toán</h5>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										Họ đệm <span>*</span>
									</p>
									<input type="text" name="hoDem" required="required">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										Tên <span>*</span>
									</p>
									<input type="text" name="ten" required="required">
								</div>
							</div>
							<div class="col-lg-12">
								<!-- 
								<div class="checkout__form__input">
									<p>
										Country <span>*</span>
									</p>
									<input type="text">
								</div>
								 -->
								<div class="checkout__form__input">
									<p>
										Địa chỉ <span>*</span>
									</p>
									<!-- <input type="text" placeholder="Địa chỉ">  -->
									<input type="text" name="diaChi" required="required"
										placeholder="Tỉnh/thành phố, huyện/thị trấn, xã/phường, thôn/xóm/phố/đường, số nhà">
								</div>
								<!-- 
								<div class="checkout__form__input">
									<p>
										Town/City <span>*</span>
									</p>
									<input type="text">
								</div>
								<div class="checkout__form__input">
									<p>
										Country/State <span>*</span>
									</p>
									<input type="text">
								</div>
								<div class="checkout__form__input">
									<p>
										Postcode/Zip <span>*</span>
									</p>
									<input type="text">
								</div>
								-->
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										Số điện thoại <span>*</span>
									</p>
									<input type="tel" name="soDienThoai" required="required">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="checkout__form__input">
									<p>
										Email <span>*</span>
									</p>
									<input type="email" name="email" required="required">
								</div>
							</div>
							<!-- 
							<div class="col-lg-12">
								<div class="checkout__form__checkbox">
									<label for="acc"> Create an acount? <input
										type="checkbox" id="acc"> <span class="checkmark"></span>
									</label>
									<p>
										Create am acount by entering the information below. If you are
										a returing customer login at the <br />top of the page
									</p>
								</div>
								<div class="checkout__form__input">
									<p>
										Account Password <span>*</span>
									</p>
									<input type="text">
								</div>
								<div class="checkout__form__checkbox">
									<label for="note"> Note about your order, e.g, special
										noe for delivery <input type="checkbox" id="note"> <span
										class="checkmark"></span>
									</label>
								</div>
								 -->
							<div class="col-lg-12">
								<div class="checkout__form__input">
									<p>
										Ghi chú <span>*</span>
									</p>
									<input type="text" name="ghiChu"
										placeholder="Note about your order, e.g, special noe for delivery">
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="checkout__order">
							<h5>Danh sách sản phẩm</h5>
							<div class="checkout__order__product">
								<ul>
									<li><span class="top__text">Sản phẩm</span> <span
										class="top__text__right">Tổng tiền</span></li>
									<c:forEach items="${dsSanPham}" var="sanPham">
									<li>${sanPham.key.tenSanPham } x${sanPham.value }
										<span>
											<fmt:setLocale value = "vi_VN"/>
	                                   		<fmt:formatNumber value = "${sanPham.key.gia*sanPham.value }" type = "currency"/>
	                                   	</span>
	                                </li>
									</c:forEach>
								</ul>
							</div>
							<div class="checkout__order__total">
								<ul>
									<!-- <li>Subtotal <span>$ 750.0</span></li> -->
									<li>Tổng tiền
										<span>
											<fmt:setLocale value = "vi_VN"/>
	                                   		<fmt:formatNumber value = "${tongTien}" type = "currency"/>
										</span>
									</li>
								</ul>
							</div>
							<!-- 
							<div class="checkout__order__widget">
								<label for="o-acc"> Create an acount? <input
									type="checkbox" id="o-acc"> <span class="checkmark"></span>
								</label>
								<p>Create am acount by entering the information below. If
									you are a returing customer login at the top of the page.</p>
								<label for="check-payment"> Cheque payment <input
									type="checkbox" id="check-payment"> <span
									class="checkmark"></span>
								</label> <label for="paypal"> PayPal <input type="checkbox"
									id="paypal"> <span class="checkmark"></span>
								</label>
							</div>
							 -->
							<button type="submit" class="site-btn">Đặt hàng</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- Checkout Section End -->

	<jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>