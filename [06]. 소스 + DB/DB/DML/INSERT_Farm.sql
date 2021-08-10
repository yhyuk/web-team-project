-- <tblFarm>
--실제 데이터 (tblFarm) -- 6개
-- seq: 1
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)
    values (seqFarm.nextVal, 'farmer', '수원들꽃농원주말농장', '031-244-5226', '경기도 수원시 장안구 광교산로 440(상광교동)', 1000, 120000
            , '수원들꽃농원주말농장에 오신 것을 진심으로 환영합니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '수원의 명산인 광교산 시루봉 아래 펼쳐진 유럽풍의 포근한 전원마을 속에서 향기로운 허브향과 아름다운 들꽃들의 정겨움 속에 도시의 찌든 마음도 자연과 함께 훌훌 날려 보내시고 웰빙시대의 필수품인 친환경 유기농산물을 수확하여 우리가족의 식탁을 책임져 보시면 어떠실런지요'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '수원들꽃농원주말농장을 통해 아이들에게는 자연 체험의 학습공간으로 농작물 및 식물의 성장과정을 관찰하며 생명의 소중함을 일깨워 주는 교육의 장소로 또한, 씨앗을 뿌리고 가꾸며 수확하는 과정을 통해 땀의 결실을 맺음으로써 일의 성취감과 일의 보람을 맞볼 수 있게 합니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '도시의 어른신들께는 예전고향의 향수와 추억의 장소로써 황막한 현대사회에서 점차 잃어가던 어린 시절의 기억을 되살릴 수 있는 좋은 기회가 되며 맑은 공기 속에서 소일거릴 함으로써 건강과 활력소를 되찾을 수 있으리라 봅니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '가정주부 님들껜 여가시간 활용장소로 적합하며 가족이 먹을 신선한 야채를 직접 재배해 식탁에 올림으로써 가족의 건강을 도모할 수 있습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '직장인들에겐 맑은 공기도 마시고 삶의 여유를 찾으므로서 일에서 오는 스트레스를 해소할 수 있는 좋은 장소로 온가족과 함께 농장에서 유익하게 하루는 건강과 가정 화목의 계기가 될 수 있을 것입니다.한번 방문하시면 여러분의 마음에 꼭 드시리라 확신합니다.'
            , default, '2021/04/01', '1.jpg');
-- seq: 2
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)
    values (seqFarm.nextVal, 'farmer1', '어여비주말농장', '010-4031-2539', '경기도 의왕시 징계골길 61 (이동, 551-3)', 500, 100000
            , '어여비 주말농장에 오신 것을 환영합니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '주말농장 만족도 99% 어여비주말농장만의 혜택!'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '대농기구 및 기본적인 소농기구를 무료로 대여 해드립니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '장갑 하고 장화만 준비하시면 농사에 필요한 모든 물품은 농장에서 직접 판매하고 있기 때문에 모종,씨앗,비닐,고추대 등을 개인적으로 따로 준비하실 필요가 없습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '개장 전에 친환경 퇴비를 뿌리고 경운을 하여 농장주가 직접 밭을 갈아주기 때문에 밭 갈이를 할 필요가 없습니다. 바로 씨앗을 뿌리고 모종을 심어서 농사를 지을 수 있으며 어느 구좌를 선택하든 바로 옆에 수돗가가 있어서 물 뿌리기에 불편함이 없습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '바베큐장, 쉼터, 족구, 배드민턴과 같은 다양한 시설이 준비 되어있으며, 수세식 화장실로 깨끗한 화장실을 이용 할 수 있습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '가까운 지하철역은 1호선 의왕역이 있으며, 부곡IC와 신부곡IC를 통해 서울에서도 20-30분이면 도착 할 수있기때문에 교통이 편리하고 주차공간도 확보되어있어서 이용에 불편함이 없습니다.'
            , default, '2021/03/22', '2.jpg');
