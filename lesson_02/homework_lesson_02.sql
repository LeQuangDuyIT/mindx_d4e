/*
Bài tập 1 - Phần 3: 
Trong bảng HOADON, nếu xóa cột OrderLine, khi đó, trường thông tin nào sẽ làm khóa chính cho bảng?
*/

SELECT
DISTINCT OrderID, ProductID
FROM HOADON

/*
Bài tập 2: Áp dụng các toán tử so sánh để xây dựng các câu truy vấn phục vụ cho việc chuẩn bị dữ liệu
Đề bài : Anh Lê Đức Hiếu, giám đốc bán hàng của công ty đề xuất sẽ tung ra 1 chiến dịch truyền thông giảm giá 10% cho tất cả hoá đơn mua hàng vào ngày 3/4/2022 (MM/DD/YYYY).
Do vậy anh muốn bạn hãy lấy ra các đơn hàng mua hàng trước ngày 3/4/2022 để có số liệu đối chiếu xem chiến dịch truyền thông giảm giá có ảnh hưởng đến quyết định mua sắm.
Bạn hãy chuẩn bị dữ liệu bằng cách lấy ra các đơn hàng có ngày lập hoá đơn trước ngày 3/4/2022
*/

SELECT
*
FROM HOADON
WHERE DateCreate < CAST('2022-03-04' AS DATE);


/*
Bài tập 3: Áp dụng các toán tử logic để xây dựng các câu truy vấn phục vụ cho việc chuẩn bị dữ liệu
Bài tập 3.1:
Đề bài : Hiện tại các tỉnh miền Trung đang bị ảnh hưởng chung bởi bão, lũ. Nhất là 2 tỉnh Quảng Bình và Quảng Trị. 	
*/

/*
Bài tập 3.2:
Đề bài: Do ảnh hưởng của bão, lũ. Công ty quyết định cho các nhân viên có quê ở các tỉnh miền Trung bị ảnh hưởng được tạm nghỉ về nhà để giúp đỡ gia đình phòng chống bão, lũ. Bạn hãy chuẩn bị cho BOD 2 danh sách nhân viên gồm: 
Danh sách các nhân sự ở miền Trung được tạm nghỉ về quê
Danh sách các nhân sự ở lại làm việc.
	Biết rằng, các tỉnh miền Trung bị ảnh hưởng bởi bão, lũ gồm các tỉnh Nghệ An, Hà Tĩnh, Quảng Bình, Quảng Trị và Thừa Thiên Huế. 
*/

SELECT
*
FROM NHANVIEN
WHERE Address IN (N'Nghệ An', N'Hà Tĩnh', N'Quảng Bình', N'Quảng Trị', N'Thừa Thiên Huế')

SELECT
*
FROM NHANVIEN
WHERE Address NOT IN (N'Nghệ An', N'Hà Tĩnh', N'Quảng Bình', N'Quảng Trị', N'Thừa Thiên Huế')

/*
Bài tập 4: Áp dụng các hàm để xác định dữ liệu NULL và xử lý dữ liệu NULL
Đề bài : Do lỗi trong quá trình nhập liệu nên có một số nhân viên có ngày onboarding bị để trống.
BOD muốn bạn tìm ra các nhân viên đó và thay thế ngày onboarding từ NULL thành ngày 1/1/2020. 
*/

UPDATE NHANVIEN
SET StartDate='2020-01-01'
WHERE StartDate IS NULL

SELECT
*
FROM NHANVIEN
