CREATE DATABASE SOF3021_WORKSHOP_DEMO;

GO
USE SOF3021_WORKSHOP_DEMO;
GO

CREATE TABLE hang (
	id BIGINT identity(1,1) NOT NULL,
	ma varchar(20) NULL,
	ten_hang nvarchar(100) NULL,
	CONSTRAINT hang_PK PRIMARY KEY (id),
	CONSTRAINT hang_UN UNIQUE (ma)
);

CREATE TABLE may_tinh (
	id BIGINT identity(1,1) NOT NULL,
	hang_id BIGINT NULL,
	ma varchar(20) NULL,
	ten_may_tinh nvarchar(100) NULL,
	gia float NULL,
	mau_sac nvarchar(100) NULL,
	mieu_ta nvarchar(100) NULL,
	CONSTRAINT may_tinh_PK PRIMARY KEY (id),
	CONSTRAINT may_tinh_UN UNIQUE (ma),
	CONSTRAINT may_tinh_FK FOREIGN KEY (hang_id) REFERENCES hang(id)
);
ALTER TABLE may_tinh ADD bo_nho varchar(50) NULL;

INSERT INTO hang
( ma, ten_hang)
VALUES( N'H03', N'Dell');
INSERT INTO hang
( ma, ten_hang)
VALUES( N'H02', N'Acer');
INSERT INTO hang
( ma, ten_hang)
VALUES( N'H01', N'Lenovo');
INSERT INTO hang
( ma, ten_hang)
VALUES(N'H04', N'Macbook');

INSERT INTO may_tinh
( hang_id, ma, ten_may_tinh, gia, mau_sac, mieu_ta, bo_nho)
VALUES( 1, N'M05', N'G15 5520', 20000000, N'Đen', N'Laptop văn phòng', N'512GB');
INSERT INTO may_tinh
(hang_id, ma, ten_may_tinh, gia, mau_sac, mieu_ta, bo_nho)
VALUES( 1, N'M04', N'Nitro 5 Eagle', 58000000, N'Xám', N'Laptop văn phòng', N'1TB');
INSERT INTO may_tinh
( hang_id, ma, ten_may_tinh, gia, mau_sac, mieu_ta, bo_nho)
VALUES(1, N'M03', N'Vostro 5620', 18000000, N'Xanh', N'Laptop văn phòng', N'512GB');
INSERT INTO may_tinh
( hang_id, ma, ten_may_tinh, gia, mau_sac, mieu_ta, bo_nho)
VALUES( 2, N'M01', N'Idea Pad Slim', 38000000, N'Xám', N'Laptop văn phòng', N'256GB');
INSERT INTO may_tinh
(hang_id, ma, ten_may_tinh, gia, mau_sac, mieu_ta, bo_nho)
VALUES( 2, N'M02', N'Aspire ', 25000000, N'Đen', N'Laptop văn phòng', N'512GB');
