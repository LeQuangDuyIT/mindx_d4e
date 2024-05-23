DROP TABLE IF EXISTS STUDENTS
CREATE TABLE STUDENTS (
    sID CHAR(5),
    sFirstName VARCHAR(10),
    sLastName VARCHAR(10),
    sPhone CHAR(10),
    sAddress VARCHAR(50)
)
-- 2.1.2 Insert dữ liệu vào bảng STUDENTS


INSERT INTO STUDENTS VALUES
('M0001', 'Minh' , 'Nguyen' ,'0323456789',  'Quang Binh'),
('M0002', 'Hai'  , 'Do'     ,'0143456789',  'Ha Nôi'),
('M0003', 'Bao'  , 'Nguyen' ,'0123656789',  'Quang Binh'),
('M0004', 'Thuan', 'Tran'   , '0123456289', 'Sai Gon'),
('M0005', 'Thao' , 'Doan'   ,'0223456589',  'Sai Gon'),
('M0006', 'Giau' , 'Le'     ,'0723456459',  'Binh Phuoc'),
('M0007', 'Khoa' , 'Tran'   ,'0343452780',  'Dong Nai')


-- 2.2 Bảng COURSE
-- 2.2.1 Tạo ra cấu trúc của bảng
DROP TABLE IF EXISTS COURSE
CREATE TABLE COURSE
(
    cID  CHAR(5),
    cMajor VARCHAR(10),
    cName  VARCHAR(30)
)
-- 2.2.2 Thêm dữ liệu vào bảng COURSE


INSERT INTO COURSE VALUES
('MC001', 'Data', 'D4E'),
('MC002', 'Data', 'BI'),
('MC003', 'Data', 'BE Basic'),
('MC004', 'Web' , 'Web Basic'),
('MC005', 'Web' , 'FullStack'),
('MC006', 'Finance', 'FM Basic'),
('MC007', 'Finance', 'FM Intensive')


-- 2.3 Tạo bảng TEACHER
-- 2.3.1 Tạo cấu trúc bảng
DROP TABLE IF EXISTS TEACHER
CREATE TABLE TEACHER
(
    tID CHAR(5),
    tFirstName VARCHAR(10),
    tLastName VARCHAR(10),
    tPhone CHAR(10),
    tType  int,
    tMajor VARCHAR(10)
)
-- 2.3.2 Thêm dữ liệu vào bảng TEACHER.
INSERT INTO TEACHER VALUES
('T0001', 'Bao',   'Nguyen', '0233456789', 1, 'Finance'),
('T0002', 'Duy',   'Vo',     '0233456789', 1, 'Web'),
('T0003', 'Khoa',  'Dao',    '0113656789', 0, 'Web'),
('T0004', 'Phuoc', 'Nguyen', '0347456289', 0, 'Finance'),
('T0005', 'Nghia', 'Cao',    '0562456590', 0, 'Data'),
('T0006', 'Ha',    'San',    '0783456459', 1, 'Data')

SELECT
*
FROM TEACHER
WHERE tType = 0

SELECT
*
FROM TEACHER
WHERE tType = 1

SELECT
*
FROM STUDENTS
WHERE sAddress = 'Nghe An'

DELETE FROM COURSE
WHERE cMajor = 'Finance'

DELETE FROM TEACHER
WHERE tMajor = 'Finance'

UPDATE COURSE
SET cName = 'Web', cMajor = 'Web'
WHERE cName = 'BE Basic'


UPDATE TEACHER
SET tMajor = 'Data'
WHERE tFirstName = 'Khoa'