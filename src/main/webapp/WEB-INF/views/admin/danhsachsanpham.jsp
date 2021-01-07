<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="_top.jsp"/>

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Quản lý sản phẩm</h1>
          <!-- DataTales -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh sách sản phẩm</h6>
            </div>
            <div class="card-body">
              <div class="mb-2">
				<a href="${pageContext.request.contextPath}/admin/addproduct">
					<button class="btn bg-info">
						<i class="fa fa-plus-square fa-1x"></i> Thêm sản phẩm mới
					</button>
				</a>
			  </div>
			  <c:if test="${not empty message}">
			  	<div class="alert alert-primary" role="alert">
					<c:out value="${message }"></c:out>
				</div>
			  </c:if>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Tên sản phẩm</th>
                      <th>Danh mục</th>
                      <th>Thời gian tạo</th>
                      <th>Trạng thái</th>
                      <th>Xem chi tiết</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Id</th>
                      <th>Tên sản phẩm</th>
                      <th>Danh mục</th>
                      <th>Thời gian tạo</th>
                      <th>Trạng thái</th>
                      <th>Xem chi tiết</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  	<c:forEach items="${dsSanPham }" var="sanPham">
                    <tr>
                      <td>${sanPham.id }</td>
                      <td>${sanPham.tenSanPham }</td>
                      <td>${sanPham.danhMuc.tenDanhMuc }</td>
                      <td>${sanPham.thoiGianTao }</td>
                      <td>${sanPham.trangThai }</td>
                      <td><a href="${pageContext.request.contextPath}/admin/product/${sanPham.id}">Chi tiết</a></td>
                      <td>
                      	<a href="${pageContext.request.contextPath}/admin/editproduct/${sanPham.id }">
							<button class="btn bg-warning">
								<i class="fa fa-cog" aria-hidden="true"></i> Sửa
							</button>
						</a>
					  </td>
                      <td>
                      	<a href="${pageContext.request.contextPath}/admin/deleteproduct/${sanPham.id }">
							<button class="btn bg-danger">
								<i class="fa fa-trash" aria-hidden="true"></i> Xóa
							</button>
						</a>
                      </td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
<jsp:include page="_bottom.jsp"/>