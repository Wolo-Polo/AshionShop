<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="_top.jsp"/>
	
	<!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản lý tài khoản-người dùng</h1>
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Thêm/sửa tài khoản-người dùng</h6>
            </div>
            <div class="card-body">
            	<form:form method="post" action="/admin/saveuseraccount" modelAttribute="taiKhoan" enctype="multipart/form-data">
					<c:if test="${not empty message}">
						<div class="alert alert-primary" role="alert">
							<c:out value="${message }"></c:out>
						</div>
					</c:if>
					<form:hidden path="id"/>
					<form:hidden path="nguoiDung.id"/>
					<div class="form-group">
						<label>Tên đăng nhập</label>
						<form:input type="text" class="form-control" path="tenDangNhap" />
					
					</div>
					<div class="form-group">
						<label>Mật khẩu</label>
						<form:input type="password" class="form-control" path="matKhau" />
					</div>
					<div class="form-group">
						<label>Họ và tên người dùng</label>
						<form:input type="text" class="form-control" path="nguoiDung.tenDayDu" />
					
					</div>
					<div class="form-group">
						<label>Ảnh đại diện</label>
						<input type="file" class="form-control" name="avatar"/>
					</div>
					<div class="form-group">
						<label>Email</label>
						<form:input type="text" class="form-control" path="nguoiDung.email" />
					
					</div>
					<div class="form-group">
						<label>Số điện thoại</label>
						<form:input type="text" class="form-control" path="nguoiDung.soDienThoai" />
					
					</div>
					<div class="form-group">
						<label>Địa chỉ</label>
						<form:input type="text" class="form-control" path="nguoiDung.diaChi" />
					
					</div>
					
					<button type="submit" class="btn btn-primary">Lưu</button>
				</form:form>
            </div>
    </div>        
	
	
<jsp:include page="_bottom.jsp"/>