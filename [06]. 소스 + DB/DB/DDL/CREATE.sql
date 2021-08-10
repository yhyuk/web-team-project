/* 회원정보 */
CREATE TABLE tblUser (
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	password VARCHAR2(20) NOT NULL, /* 비밀번호 */
	name VARCHAR2(20) NOT NULL, /* 이름 */
	birth VARCHAR2(20) NOT NULL, /* 생년월일 */
	gender CHAR(1) NOT NULL, /* 성별 */
	tel VARCHAR2(20) NOT NULL, /* 전화번호 */
	email VARCHAR2(100) NOT NULL, /* 이메일 */
	address VARCHAR2(300) NOT NULL, /* 주소 */
	lv NUMBER NOT NULL, /* 사용권한 */
	regdate DATE DEFAULT sysdate NOT NULL, /* 가입일자 */
	isOut CHAR(1) DEFAULT 'n' NOT NULL, /* 탈퇴여부 */
	isStop CHAR(1) DEFAULT 'n' NOT NULL /* 정지여부 */
);

ALTER TABLE tblUser
	ADD
		CONSTRAINT PK_tblUser
		PRIMARY KEY (
			id
		);

/* 일손돕기 공고 테이블 */
CREATE TABLE tblWorker (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	city VARCHAR2(100) NOT NULL, /* 시, 도 */
	gu VARCHAR2(100) NOT NULL, /* 구 */
	address VARCHAR2(300) NOT NULL, /* 주소 */
	cropInfo VARCHAR2(20) NOT NULL, /* 작물정보 */
	totalPerson NUMBER NOT NULL, /* 모집인원 */
	pay NUMBER NOT NULL, /* 수당 */
	minAge NUMBER NOT NULL, /* 최저나이 */
	maxAge NUMBER NOT NULL, /* 최고나이 */
	tel VARCHAR2(20) NOT NULL, /* 전화번호 */
	startDate DATE NOT NULL, /* 근무시작일 */
	endDate DATE NOT NULL, /* 근무종료일 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 등록날짜 */
	detail VARCHAR2(4000) NOT NULL, /* 상세내용 */
	isCareer CHAR(1) NOT NULL, /* 경력 */
	isEnd CHAR(1) DEFAULT 'n' NOT NULL /* 현재상태 */
);

ALTER TABLE tblWorker
	ADD
		CONSTRAINT PK_tblWorker
		PRIMARY KEY (
			seq
		);

/* 일손돕기 신청내역 테이블 */
CREATE TABLE tblWorkApply (
	seq NUMBER NOT NULL, /* 신청번호 */
	pseq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	totalApply NUMBER NOT NULL, /* 인원수 */
	detail VARCHAR2(4000) NOT NULL, /* 신청내용 */
	isPass CHAR(1) DEFAULT 'n' NOT NULL, /* 승인여부 */
	regDate DATE DEFAULT sysdate NOT NULL /* 신청날짜 */
);

ALTER TABLE tblWorkApply
	ADD
		CONSTRAINT PK_tblWorkApply
		PRIMARY KEY (
			seq
		);

/* 농촌체험 공고 테이블 */
CREATE TABLE tblExp (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	address VARCHAR2(300) NOT NULL, /* 주소 */
	town VARCHAR2(300) NOT NULL, /* 마을이름 */
	expInfo VARCHAR2(100) NOT NULL, /* 체험대분류 */
	name VARCHAR2(300) NOT NULL, /* 체험명 */
	startDate DATE NOT NULL, /* 체험시작날짜 */
	endDate DATE NOT NULL, /* 체험종료날짜 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 등록날짜 */
	tel VARCHAR2(20) NOT NULL, /* 전화번호 */
	site VARCHAR2(300), /* 홈페이지 */
	townDetail VARCHAR2(4000) NOT NULL, /* 마을소개글 */
	detail VARCHAR2(4000) NOT NULL, /* 프로그램소개글 */
	totalPerson NUMBER NOT NULL, /* 모집인원 */
	isEnd CHAR(1) DEFAULT 'n' NOT NULL, /* 현재상태 */
	image VARCHAR2(300) /* 프로필사진 */
);

ALTER TABLE tblExp
	ADD
		CONSTRAINT PK_tblExp
		PRIMARY KEY (
			seq
		);