-- seq: 3
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)
    values (seqFarm.nextVal, 'farmer2', '자연애 청산 농원', '031-238-7744', '경기도 화성시 한신대길 65-32(안녕동)', 1000, 110000
            , '안녕하세요.'
                ||chr(13)||chr(10)||
                '경기도 화성시 안녕리에 위치한 청산 농장 입니다.'
                ||chr(13)||chr(10)||
                '신선하고 안전한 먹거리 해결을 위해 시작하여 주변 지인들에게만 판매만 해오던 농작물을 이제 주말 농장으로 만들어 많은 분들이 자연과 더불어 식탁을  자급자족할 수 있는 계기가 될 수 있기 위하여 주말 농장으로 운영하게 되었습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '수원 병점 오산 동탄 근교에 위치한 1200평(비닐하우스 700평, 밭 500평) 부지에서 주말을 이용하여 자연에 대한 아이들의 학습과 안전하고 건강한 먹거리를 생산해 건강한 생활을 영위할 수 있는 기회를 가지시기 바랍니다.'
            , default, '2021/03/10', '3.jpg');
-- seq: 4
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)
    values (seqFarm.nextVal, 'farmer3', '대원주말농장', '010-5497-4187', '서울특별시 서초구 새원길 41-5(원지동)', 100, 130000
            , '안녕하세요!'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '대원주말농장 홈페이지를 방문해 주셔서 감사합니다.'
                ||chr(13)||chr(10)||
                '저희 대원주말농장은 우리나라 최초로 주말농장을 시작한 곳입니다.'
                ||chr(13)||chr(10)||
                '저희 주말농장은 서울 서초구의 청계산 아래 위치하고 있어 편리한 장소에서 전원의 생활과 풍미를 즐기며 편안히 쉬어가실 수 있습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '농장을 방문하시면, 산업포장, 국민포장과 서울시민대상, 세계농업인대상 등 농업관련 부분의 상을 70여장 받은 전문농업인 농장주의 노하우로 질 높은 농산물을 직접 생산해 드실 수 있는 기회를 얻게 됩니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '아이들에게는 농업관련, 채소 관련, 화훼관련의 분야에 대해 자세히 설명해 줄 수 있는 농장주인 아저씨 아줌마를 만날 수 있어 자연을 배울 수 있게 되고, 아버님 어머님들은 어린 시절 농사짓던 추억과 고향의 추억을 되살리시며 부담 없이 채소 수확의 재미를 즐기실 수 있습니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '현대 사회에서 웰빙 열풍이 바람이 불고 있습니다. 앞으로는 개인적 웰빙에서 더 나아가 가족의 웰빙(family well being)의 시대에 발맞추어 가족 모두 유기농 채소와 전원의 자유 그리고 풍요를 함께 누리시기 위한 방법으로 저희 주말농장은, 저렴한 가격에 일년동안 여러분의 가정에 정신적 육체적 건강을 책임져 줄 보험이 될 것입니다.'
                ||chr(13)||chr(10)||
                '국내에서 가장 회원 수가 많은 저희 대원주말농장은 앞으로 우리 국민의 건강과 웃음 그리고 농촌의 활력을 위해 소비자와 농촌을 잇는 역할을 하려고 합니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '우리 아이들에게 농촌과 우리 것의 소중함을 깨우칠 기회를 주십시오, 우리 어머님과 아버님에게 탁 트인 장소에서 예년시절을 회상하며 채소를 수확하고, 낯선 에어컨 바람이 아닌 우리의 느티나무 아래서 땀을 식힐 여유와 삶의 낙을 찾아 드리십시오.'
                ||chr(13)||chr(10)||
                '사회에서 찌든 여러분의 마음와 얼굴을 일주일에 한번 단 몇 분의 이동으로 그 피로를 풀어주십시오. 활짝 웃는 건강한 대한민국을 위해 대원주말농장은 여러분께 그러한 장소와 먹거리를 제공할 것을 약속드립니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '감사합니다.'
            , default, '2021/02/20', '4.jpg');
