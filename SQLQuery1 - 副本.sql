
CREATE TABLE Admin_info          
(
	Username NVARCHAR(16) PRIMARY KEY,
	Password NVARCHAR(16)
) 

CREATE TABLE Student_info
(
	Username NVARCHAR(16) PRIMARY KEY,
	Password NVARCHAR(16),
	Sname NVARCHAR(16),
	Ssex  NVARCHAR(5),
	Sage INT CHECK(Sage>=1990 and Sage<=2010),
	Sdept NVARCHAR(16),
	Sclass NVARCHAR(16),
	Grade NVARCHAR(16)
)

CREATE TABLE Teacher_info(
	Username NVARCHAR(16) PRIMARY KEY,
	Password NVARCHAR(16),
	Tname NVARCHAR(16),
	Tsex NVARCHAR(5),
	Tage INT CHECK(Tage>=1940 AND Tage<=2000),
	Tjob NVARCHAR(16)
	
)

CREATE TABLE Course_info
(
	Cno NVARCHAR(16) PRIMARY KEY,
	Cname NVARCHAR(16),
	Tno NVARCHAR(16),
	Cday NVARCHAR(16),
	Ctime NVARCHAR(5),
	FOREIGN KEY(Tno) REFERENCES Teacher_info(Username),
)

CREATE TABLE SC
(
	Sno NVARCHAR(16),
	Cno NVARCHAR(16),
	Score INT CHECK(Score>=0 AND Score<=100),
	PRIMARY KEY(Sno,Cno),
	FOREIGN KEY(Sno) REFERENCES Student_info(Username),
	FOREIGN KEY(Cno) REFERENCES Course_info(Cno),
)