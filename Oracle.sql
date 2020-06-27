create tablespace student_examination_sys
datafile 'D:\oradata\orcl\student_examination_sys.dbf'
size 20M
autoextend on next 5M
maxsize 100M;

CREATE TABLE student(
id VARCHAR2(3) PRIMARY KEY,
NAME VARCHAR2(20),
age number,
sex CHAR(2))tablespace student_examination_sys

INSERT INTO student VALUES('001','张三',18,'男');
INSERT INTO student VALUES('002','李四',20,'女');
SELECT * FROM student


CREATE TABLE SUBJECT(
id VARCHAR2(4) PRIMARY KEY,
SUBJECT VARCHAR2(10),
teacher VARCHAR2(10),
DESCRIPTION VARCHAR2(30))tablespace student_examination_sys

INSERT INTO SUBJECT VALUES('1001','语文','王老师','本次考试比较简单');
INSERT INTO SUBJECT VALUES('1002','数学','刘老师','本次考试比较难');
SELECT * FROM SUBJECT


CREATE TABLE score(
id number PRIMARY KEY,
student_id VARCHAR2(3),
subject_id VARCHAR2(4),
score FLOAT,
FOREIGN KEY(student_id) REFERENCES student(id),
FOREIGN KEY(subject_id) REFERENCES SUBJECT(id)
)tablespace student_examination_sys

INSERT INTO score VALUES(1,'001','1001',80);
INSERT INTO score VALUES(2,'002','1002',60);
INSERT INTO score VALUES(3,'001','1001',70);
INSERT INTO score VALUES(4,'002','1002',60.5);

SELECT * FROM score