-- seq: 5
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)
    values (seqFarm.nextVal, 'farmer4', '무수골 주말농장', '02-954-0329', '서울특별시 도봉구 도봉로169길 249(도봉동)', 400, 130000
            , '안녕하십니까?'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '무수골 별천지 주말농장은 도심속 시골의 정겨운 옛모습을 간직하고 있으며 자연적인 생태환경을 만들어 가는 저탄소 배출 교육의 장소이자 작물을 키우는 동안 식물과 대화를 통해 병이 호전되는 치유의 텃밭입니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '농장의 위치는 북한산 국립공원에 속한 도봉산 무수골 자연마을 입구에 있습니다.'
                ||chr(13)||chr(10)||
                '저희 농장은 회원님들이 가족과 함께 소중한 땀을 흘리고 사랑과 건강의 열매를 거두기를 바라며 운영하고 있습니다.'
                ||chr(13)||chr(10)||
                '또한 농작물을 가꾸면서 자녀들의 자연학습 체험은 정서함양과 소중한 어린 시절의 추억이 될 것입니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '저희 농장은 각박한 도시공간에서 벗어나 자연의 정취를 흠뻑 느낄 수 있는 휴식공간으로서의 면모를 갖추기 위하여 노력하고 있습니다.'
                ||chr(13)||chr(10)||
                '보람있고 알찬 농작물 수확과 함께 회원님들의 가족이 즐겁게 농장을 이용하실 수 있도록 최선을 다하겠습니다.'
                ||chr(13)||chr(10)||
                '감사합니다.'
                ||chr(13)||chr(10)||chr(13)||chr(10)||chr(13)||chr(10)||
                '운영목적'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '1.기존 농지의 효율성 제고 및 생산성 극대화 도모'
                ||chr(13)||chr(10)||
                '2.회원에게 농사체험의 기회를 제공'
                ||chr(13)||chr(10)||
                '3.우리농산물 애용과 농업에 대한 이해증진 도모'
                ||chr(13)||chr(10)||
                '4.주5일 근무제 시행에 따라 토요일을 보다 알뜰하게 사용할 수 있는 전원 프로그램 선호 예상, 자연과 함께하는 가족단위 여가 선용의 기회 제공'
                ||chr(13)||chr(10)||
                '5.가족간의 유대감 증진을 위한 공간으로 활용'
                ||chr(13)||chr(10)||
                '6.지역사회 내 APT촌 주민에게 전원생활 및 흙 내음으로 가득찬 Green Field 제공으로 지역 정서에 이바지'
                ||chr(13)||chr(10)||
                '7.건전한 시민생활 문화의 장으로 개발'
                ||chr(13)||chr(10)||chr(13)||chr(10)||chr(13)||chr(10)||
                '입지여건'
                ||chr(13)||chr(10)||chr(13)||chr(10)||
                '1.자연농지로 농장형성에 적합'
                ||chr(13)||chr(10)||
                '2.농장 전면의 정돈된 계곡과 후면의 밤나무골, 서울시 사적으 로 지정된 이인 신도비, 영해군능등 주변환경이 뛰어남'
                ||chr(13)||chr(10)||
                '3.북한산 국립공원(도봉산)내 무수골 자연마을 초입에 위치함으로 등산객 및 향락객 등의 이용 편리'
                ||chr(13)||chr(10)||
                '4.진입로가 잘 포장되어있어 진입용이 및 주차장 부지 확보로 이용객 편의도모'
            , default, '2021/02/12', '5.jpg');
