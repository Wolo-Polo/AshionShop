function themVaoGioHang(maSanPham) {
			var sanPham = {
					"idSanPham": maSanPham,
					"soLuong":1
			};
			$.ajax({
				url: "/cart/additem",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(sanPham), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					alert("Đã thêm sản phẩm vào giỏ hàng!");
					$("#sizecart1").html(jsonResult);
					$("#sizecart2").html(jsonResult);
				}
			});
		}
function reloadCart(id){
	
	$("#sanphamxoa").val(id);
	document.getElementById("cartform").submit();
}