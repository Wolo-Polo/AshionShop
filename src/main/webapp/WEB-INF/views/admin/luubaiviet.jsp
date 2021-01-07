<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="_top.jsp"/>
	
	<!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản lý bài viết</h1>
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Thêm/sửa bài viết</h6>
            </div>
            <div class="card-body">
            	<form:form method="post" action="/admin/saveblog" modelAttribute="baiViet" enctype="multipart/form-data">
					<c:if test="${not empty message}">
						<div class="alert alert-primary" role="alert">
							<c:out value="${message }"></c:out>
						</div>
					</c:if>
					<form:hidden path="id"/>
					<div class="form-group">
						<label>Tiêu đề bài viết</label>
						<form:input type="text" class="form-control" path="tieuDe" />
					</div>
					<div class="form-group">
						<label>Mô tả ngắn</label>
						<form:textarea type="text" class="form-control" path="moTaNgan" />
					</div>					
					<div class="form-group">
						<label>Ảnh đại diện (sẽ hiển thị ở trang Blogs)</label>
						<input type="file" class="form-control" name="avatar"/>
					</div>
					<div class="form-group">
						<label>Mô tả</label>
						<form:textarea class="form-control" path="noiDung" id="summernote"/>
					</div>
					<div class="form-group">
						<label>Chọn tài khoản đăng bài</label>
						<form:select class="form-control form-control-line" path="taiKhoan">
							<form:options items="${dsTaiKhoan}" itemValue="id" itemLabel="tenDangNhap" />
						</form:select>
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