-- seq: 6
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image)
    values (seqFarm.nextVal, 'farmer5', '파머스클럽', '032-671-0184', '경기도 부천시 오정로 320(오정동)', 300, 120000
            , '부천시에 위치한 다목적 농장입니다.'
            ||chr(13)||chr(10)||chr(13)||chr(10)||
            '신규 바베큐존 오픈 안내드립니다.'
            ||chr(13)||chr(10)||
            '이곳은 테이블만 대여해 드리는 공간으로 필요하신 물품을 모두 가져오시면 됩니다.'
            ||chr(13)||chr(10)||
            '총 6개의 나무벤치가 설치되어 있습니다'
            ||chr(13)||chr(10)||
            '오래된 느티나무가 우거져 있어 운치있고 시원합니다.'
            ||chr(13)||chr(10)||chr(13)||chr(10)||
            '우드 BBQ 패키지 #1:'
            ||chr(13)||chr(10)||
            '인원: 테이블당 최대 성인 6인'
            ||chr(13)||chr(10)||
            '시간: 최소 2시간 이용'
            ||chr(13)||chr(10)||
            '장비: 6인용 우드 벤치'
            ||chr(13)||chr(10)||
            '가격: 오픈할인 회원 5천원/비회원 1만원'
            , default, '2021/01/18', '6.jpg');


--실제 데이터 (tblFarmApply) -- N개
--pseq: 1
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user', 20, '2021/04/10', '2021/04/15', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user1', 10, '2021/04/15', '2021/04/20', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user2', 25, '2021/05/22', '2021/05/27', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user3', 15, '2021/06/07', '2021/06/11', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user4', 10, '2021/07/03', '2021/07/07', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user5', 20, '2021/07/17', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user6', 10, '2021/07/22', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user7', 25, '2021/07/26', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user8', 25, '2021/07/29', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user9', 15, '2021/08/01', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user10', 20, '2021/08/03', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 1, 'user11', 15, '2021/08/03', default);
--pseq: 2
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user8', 20, '2021/03/29', '2021/04/11', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user11', 10, '2021/04/02', '2021/04/11', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user5', 10, '2021/04/17', '2021/04/23', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user3', 20, '2021/05/01', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user7', 10, '2021/05/09', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user6', 25, '2021/05/21', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user2', 25, '2021/06/10', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user', 15, '2021/06/22', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 2, 'user10', 20, '2021/07/03', default);
--pseq: 3
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user7', 20, '2021/03/18', '2021/03/28', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user2', 10, '2021/03/23', '2021/03/28', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user6', 10, '2021/04/07', '2021/04/16', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user8', 10, '2021/04/14', '2021/04/16', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user', 10, '2021/04/28', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user1', 25, '2021/05/19', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user3', 25, '2021/06/15', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 3, 'user4', 15, '2021/06/16', default);
--pseq: 4
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user', 20, '2021/02/26', '2021/03/01', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user1', 10, '2021/03/01', '2021/03/10', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user2', 15, '2021/03/03', '2021/03/10', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user3', 10, '2021/03/26', '2021/04/05', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user4', 15, '2021/04/01', '2021/04/05', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user5', 20, '2021/05/18', '2021/06/12', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user6', 10, '2021/05/30', '2021/06/12', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user7', 25, '2021/06/01', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user8', 25, '2021/06/05', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user9', 15, '2021/06/09', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 4, 'user10', 20, '2021/06/11', default);
--pseq: 5
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 5, 'user10', 20, '2021/02/18', '2021/02/25', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 5, 'user4', 10, '2021/04/01', '2021/04/15', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 5, 'user9', 15, '2021/05/01', '2021/05/17', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 5, 'user2', 15, '2021/06/09', default);
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 5, 'user5', 20, '2021/07/08', default);
--pseq: 6
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 6, 'user1', 20, '2021/02/02', '2021/02/14', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 6, 'user7', 10, '2021/02/17', '2021/02/26', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 6, 'user9', 15, '2021/03/31', '2021/04/10', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, passDate, isPass)
    values (seqFarmApply.nextVal, 6, 'user', 15, '2021/05/01', '2021/05/08', 'y');
insert into tblFarmApply (seq, pseq, id, area, regDate, isPass)
    values (seqFarmApply.nextVal, 6, 'user3', 20, '2021/07/14', default);

