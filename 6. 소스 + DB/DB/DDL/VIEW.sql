-- view

------------------------------------------------------------------------------------------------------------------------------------------
-- 일손돕기
create or replace view vwWorker
as
select a.*, rownum as rnum2 from
(select w.*, (select name from tblUser where id = w.id) as name from tblWorker w order by seq desc) a;

------------------------------------------------------------------------------------------------------------------------------------------
-- 농촌체험
create or replace view vwExp
as     
 select T2.starAvg || ' ('||T2.cnt || ')'as starRs ,T2.*
 from(
 select  
    T1.seq,
    (select NVL(TO_CHAR(ROUND(AVG(NVL(STAR, 0)), 1), 'FM9.0'),'0.0')  from tblExpReview where pseq=T1.seq) as starAvg,
    (select count(*) as cnt from tblExpReview where pseq=T1.seq) as cnt,
    T1.expInfo,
   T1.name,
    T1.image,
    T1.startDate,
    T1.endDate,
    (sysdate - T1.regDate) as isnew,
    T1.town,
    T1.address,
    T1.totalperson,
    (select nvl(sum(totalperson), 0) from tblExpApply where pseq = T1.seq) applyperson
from tblExp T1) T2
  order by T2.seq desc;

create or replace view vwExpApply
as
select  
    seq,
    pseq,
    id,
    regDate,
    totalPerson,
    detail,
    startDate,
    endDate,
    isPass,
    (select name from tblExp where seq = ea.pseq) as expName,
    (select expInfo from tblExp where seq = ea.pseq) as expInfo,
    (select name from tblUser where id = ea.id) as name,
    (select gender from tblUser where id = ea.id) as gender,
    (select birth from tblUser where id = ea.id) as age,
    (select tel from tblUser where id = ea.id) as tel
from tblExpApply ea;

------------------------------------------------------------------------------------------------------------------------------------------
-- 주말농장
-- vwFarm
create or replace view vwFarm
as
select
    f.*,
    u.name as ownerName,                    --농장주명
    (f.area - fa.totalArea) as extraArea,   --잔여면적
    nvl(fr.reviewCount, 0) as reviewCount,  --리뷰갯수
    nvl(fr.avgStar, 0) as avgStar           --평균별점
from tblFarm f
    inner join tblUser u
        on f.id = u.id
    inner join (select
                    f.seq,
                    nvl(sum(fa.area), 0) as totalArea
                from tblFarm f
                    left outer join (select * from tblFarmApply where isPass = 'y') fa
                        on f.seq = fa.pseq
                group by f.seq) fa
        on f.seq = fa.seq
    left outer join (select
                        pseq,
                        count(seq) as reviewCount,
                        to_char(round(avg(star), 1), 'FM9.0') as avgStar
                     from tblFarmReview
                     group by pseq) fr
        on f.seq = fr.pseq
order by f.regDate desc;

--vwFarmApply
create or replace view vwFarmApply
as
select
    fa.*,
    f.name,
    f.price,
    f.address,
    f.tel,
    u1.name as userName,
    u1.tel as userTel,
    u2.id as ownerId,
    u2.name as ownerName
from tblFarmApply fa
    inner join tblUser u1
        on fa.id = u1.id
    inner join tblFarm f
        on fa.pseq = f.seq
    inner join tblUser u2
        on f.id = u2.id
order by fa.regDate desc;

------------------------------------------------------------------------------------------------------------------------------------------
-- 커뮤니티
create or replace view vwCommunity
as
select 
        seq, id, 
        (select name from tblUser where id = tblCommunity.id) as name, 
        title, category, detail, cnt, regdate,
        (sysdate - regdate) as isnew,
        (select count(*) from tblCComment where postSeq = tblCommunity.seq) as ccnt,
        (select count(*) from tblCommunityImg where pSeq = tblCommunity.seq) as imgCnt
from tblCommunity order by seq desc;

create or replace view vwCComment
as
select
    seq, id, postseq, pseq, detail, regdate,
    (select name from tblUser where id = tblCComment.id) as name
from tblCComment order by seq desc;


-- 알림마당
create or replace view vwNotice
as
select 
        seq, id, 
        (select name from tblUser where id = tblNotice.id) as name, 
        title, category, detail, cnt, regdate,
        (sysdate - regdate) as isnew,
        (select count(*) from tblNoticeImg where pSeq = tblNotice.seq) as imgCnt
from tblNotice order by seq desc;

------------------------------------------------------------------------------------------------------------------------------------------
-- 관리자페이지

create or replace view vwList
as
select
    u.*,
    rownum as rnum
from 
    (select
        name, 
        ( (select count(*) from tblCommunity where id = tblUser.id) +
        (select count(*) from tblFarm where id = tblUser.id) +
        (select count(*) from tblWorker where id = tblUser.id) +
        (select count(*) from tblExp where id = tblUser.id) + 
        (select count(*) from tblMarket where id = tblUser.id) ) as total
    from tblUser order by total desc) u where rownum <= 10;
    

create or replace view vwCategoryTotal
as
select
    (select count(*) from tblCommunity) as community,
    (select count(*) from tblExp) as exp,
    (select count(*) from tblFarm) as farm,
    (select count(*) from tblMarket) as market,
    (select count(*) from tblNotice) as notice,
    (select count(*) from tblWorker) as worker
from dual;

--회원 상태별 총합
create or replace view vwMemberStatusTotal
as
select
    (select count(*) from tblUser where isStop = 'n' and isOut = 'n') as normal,
    (select count(*) from tblUser where isOut = 'y') as out,
    (select count(*) from tblUser where isStop = 'y') as stop
from dual;

--회원 유형별 총합
create or replace view vwMemberTypeTotal
as
select
    (select count(*) from tblUser where lv = 1) as ordinary,
    (select count(*) from tblUser where lv = 2) as farmer
from dual;