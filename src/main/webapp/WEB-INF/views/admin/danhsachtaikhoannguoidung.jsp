<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="_top.jsp"/>

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Quản lý danh sách tài khoản-người dùng</h1>
          <!-- DataTales -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh sách tài khoản-người dùng</h6>
            </div>
            <div class="card-body">
              <div class="mb-2">
				<a href="${pageContext.request.contextPath}/admin/adduseraccount">
					<button class="btn bg-info">
						<i class="fa fa-plus-square fa-1x"></i> Thêm tài khoản-người dùng
					</button>
				</a>
			  </div>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id Tài khoản</th>
                      <th>Tên đăng nhập</th>
                      <th>Tên người dùng</th>
                      <th>Avatar</th>
                      <th>Email</th>
                      <th>Số điện thoại</th>
                      <th>Địa chỉ</th>
                      <th>Thời gian tạo</th>
                      <th>Trạng thái</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Id Tài khoản</th>
                      <th>Tên đăng nhập</th>
                      <th>Tên người dùng</th>
                      <th>Avatar</th>
                      <th>Email</th>
                      <th>Số điện thoại</th>
                      <th>Địa chỉ</th>
                      <th>Thời gian tạo</th>
                      <th>Trạng thái</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  	<c:forEach items="${dsTaiKhoan }" var="taiKhoan">
                    <tr>
                      <td>${taiKhoan.id }</td>
                      <td>${taiKhoan.tenDangNhap }</td>
                      <td>${taiKhoan.nguoiDung.tenDayDu }</td>
                      <td><img src="${pageContext.request.contextPath}/img/users/${taiKhoan.nguoiDung.urlAvatar }" width="100px"/></td>
                      <td>${taiKhoan.nguoiDung.email }</td>
                      <td>${taiKhoan.nguoiDung.soDienThoai }</td>
                      <td>${taiKhoan.nguoiDung.diaChi }</td>
                      <td>${taiKhoan.thoiGianTao }</td>
                      <td>${taiKhoan.trangThai }</td>
                      <td>
                      	<a href="${pageContext.request.contextPath}/admin/edituseraccount/${taiKhoan.id }">
							<button class="btn bg-warning">
								<i class="fa fa-cog" aria-hidden="true"></i> Sửa
							</button>
						</a>
					  </td>
                      <td>
                      	<a href="${pageContext.request.contextPath}/admin/deleteuseraccount/${taiKhoan.id }" >
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