/* 농촌체험 신청 테이블 */
CREATE TABLE tblExpApply (
	seq NUMBER NOT NULL, /* 신청번호 */
	pseq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	startDate DATE NOT NULL, /* 체험시작날짜 */
	endDate DATE NOT NULL, /* 체험종료날짜 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 신청날짜 */
	totalPerson NUMBER NOT NULL, /* 신청인원 */
	detail VARCHAR2(4000) NOT NULL, /* 신청내용 */
	isPass CHAR(1) DEFAULT 'n' NOT NULL /* 승인여부 */
);

ALTER TABLE tblExpApply
	ADD
		CONSTRAINT PK_tblExpApply
		PRIMARY KEY (
			seq
		);

/* 주말농장 공고 테이블 */
CREATE TABLE tblFarm (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	name VARCHAR2(100) NOT NULL, /* 농장이름 */
	address VARCHAR2(300) NOT NULL, /* 농장주소 */
	area NUMBER NOT NULL, /* 총 면적 */
	price NUMBER NOT NULL, /* 분양가격 */
	detail VARCHAR2(4000) NOT NULL, /* 마을소개글 */
	isEnd CHAR(1) DEFAULT 'n' NOT NULL, /* 현재상태 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 등록날짜 */
	image VARCHAR2(300) NOT NULL /* 프로필사진 */
);

ALTER TABLE tblFarm
	ADD
		CONSTRAINT PK_tblFarm
		PRIMARY KEY (
			seq
		);

/* 주말농장 리뷰 테이블 */
CREATE TABLE tblFarmReview (
	seq NUMBER NOT NULL, /* 리뷰번호 */
	pseq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	detail VARCHAR2(4000) NOT NULL, /* 내용 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 날짜 */
	star NUMBER NOT NULL /* 별점 */
);

ALTER TABLE tblFarmReview
	ADD
		CONSTRAINT PK_tblFarmReview
		PRIMARY KEY (
			seq
		);

/* 주말농장 신청 테이블 */
CREATE TABLE tblFarmApply (
	seq NUMBER NOT NULL, /* 신청번호 */
	pseq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	passDate DATE, /* 승인날짜 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 신청날짜 */
	area NUMBER NOT NULL, /* 신청면적 */
	isPass CHAR(1) DEFAULT 'n' NOT NULL /* 승인여부 */
);

ALTER TABLE tblFarmApply
	ADD
		CONSTRAINT PK_tblFarmApply
		PRIMARY KEY (
			seq
		);

/* 농촌체험 리뷰 테이블 */
CREATE TABLE tblExpReview (
	seq NUMBER NOT NULL, /* 리뷰번호 */
	pseq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	detail VARCHAR2(4000) NOT NULL, /* 내용 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 날짜 */
	star NUMBER NOT NULL /* 별점 */
);

ALTER TABLE tblExpReview
	ADD
		CONSTRAINT PK_tblExpReview
		PRIMARY KEY (
			seq
		);

/* 농작물 직거래 공고 테이블 */
CREATE TABLE tblMarket (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	marketInfo VARCHAR2(100) NOT NULL, /* 대분류 */
	name VARCHAR2(100) NOT NULL, /* 작물명 */
	brandName VARCHAR2(300) NOT NULL, /* 브랜드명 */
	tel VARCHAR2(20) NOT NULL, /* 전화번호 */
	address VARCHAR2(300) NOT NULL, /* 주소 */
	site VARCHAR2(300), /* 홈페이지 */
	detail VARCHAR2(4000) NOT NULL, /* 상세내용 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 등록날짜 */
	image VARCHAR2(300) /* 프로필사진 */
);

ALTER TABLE tblMarket
	ADD
		CONSTRAINT PK_tblMarket
		PRIMARY KEY (
			seq
		);

/* 농작물 관심표시 테이블 */
CREATE TABLE tblMarketLike (
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	seq NUMBER NOT NULL /* 글번호 */
);

/* 농작물 QA 테이블 */
CREATE TABLE tblMarketQA (
	seq NUMBER NOT NULL, /* 문의글번호 */
	pseq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	title VARCHAR2(300) NOT NULL, /* 문의제목 */
	detailQ VARCHAR2(4000) NOT NULL, /* 문의내용 */
	regDateQ DATE DEFAULT sysdate NOT NULL, /* 문의날짜 */
	detailA VARCHAR2(4000), /* 답변내용 */
	regDateA DATE, /* 답변날짜 */
	isA CHAR(1) DEFAULT 'n' NOT NULL /* 처리상태 */
);

