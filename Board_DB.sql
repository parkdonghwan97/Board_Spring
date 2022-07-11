#insert into tbl_board(title, content, writer)
#  values('테스트 제목1', '테스트 내용', '작성자');

#insert into tbl_board(title, content, writer)
#  values('테스트 제목2', '테스트 내용', '작성자');

#insert into tbl_board(title, content, writer)
#  values('테스트 제목3', '테스트 내용', '작성자');

#insert into tbl_board(title, content, writer)
#  values('테스트 제목4', '테스트 내용', '작성자');

#insert into tbl_board(title, content, writer)
#  values('테스트 제목5', '테스트 내용', '작성자');

#commit;

# select * from tbl_board;

#insert into
#tbl_board(title,content,writer)
#values('test title', 'test content', 'test writer');
#commit;
#select *from tbl_board;

#6 게시판 조회 
#SELECT bno, title, content, writer,regDate,viewCnt
#FROM tbl_board
#WHERE bno=1;

#7 게시판 수정
#UPDATE tbl_board
#	set
	#	title = '수정된 테스트 제목1',
		#content = '수정된 테스트 내용',
		#writer = '수정된 작성자'
	
	#where bno = 1;
#SELECT * FROM tbl_board;

# 10 페이지 구현
#INSERT INTO tbl_board(title, content,writer)
#select title, content, writer FROM tbl_board;

#SELECT COUNT(bno) FROM tbl_board;
#select 
 # bno, title, writer, regDate, viewCnt
#from tbl_board
#order by bno desc
#limit 0, 10


#이번엔 게시물의 총 갯수를 구할 쿼리를 작성
# select count(bno) from tbl_board

# 11 검색구현 1
# DB에서 가져오도록 쿼리 생성

# title
#SELECT
#	bno,title,content,writer,regDate,viewCnt
#FROM tbl_board
#WHERE title LIKE '%테스트%';

# content
#SELECT
#	bno,title,content,writer,regDate,viewCnt
#FROM tbl_board
#WHERE content LIKE '%테스트%';

#title + content
#SELECT
#	bno,title,content,writer,regDate,viewCnt
#FROM tbl_board
#WHERE title LIKE '%테스트%'
#OR content LIKE '%테스트%' ;

# writer
#SELECT
#	bno,title,content,writer,regDate,viewCnt
#FROM tbl_board
#WHERE writer LIKE '%작성자%';


#SELECT COUNT(bno) FROM tbl_board
#WHERE title LIKE CONCAT('%','1','%')

# 13 댓글 기본 설정 및 조회 구현
#CREATE TABLE tbl_reply (
#	rno 		int 			not null auto_increment,
#	bno 		int 			not null,
#	writer 	varchar(30) not null,
#	content 	text 			not null,
#	regDate 	timestamp 	not null default now(),
#	PRIMARY KEY(rno, bno),
#	FOREIGN KEY(bno) REFERENCES tbl_board(bno)
#);

#commit;

#select * from tbl_reply;

#SELECT * FROM tbl_board
#ORDER BY bno DESC;

# 확인을 위한 bno가 1680인게시글에 댓글을 생성
#INSERT INTO tbl_reply(bno,writer,content,regDate)
#	VALUES(1680,'댓글 작성자', '댓글 내용', SYSDATE());
	
#SELECT * FROM tbl_reply

#update문 테스트: rno와 bno 2개의 컬럼 조건으로 수정

#DELETE FROM tbl_reply
#WHERE rno=1
#AND bno=1680;
#SELECT * FROM tbl_reply;

#INSERT INTO tbl_reply(bno,writer,content,regDate)
#	VALUE(1680,'댓글 작성자', '댓글 내용', SYSDATE());
	
#SELECT rno,bno,writer,content,regDate
#FROM tbl_reply
#WHERE bno =1680;

#SELECT rno,bno,writer,content,regDate
#FROM tbl_reply
#WHERE bno = 1680

#UPDATE tbl_reply SET
#	writer = "익명의 작성자",
#	content = " ㅋㅋㅋㅋㅋㅋ 아너무 웃겨"
#WHERE bno =1680;

#SELECT * FROM tbl_reply WHERE bno = 1680;

 


