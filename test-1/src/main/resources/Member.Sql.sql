create table memberTbl(
    firstName VARCHAR2(30),
    lastName VARCHAR2(30),
    id VARCHAR2(30) primary key,
    pw VARCHAR2(100)
);

commit;

select * from membeTbl;