ALTER TABLE tblMarketQA
	ADD
		CONSTRAINT PK_tblMarketQA
		PRIMARY KEY (
			seq
		);

/* 커뮤니티 게시판 테이블 */
CREATE TABLE tblCommunity (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	category VARCHAR2(300) NOT NULL, /* 카테고리 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	detail VARCHAR2(4000) NOT NULL, /* 내용 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 작성날짜 */
	cnt NUMBER NOT NULL /* 조회수 */
);

ALTER TABLE tblCommunity
	ADD
		CONSTRAINT PK_tblCommunity
		PRIMARY KEY (
			seq
		);

/* 커뮤니티 댓글 테이블 */
CREATE TABLE tblCComment (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	postSeq NUMBER NOT NULL, /* 답글번호 */
	pseq NUMBER NOT NULL, /* 부모글번호 */
	detail VARCHAR2(4000) NOT NULL, /* 댓글내용 */
	regDate DATE DEFAULT sysdate NOT NULL /* 댓글날짜 */
);

ALTER TABLE tblCComment
	ADD
		CONSTRAINT PK_tblCComment
		PRIMARY KEY (
			seq
		);

/* 알림마당 테이블 */
CREATE TABLE tblNotice (
	seq NUMBER NOT NULL, /* 글번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	category VARCHAR2(300) NOT NULL, /* 카테고리 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	detail VARCHAR2(4000) NOT NULL, /* 내용 */
	regDate DATE DEFAULT sysdate NOT NULL, /* 작성날짜 */
	cnt NUMBER NOT NULL /* 조회수 */
);

ALTER TABLE tblNotice
	ADD
		CONSTRAINT PK_tblNotice
		PRIMARY KEY (
			seq
		);

/* 커뮤니티 이미지 테이블 */
CREATE TABLE tblCommunityImg (
	seq NUMBER NOT NULL, /* 이미지번호 */
	image VARCHAR2(300) NOT NULL, /* 파일명 */
	pseq NUMBER NOT NULL /* 글번호 */
);

ALTER TABLE tblCommunityImg
	ADD
		CONSTRAINT PK_tblCommunityImg
		PRIMARY KEY (
			seq
		);

/* 알림마당 이미지 테이블 */
CREATE TABLE tblNoticeImg (
	seq NUMBER NOT NULL, /* 이미지번호 */
	image VARCHAR2(300) NOT NULL, /* 파일명 */
	pseq NUMBER NOT NULL /* 글번호 */
);

ALTER TABLE tblNoticeImg
	ADD
		CONSTRAINT PK_tblNoticeImg
		PRIMARY KEY (
			seq
		);

/* 농작물 이미지 테이블 */
CREATE TABLE tblMarketImg (
	seq NUMBER NOT NULL, /* 이미지번호 */
	image VARCHAR2(300) NOT NULL, /* 파일명 */
	pseq NUMBER NOT NULL /* 글번호 */
);

ALTER TABLE tblMarketImg
	ADD
		CONSTRAINT PK_tblMarketImg
		PRIMARY KEY (
			seq
		);

/* 회원 로그 테이블 */
CREATE TABLE tblUserLog (
	seq NUMBER NOT NULL, /* 번호 */
	id VARCHAR2(20) NOT NULL, /* 아이디 */
	inTime DATE DEFAULT sysdate NOT NULL, /* 로그인시간 */
	outTime DATE /* 로그아웃시간 */
);

ALTER TABLE tblUserLog
	ADD
		CONSTRAINT PK_tblUserLog
		PRIMARY KEY (
			seq
		);

------------------------------------------------------------------------
--FK

ALTER TABLE tblWorker
	ADD
		CONSTRAINT FK_tblUser_TO_tblWorker
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblWorkApply
	ADD
		CONSTRAINT FK_tblUser_TO_tblWorkApply
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblWorkApply
	ADD
		CONSTRAINT FK_tblWorker_TO_tblWorkApply
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblWorker (
			seq
		);

ALTER TABLE tblExp
	ADD
		CONSTRAINT FK_tblUser_TO_tblExp
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblExpApply
	ADD
		CONSTRAINT FK_tblExp_TO_tblExpApply
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblExp (
			seq
		);

