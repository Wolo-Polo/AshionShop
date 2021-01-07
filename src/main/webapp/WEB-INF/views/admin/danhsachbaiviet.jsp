<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="_top.jsp"/>

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Quản lý danh sách bài viết</h1>
          <!-- DataTales -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh sách các bài viết</h6>
            </div>
            <div class="card-body">
              <div class="mb-2">
				<a href="${pageContext.request.contextPath}/admin/addblog">
					<button class="btn bg-info">
						<i class="fa fa-plus-square fa-1x"></i> Thêm bài viết mới
					</button>
				</a>
			  </div>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Tiêu đề</th>
                      <th>Mô tả ngắn</th>
                      <th>Avatar</th>
                      <th>Tài khoản viết</th>
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
                      <th>Tiêu đề</th>
                      <th>Mô tả ngắn</th>
                      <th>Avatar</th>
                      <th>Tài khoản viết</th>
                      <th>Thời gian tạo</th>
                      <th>Trạng thái</th>
                      <th>Xem chi tiết</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  	<c:forEach items="${dsBaiViet }" var="baiViet">
                    <tr>
                      <td>${baiViet.id }</td>
                      <td>${baiViet.tieuDe }</td>
                      <td>${baiViet.moTaNgan }</td>
                      <td><img src="${pageContext.request.contextPath}/img/blogs/${baiViet.urlAvatar }" width="100px"/></td>
                      <td>${baiViet.taiKhoan.tenDangNhap }</td>
                      <td>${baiViet.thoiGianTao }</td>
                      <td>${baiViet.trangThai }</td>
                      <td><a href="${pageContext.request.contextPath}/blog/${baiViet.id }">Xem chi tiết</a></td>
                      <td>
                      	<a href="${pageContext.request.contextPath}/admin/editblog/${baiViet.id }">
							<button class="btn bg-warning">
								<i class="fa fa-cog" aria-hidden="true"></i> Sửa
							</button>
						</a>
					  </td>
                      <td>
                      	<a href="${pageContext.request.contextPath}/admin/deleteblog/${baiViet.id }" >
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