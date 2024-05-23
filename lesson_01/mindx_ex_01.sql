USE MindX_Lec_01

DROP TABLE IF EXISTS STUDENTS

CREATE TABLE STUDENTS
(
    sID CHAR(5),
    sFirstName VARCHAR(10),
    sLastName VARCHAR(10),
    sPhone CHAR(10),
    sAddress VARCHAR(50)  
)

INSERT INTO STUDENTS VALUES
('HS424', 'Van A', 'Nguyen', '0894964949', 'Ha Noi'),
('HS425', 'Van B', 'Le', '0894964949', 'An Giang'),
('HS426', 'Van C', 'Tran', '0894964949', 'Lam Dong'),
('HS427', 'Van D', 'Nguyen', '0894964949', 'TP Ho Chi Minh')

SELECT *
FROM STUDENTS