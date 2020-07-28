create table userinfo (
    userId varchar2(50),
    userPw varchar2(50),
    userName varchar2(50),
    userEmail varchar2(100),
    userAddrZipNum varchar2(100),
    userAddrBasic varchar2(300),
    userAddrDetail varchar2(300),
    regdate date default sysdate
);

alter table userinfo add CONSTRAINT userinfo_pk PRIMARY KEY (userId);