ALTER TABLE tblExpApply
	ADD
		CONSTRAINT FK_tblUser_TO_tblExpApply
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblFarm
	ADD
		CONSTRAINT FK_tblUser_TO_tblFarm
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblFarmReview
	ADD
		CONSTRAINT FK_tblUser_TO_tblFarmReview
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblFarmReview
	ADD
		CONSTRAINT FK_tblFarm_TO_tblFarmReview
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblFarm (
			seq
		);

ALTER TABLE tblFarmApply
	ADD
		CONSTRAINT FK_tblFarm_TO_tblFarmApply
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblFarm (
			seq
		);

ALTER TABLE tblFarmApply
	ADD
		CONSTRAINT FK_tblUser_TO_tblFarmApply
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblExpReview
	ADD
		CONSTRAINT FK_tblExp_TO_tblExpReview
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblExp (
			seq
		);

ALTER TABLE tblExpReview
	ADD
		CONSTRAINT FK_tblUser_TO_tblExpReview
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblMarket
	ADD
		CONSTRAINT FK_tblUser_TO_tblMarket
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblMarketLike
	ADD
		CONSTRAINT FK_tblUser_TO_tblMarketLike
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblMarketLike
	ADD
		CONSTRAINT FK_tblMarket_TO_tblMarketLike
		FOREIGN KEY (
			seq
		)
		REFERENCES tblMarket (
			seq
		);

ALTER TABLE tblMarketQA
	ADD
		CONSTRAINT FK_tblMarket_TO_tblMarketQA
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblMarket (
			seq
		);

ALTER TABLE tblMarketQA
	ADD
		CONSTRAINT FK_tblUser_TO_tblMarketQA
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblCommunity
	ADD
		CONSTRAINT FK_tblUser_TO_tblCommunity
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblCComment
	ADD
		CONSTRAINT FK_tblUser_TO_tblCComment
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblCComment
	ADD
		CONSTRAINT FK_tblCommunity_TO_tblCComment
		FOREIGN KEY (
			postSeq
		)
		REFERENCES tblCommunity (
			seq
		);

ALTER TABLE tblCComment
	ADD
		CONSTRAINT FK_tblCComment_TO_tblCComment
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblCComment (
			seq
		);

ALTER TABLE tblNotice
	ADD
		CONSTRAINT FK_tblUser_TO_tblNotice
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);

ALTER TABLE tblCommunityImg
	ADD
		CONSTRAINT FK_tblCom_TO_tblComImg
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblCommunity (
			seq
		);

ALTER TABLE tblNoticeImg
	ADD
		CONSTRAINT FK_tblNotice_TO_tblNoticeImg
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblNotice (
			seq
		);

ALTER TABLE tblMarketImg
	ADD
		CONSTRAINT FK_tblMarket_TO_tblMarketImg
		FOREIGN KEY (
			pseq
		)
		REFERENCES tblMarket (
			seq
		);

ALTER TABLE tblUserLog
	ADD
		CONSTRAINT FK_tblUser_TO_tblUserLog
		FOREIGN KEY (
			id
		)
		REFERENCES tblUser (
			id
		);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--sequence
-- 일손돕기
create sequence seqWorker;
create sequence seqWorkApply;

-- 농촌체험
create sequence seqExp;
create sequence seqExpApply;
create sequence seqExpReview;

-- 주말농장
create sequence seqFarm;
create sequence seqFarmReview;
create sequence seqFarmApply;

-- 농작물 직거래
create sequence seqMarket;
create sequence seqMarketImg;
create sequence seqMarketQA;

-- 커뮤니티
create sequence seqCom;
create sequence seqComImg;
create sequence seqCCom;

-- 알림마당
create sequence seqNotice;
create sequence seqNoticeImg;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 수정사항
alter table tblUser rename column password to pw;           -- 유저
alter table tblFarm add tel varchar2(20) not null;          -- 주말농장
alter table tblFarm modify image varchar2(300) null;        -- 주말농장
alter table tblCComment modify pSeq NUMBER null;            -- 커뮤니티 댓글
alter table tblCommunity drop column cnt;                   -- 커뮤니티
alter table tblCommunity add cnt number default 0 not null; -- 커뮤니티
alter table tblNotice drop column cnt;                      -- 알림마당
alter table tblNotice add cnt number default 0 not null;    -- 알림마당
alter table tblWorker add title varchar2(200) not null;     -- 일손돕기
alter table tblWorkApply add isCareer CHAR(1) not null;     -- 일손돕기

