<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="_top.jsp"/>
	
	<!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản lý sản phẩm</h1>
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Thêm/sửa sản phẩm</h6>
            </div>
            <div class="card-body">
            	<form:form method="post" action="/admin/saveproduct" modelAttribute="sanPham" enctype="multipart/form-data">
					<c:if test="${not empty message}">
						<div class="alert alert-primary" role="alert">
							<c:out value="${message }"></c:out>
						</div>
					</c:if>
					<form:hidden path="id"/>
					<div class="form-group">
						<label>Tên sản phẩm</label>
						<form:input type="text" class="form-control" path="tenSanPham" />
					</div>
					<div class="form-group">
						<label>Loại sản phẩm</label>
						<form:select class="form-control form-control-line" path="danhMuc">
							<form:options items="${dsDanhMuc}" itemValue="id" itemLabel="tenDanhMuc" />
						</form:select>
					</div>
					<div class="form-group">
						<label>Giá</label>
						<form:input type="text" class="form-control" path="gia" />
					</div>
					<div class="form-group">
						<label>Phần trăm giảm giá</label>
						<form:input type="text" class="form-control" path="giamGia" />
					</div>
					<div class="form-group">
						<label>Mô tả ngắn</label>
						<form:input type="text" class="form-control" path="moTaNgan" />
					</div>
					<div class="form-group">
						<label>Mô tả</label>
						<form:textarea class="form-control" path="moTa" id="summernote"/>
					</div>
					<div class="form-group">
						<label>Ảnh đại diện 1</label>
						<input type="file" class="form-control" name="avatar1"/>
					</div>
					<div class="form-group">
						<label>Ảnh đại diện 2</label>
						<input type="file" class="form-control" name="avatar2"/>
					</div>
					<div class="form-group">
						<label>Ảnh đại diện 3</label>
						<input type="file" class="form-control" name="avatar3"/>
					</div>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</form:form>
            </div>
    </div>        
	
	
	
<jsp:include page="_bottom.jsp"/>
<!-- include summernote css/js-->
	<link href="summernote-0.8.18-dist/summernote.css" rel="stylesheet"/>
	<script src="summernote-0.8.18-dist/summernote.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	$('#summernote').summernote({
		  height: 200,   //set editable area's height
		  codemirror: { // codemirror options
		    theme: 'monokai'
		  }
		});
	</script>