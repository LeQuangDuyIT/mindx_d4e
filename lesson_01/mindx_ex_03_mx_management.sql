-- *** Bài 1: DICTIONARY TABLE

DROP TABLE IF EXISTS DICTIONARY

CREATE TABLE DICTIONARY
(
    columnName VARCHAR(50),
    columnDescription NVARCHAR(100)
)

INSERT INTO DICTIONARY VALUES
    ('ProductId', N'ID sản phẩm'),
    ('ProductName', N'Tên sản phẩm'),
    ('ProductCategoryID', N'ID phân loại sản phẩm'),
    ('CategoryName', N'Tên phân loại sản phẩm'),
    ('Price', N'Giá sản phẩm'),
    ('SalesStartDate', N'Ngày bắt đầu khuyến mãi'),
    ('SalesEndDate', N'Ngày kết thúc khuyến mãi');


SELECT
*
FROM DICTIONARY

/*
Đề bài 2.1: 
Quản lý muốn bạn truy vấn, lấy ra dữ liệu của các sản phẩm thuộc loại ‘Disk’ để làm báo cáo cho BOD.
Bạn hãy viết câu lệnh truy vấn trên CSDL đã tạo ở bài 1 để lấy ra kết quả mà quản lý mong muốn.
*/

SELECT
*
FROM SANPHAM
WHERE ProductCategoryID = 7

/*
Đề bài 2.2: (Bài tập khó)
Hiện tại các tỉnh miền Trung đang bị ảnh hưởng chung bởi bão, lũ. Nhất là 2 tỉnh Quảng Bình và Nghệ An.
BOD quyết định sẽ hỗ trợ cho các nhân viên có quê quán ở 2 tỉnh trên.
Bạn hãy viết câu lệnh truy vấn để tìm ra các nhân viên có quê quán từ 2 tỉnh trên.
*/

SELECT
*
FROM NHANVIEN
WHERE Address = N'Quảng Bình' OR Address = N'Nghệ An'

SELECT
*
FROM NHANVIEN

/*
Bài tập 3 : Cập nhật lại dữ liệu trong CSDL ( Câu lệnh UPDATE - DELETE - WHERE )
Đề bài 3.1: 
BOD nhận thấy các sản phẩm ‘Ổ cứng HDD 1TB’ bán khá chậm và thị trường cũng dần sử dụng ổ cứng SSD để có hiệu quả tốt hơn,
nên quyết định sẽ dừng bán sản phẩm này từ ngày 31/12/2022. Bạn hãy cập nhật lại dữ liệu trong CSDL đã tạo ở trên.
*/

UPDATE SANPHAM
SET SalesEndDate='2022-12-31'
WHERE ProductId='MXSP19'

SELECT
*
FROM SANPHAM

/*
Đề bài 3.2: 
Do trong quá trình làm việc, nhân viên có tên ‘Nguyễn Lê Chí Bẻo’ thể hiện tốt.
Nên BOD quyết định thăng chức cho nhân viên ‘Nguyễn Lê Chí Bẻo’ từ vị trí Bảo vệ thành vị trí
‘Trưởng bộ phận an ninh’ với mức lương mới là 150$.
Bạn hãy cập nhật lại chức danh và mức lương của nhân viên này trên CSDL. 
*/

UPDATE NHANVIEN
SET JobTitle=N'Trưởng bộ phận an ninh', Salary=150
WHERE EmID='MX004'

SELECT
*
FROM NHANVIEN

/*
Đề bài 3.3:
Do có vài sai phạm trong quá trình thực hiện báo cáo tài chính, nên nhân viên ‘Đỗ Đắc Hải’, vị trí Trưởng phòng tài vụ
bị giáng chức và buộc phải chuyển sang phòng Data để công tác với chức danh ‘Chuyên viên phân tích rủi ro’,
mức lương là 2000$. Bạn hãy cập nhật lại chức danh, phòng ban và mức lương cho nhân viên này.
*/

UPDATE NHANVIEN
SET JobTitle=N'Chuyên viên phân tích rủi ro', DepID=4, Salary=2000
WHERE EmID='MX003'

SELECT
*
FROM NHANVIEN