--실제 데이터 (tblFarmReview) -- N개
--pseq: 1
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 1, 'user', '사장님이 너무 친절하고 좋아요!', 4, '2021/05/10');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 1, 'user1', '주말마다 아이들과 함께 가고있어요. 아이들이 너무 좋아해요!', 5, '2021/05/15');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 1, 'user2', '수확할때마다 너무 보람차네요.', 5, '2021/06/20');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 1, 'user3', '시설은 좋은데 교통이 불편한게 너무 아쉬워요 ㅠㅠ', 3, '2021/06/30');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 1, 'user4', '주말농장 처음 해보는데 너무 재밌어요!!', 4, '2021/07/28');
--pseq: 2
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 2, 'user8', '농기구를 무료로 대여할 수 있어서 너무 편해요.', 5, '2021/05/27');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 2, 'user11', '공기가 참 맑아서 좋아요!', 4, '2021/06/03');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 2, 'user5', '추천드려요~굿굿!', 4, '2021/06/17');
--pseq: 3
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 3, 'user7', '나름 괜찮네요...', 3, '2021/04/30');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 3, 'user2', '주말마다 힐링되요~', 4, '2021/05/02');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 3, 'user6', '그저그래요...', 3, '2021/05/16');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 3, 'user8', '마음이 편해지는 곳이에요.', 5, '2021/06/22');
--pseq: 4
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user', '좋아요!!', 4, '2021/03/27');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user1', '가족과 함께 시간 보낼 수 있어서 너무 좋아요!', 5, '2021/04/19');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user2', '괜찮네요...', 3, '2021/04/16');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user3', '주변 경치가 끝내줘요.', 4, '2021/06/22');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user4', '편의시설이 잘 갖추어져 있어요.', 4, '2021/06/22');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user5', '땀흘리며 일하고나면 정말 보람차요!', 5, '2021/06/22');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 4, 'user6', '신선한 야채를 직접 캐올 수 있어서 너무 좋아요.', 5, '2021/06/22');
--pseq: 5
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 5, 'user10', '도로랑 가까워서 주변 소음이 심해요...', 3, '2021/03/09');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 5, 'user4', '정말 별로에요;;', 2, '2021/05/26');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 5, 'user9', '그럭저럭 괜찮아요', 4, '2021/06/05');
--pseq: 6
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 6, 'user1', '넓고 쾌적해요', 4, '2021/03/16');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 6, 'user7', '주차시설이 잘 마련되어있어요.', 4, '2021/03/26');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 6, 'user9', '주말마다 힐링되네요^^', 4, '2021/05/09');
insert into tblFarmReview (seq, pseq, id, detail, star, regDate)
    values (seqFarmReview.nextVal, 6, 'user', '사장님이 친절하시고 너무 재밌어요ㅋㅋ', 4, '2021/06/24');

