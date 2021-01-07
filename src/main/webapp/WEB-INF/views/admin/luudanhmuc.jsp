<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="_top.jsp"/>
	
	<!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản lý danh mục sản phẩm</h1>
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Thêm/sửa danh mục</h6>
            </div>
            <div class="card-body">
            	<form:form method="post" action="/admin/savecategory" modelAttribute="danhMuc" enctype="multipart/form-data">
					<c:if test="${not empty message}">
						<div class="alert alert-primary" role="alert">
							<c:out value="${message }"></c:out>
						</div>
					</c:if>
					<form:hidden path="id"/>
					<div class="form-group">
						<label>Tên danh mục</label>
						<form:input type="text" class="form-control" path="tenDanhMuc" />
					
					</div>
					<div class="form-group">
						<label>Mô tả</label>
						<form:input type="text" class="form-control" path="moTa" />
					</div>
					<div class="form-group">
						<label>Ảnh đại diện</label>
						<input type="file" class="form-control" name="avatar"/>
					</div>
					<div class="form-group">
						<label>Loại danh mục</label><br/>
						<select class="form-control form-control-line" name="loaiDanhMuc" id="loaiDanhMuc" onclick="selectDanhMuc()">
    						<option value="danhMucGoc">Danh mục gốc</option>
    						<option value="danhMucThuong">Danh mục thường</option>
  						</select>
  						<p>* danh mục gốc sẽ không có danh mục cha</p>
					</div>
					<div class="form-group">
						<label>Danh mục cha (nếu là loại danh mục thành phần)</label>
						<form:select class="form-control form-control-line" path="danhMucCha.id" disabled="true" id="danhMucCha">
							<form:options items="${dsDanhMuc}" itemValue="id" itemLabel="tenDanhMuc" />
						</form:select>
					</div>
					<button type="submit" class="btn btn-primary">Lưu</button>
				</form:form>
            </div>
    </div>        
	
	<script type="text/javascript">
		function selectDanhMuc(){
			if(document.getElementById('loaiDanhMuc').value=='danhMucGoc'){
				document.getElementById("danhMucCha").disabled = true;
			}
			if(document.getElementById('loaiDanhMuc').value=='danhMucThuong'){
				document.getElementById("danhMucCha").disabled = false;
			}
		}
	</script>
	
<jsp:include page="_bottom.jsp"/>