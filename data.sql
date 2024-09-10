CREATE TABLE USERS (
	ID		VARCHAR(12)	PRIMARY KEY,
	PASSWORD	VARCHAR(12)	NOT NULL,
	NAME		VARCHAR(30) 	NOT NULL,
	ROLE		VARCHAR(6)	NOT NULL
);

INSERT INTO USERS(ID, PASSWORD, NAME, ROLE) VALUES('guest', 'guest123', '방문자', 'USER');
INSERT INTO USERS(ID, PASSWORD, NAME, ROLE) VALUES('test', 'test123', '관리자', 'ADMIN');

CREATE TABLE BOARD (
	SEQ 		NUMBER(5) PRIMARY KEY, 			-- 일련번호
	TITLE 		VARCHAR2(200), 					-- 제목
	WRITER 		VARCHAR2(20), 					-- 작성자
	CONTENT 	VARCHAR2(2000), 				-- 내용
	REGDATE 	DATE 			DEFAULT SYSDATE, 	-- 등록일
	CNT 		NUMBER(5) 		DEFAULT 0		-- 조회수
);

INSERT INTO BOARD(SEQ, TITLE, WRITER, CONTENT) 
VALUES(1, '가입인사', '채규태', '잘 부탁드립니다....');