--더미데이터 (tblFarm)
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '우리농장', '010-7735-0938', '경상북도 포항시 남구 상도남로33번길 6(상도동)', 200, 100000, '상세내용입니다.', 'n', '2018/11/16', '7.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '행복주말농장', '031-274-8788', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 1600, 150000, '상세내용입니다.', 'n', '2020/06/08', '8.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '행복주말농장', '010-3434-7890', '강원도 횡성군 횡성읍 경강로 1546', 500, 90000, '상세내용입니다.', 'n', '2018/02/24', '9.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '우리농장', '031-274-8788', '강원도 철원군 철원읍 금학로339번길', 1400, 150000, '상세내용입니다.', 'n', '2018/07/25', '10.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '우리농장', '010-9843-0734', '강원도 횡성군 횡성읍 경강로 1546', 100, 110000, '상세내용입니다.', 'n', '2018/01/05', '11.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '쌍용주말농장', '010-7735-0938', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 500, 80000, '상세내용입니다.', 'n', '2018/07/05', '12.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '우리농장', '031-205-3687', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 200, 100000, '상세내용입니다.', 'n', '2020/02/28', '13.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '우리농장', '031-274-8788', '서울특별시 강남구 논현로 427(역삼동)', 100, 110000, '상세내용입니다.', 'n', '2020/10/20', '14.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '쌍용주말농장', '010-9843-0734', '경상북도 포항시 남구 상도남로33번길 6(상도동)', 1200, 150000, '상세내용입니다.', 'n', '2020/05/09', '15.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '하늘농장', '010-9843-0734', '강원도 횡성군 횡성읍 경강로 1546', 1700, 140000, '상세내용입니다.', 'y', '2020/05/15', '16.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '우리농장', '031-205-3687', '서울특별시 강남구 논현로 427(역삼동)', 800, 150000, '상세내용입니다.', 'n', '2019/12/15', '17.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '늘푸른농장', '02-543-9870', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 100, 80000, '상세내용입니다.', 'n', '2020/05/30', '18.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '해바라기농장', '031-274-8788', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 2000, 150000, '상세내용입니다.', 'y', '2020/09/22', '19.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '해바라기농장', '010-7735-0938', '강원도 철원군 철원읍 금학로339번길', 1600, 100000, '상세내용입니다.', 'n', '2019/11/09', '20.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '쌍용주말농장', '031-205-3687', '경상북도 포항시 남구 상도남로33번길 6(상도동)', 100, 100000, '상세내용입니다.', 'y', '2018/08/22', '21.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '해바라기농장', '02-524-0987', '서울특별시 강남구 논현로 427(역삼동)', 1900, 90000, '상세내용입니다.', 'n', '2018/06/20', '22.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '늘푸른농장', '031-205-3687', '서울특별시 강남구 논현로 427(역삼동)', 900, 90000, '상세내용입니다.', 'n', '2020/01/14', '23.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '하늘농장', '010-3434-7890', '강원도 횡성군 횡성읍 경강로 1546', 1700, 100000, '상세내용입니다.', 'n', '2018/07/20', '24.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '행복주말농장', '010-9843-0734', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 300, 80000, '상세내용입니다.', 'n', '2020/03/02', '25.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '행복주말농장', '031-205-3687', '경상북도 포항시 남구 상도남로33번길 6(상도동)', 500, 100000, '상세내용입니다.', 'n', '2019/02/18', '26.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '쌍용주말농장', '031-205-3687', '서울특별시 강남구 논현로 427(역삼동)', 400, 80000, '상세내용입니다.', 'n', '2020/10/06', '27.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '쌍용주말농장', '02-524-0987', '충청북도 청주시 상당구 교서로32번길 21(북문로2가)', 400, 150000, '상세내용입니다.', 'n', '2019/10/12', '28.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '쌍용주말농장', '02-543-9870', '강원도 횡성군 횡성읍 경강로 1546', 1800, 100000, '상세내용입니다.', 'n', '2019/05/11', '29.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '늘푸른농장', '02-524-0987', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 1800, 100000, '상세내용입니다.', 'n', '2018/03/12', '30.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '하늘농장', '031-205-3687', '강원도 철원군 철원읍 금학로339번길', 700, 140000, '상세내용입니다.', 'n', '2018/09/02', '31.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '우리농장', '031-274-8788', '서울특별시 강남구 논현로 427(역삼동)', 1800, 130000, '상세내용입니다.', 'n', '2018/09/27', '32.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '우리농장', '02-543-9870', '강원도 횡성군 횡성읍 경강로 1546', 800, 80000, '상세내용입니다.', 'n', '2020/05/05', '33.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '우리농장', '02-543-9870', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 200, 120000, '상세내용입니다.', 'n', '2020/07/28', '34.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '우리농장', '031-205-3687', '강원도 철원군 철원읍 금학로339번길', 1700, 110000, '상세내용입니다.', 'n', '2020/08/18', '35.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '우리농장', '031-205-3687', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 200, 80000, '상세내용입니다.', 'n', '2018/05/12', '36.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '하늘농장', '02-524-0987', '강원도 철원군 철원읍 금학로339번길', 1200, 140000, '상세내용입니다.', 'n', '2018/12/21', '37.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '하늘농장', '031-274-8788', '경상북도 포항시 남구 상도남로33번길 6(상도동)', 1100, 90000, '상세내용입니다.', 'n', '2020/10/17', '38.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '해바라기농장', '02-543-9870', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 700, 150000, '상세내용입니다.', 'n', '2018/06/22', '39.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '해바라기농장', '010-7735-0938', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 1900, 100000, '상세내용입니다.', 'n', '2020/02/15', '40.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '행복주말농장', '02-524-0987', '강원도 횡성군 횡성읍 경강로 1546', 1600, 130000, '상세내용입니다.', 'n', '2020/04/18', '41.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '우리농장', '010-3434-7890', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 200, 120000, '상세내용입니다.', 'n', '2019/02/06', '42.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '우리농장', '010-9843-0734', '강원도 철원군 철원읍 금학로339번길', 1500, 90000, '상세내용입니다.', 'n', '2018/08/07', '43.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '늘푸른농장', '031-274-8788', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 1300, 150000, '상세내용입니다.', 'n', '2020/04/26', '44.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '늘푸른농장', '031-205-3687', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 1500, 140000, '상세내용입니다.', 'n', '2018/07/17', '45.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '우리농장', '010-7735-0938', '강원도 철원군 철원읍 금학로339번길', 600, 140000, '상세내용입니다.', 'n', '2019/04/22', '46.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '하늘농장', '02-524-0987', '서울특별시 강남구 논현로 427(역삼동)', 1400, 110000, '상세내용입니다.', 'n', '2019/01/17', '47.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user2', '늘푸른농장', '010-3434-7890', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 1800, 110000, '상세내용입니다.', 'y', '2019/04/28', '48.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '해바라기농장', '010-3434-7890', '강원도 횡성군 횡성읍 경강로 1546', 1300, 120000, '상세내용입니다.', 'n', '2018/07/06', '49.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user', '늘푸른농장', '031-205-3687', '강원도 횡성군 횡성읍 경강로 1546', 500, 100000, '상세내용입니다.', 'n', '2020/12/04', '50.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '우리농장', '010-7735-0938', '강원도 철원군 철원읍 금학로339번길', 900, 100000, '상세내용입니다.', 'n', '2018/10/24', '51.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user3', '늘푸른농장', '02-543-9870', '전라북도 전주시 완산구 전라감영2길 1(다가동1가)', 500, 120000, '상세내용입니다.', 'n', '2018/07/22', '52.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user', '하늘농장', '010-3434-7890', '강원도 횡성군 횡성읍 경강로 1546', 900, 100000, '상세내용입니다.', 'n', '2019/11/23', '53.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '쌍용주말농장', '031-205-3687', '강원도 철원군 철원읍 금학로339번길', 1700, 150000, '상세내용입니다.', 'n', '2018/11/17', '54.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '해바라기농장', '02-524-0987', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 200, 100000, '상세내용입니다.', 'n', '2019/09/14', '55.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '쌍용주말농장', '02-524-0987', '충청북도 청주시 상당구 교서로32번길 21(북문로2가)', 1700, 100000, '상세내용입니다.', 'n', '2019/07/11', '56.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user5', '우리농장', '031-274-8788', '강원도 횡성군 횡성읍 경강로 1546', 900, 120000, '상세내용입니다.', 'n', '2018/10/02', '57.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user6', '우리농장', '031-274-8788', '강원도 횡성군 횡성읍 경강로 1546', 100, 90000, '상세내용입니다.', 'n', '2020/10/03', '58.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user1', '우리농장', '010-3434-7890', '경상남도 창원시 의창구 읍성로34번길 3-1(중동)', 1000, 80000, '상세내용입니다.', 'n', '2020/08/14', '59.jpg');
insert into tblFarm (seq, id, name, tel, address, area, price, detail, isEnd, regDate, image) values (seqFarm.nextVal, 'user4', '쌍용주말농장', '010-3434-7890', '강원도 철원군 철원읍 금학로339번길', 200, 100000, '상세내용입니다.', 'n', '2020/10/16', '60.jpg');

commit;
