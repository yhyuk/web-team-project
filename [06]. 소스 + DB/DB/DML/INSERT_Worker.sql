-- tblWorker 데이터

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer1', '경상북도', '상주시', '양촌동 595', '과채류', 5, 75000, 40, 60, '054-251-0731', '2021-07-02', '2021-07-15', default, '1. 세부 농작업내용 : 상주시 일원 오이농가 유인 및 잎따기작업'||chr(13)||chr(10)||'2. 근무시간 : 08:00~17:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 80,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 농가주: 중식및 간식제공(중식 농작업자 준비시 임금에 반영)'||chr(13)||chr(10)||'센터: 참여자교통비, 농작업 상해보험 가입 등'||chr(13)||chr(10)||'6. 기타사항 : 참여자는 상주시 인력중개센터 방문, 등록신청서 작성 요망(신분증 지참)'||chr(13)||chr(10)||'- 문의사항 : 054-531-0734'||chr(13)||chr(10)||'- 주소 : 상주시 양촌3길 13', 'y', 'y', '오이하우스 일자리 참여자 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer2', '강원도', '평창군', '대화면 대화중앙로 106 대화농협', '경엽채류', 13, 65000, 20, 50, '033-339-8921', '2021-06-21', '2021-07-28', default, '1. 세부 농작업내용 : 대화면 내 브로콜리농가 수확작업'||chr(13)||chr(10)||'2. 근무시간 : 08:00~17:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 남자 100,000원 내외 / 여자 70,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 숙박비 및 교통비 일부지원'||chr(13)||chr(10)||'6. 기타사항 : 완전 초보 가능. 안전교육 & 작업 교육함.', 'n', 'y', '브로콜리 작업반원 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer5', '경상남도', '합천군', '용주면 고품부흥1길 7', '인경채류', 10, 85000, 20, 60, '055-930-3980', '2021-06-25', '2021-08-01', default, '1. 세부작업내용; 합천군 마늘 양파 수확작업'||chr(13)||chr(10)||'(마늘 수확, 양파 망작업 필수)'||chr(13)||chr(10)||'2. 근무시간; 07;00~17;00'||chr(13)||chr(10)||'3. 작업기간: 20일정도 예상.(5~6월 우천으로 인한 일정변경 있을수 있음)'||chr(13)||chr(10)||'4. 작업 장소 : 합천군 일원'||chr(13)||chr(10)||'5. 임금; 80,000원~85,000원'||chr(13)||chr(10)||'6. 상세지원내용'||chr(13)||chr(10)||'-. 센터에서 숙식 제공 (조식,석식)'||chr(13)||chr(10)||'-. 농장주; 중식 및 간식제공'||chr(13)||chr(10)||'-. 센터; 농작업 상해보험 가입, 작업용품 지급 등', 'y', 'y', '마늘 양파 수확작업 팀 모집합니다.');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer7', '경상북도', '상주시', '양촌3길 13 상주시조합공동법인', '과채류', 10, 89000, 20, 50, '	054-531-0734', '2021-08-21', '2021-09-22', default, '1. 세부 농작업내용 : 상주시 모서면 지산리 포도농가 봉지 및 수확작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~18:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 농가지원'||chr(13)||chr(10)||'4. 임금 : 일당 89000원'||chr(13)||chr(10)||'5. 상세 지원내용 : 간식 및 식사, 숙소 제공'||chr(13)||chr(10)||'6. 기타사항 : 월2회 휴무', 'n', default, '포도농가 일자리 참여자 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer4', '울산광역시', '울주군', '범서읍 장검길 10 울산원예농협', '과채류', 50, 78000, 40, 50, '052-220-6584', '2021-08-13', '2021-09-15', default, '1. 세부 농작업내용 :울산관내 배 봉지 작업'||chr(13)||chr(10)||'2. 근무시간 : 08:00~18:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금'||chr(13)||chr(10)||'- 경력자 : 100봉지당 5,000원'||chr(13)||chr(10)||'- 신 입 : 추후협의'||chr(13)||chr(10)||'5. 상세 지원내용 : 교통비 지원, 상해보험 지원'||chr(13)||chr(10)||'6. 기타사항 : 문의사항 울산 원예농협 강지연 052-220-6584', 'y', default, '울산 원예농협 농촌인력중개 [배봉지 작업]');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer2', '충청남도', '공주시', '사곡면 호계장터1길 1 사곡농협', '과채류', 3, 100000, 20, 30, '041-841-7005', '2021-08-23', '2021-08-25', default, '1. 세부 농작업내용 : ex) 함평시 내 사과농가 적화작업'||chr(13)||chr(10)||'2. 근무시간 : ex) 08:00~17:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : ex) 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : ex) 남자 100,000원 내외 / 여자 80,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : ex) 식사 제공방법, 숙소, 샤워시설 등 부대시설 및 상세 지원내용 기입', 'n', default, '옥수수 수확하기');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer2', '충청남도', '공주시', '사곡면 호계장터1길 1 사곡농협', '유지류', 5, 85000, 20, 50, '041-841-7005', '2021-09-21', '2021-09-28', default, '1. 세부 농작업내용 : 공주시 사곡면 깨 파종 작업'||chr(13)||chr(10)||'2. 근무시간 : 농가와 협의'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 농가와 협의'||chr(13)||chr(10)||'4. 임금 : 농가와 협의'||chr(13)||chr(10)||'5. 상세 지원내용 : 농가와 협의'||chr(13)||chr(10)||'6. 기타사항 : 농사 경험자 우대', 'y', default, '공주시 사곡면 내 깨 파종 작업 인력 채용');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer5', '전라북도', '남원시', '금하정2길 20 남원원협 2층 (사)임순남 남원지소', '과채류', 100, 75000, 30, 40, '063-625-0192', '2021-09-18', '2021-09-23', default, '1. 세부 농작업내용 : 남원시 내 복숭아농가 적화작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~17:00(중식시간 12:00~13:00 새참 오전30분 오후30분)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 :편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 80,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : ex) 식사 제공방법(농가와협의)'||chr(13)||chr(10)||'6. 기타사항 : 남원지소 063-625-0193', 'n', 'y', '(사)남원지소 복숭아 적과 봉지싸기');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer5', '전라북도', '남원시', '금하정2길 20 남원원협 2층 (사)임순남 남원지소', '과채류', 80, 85000, 30, 40, '063-625-0192', '2021-08-08', '2021-09-03', default, '1. 세부 농작업내용 : 남원시 내 사과농가 적화작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~17:00(중식시간 12:00~13:00 새참 오전30분, 오후30분)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 90,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 식사 제공방법(농가와협의),'||chr(13)||chr(10)||'6. 기타사항 : 임순남도농인력지원센터 전화 063 625-0192', 'n', default, '(사)남원지소 포도 적과 작업');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer7', '경상북도', '상주시', '양촌동 595 상주시인력중개센터 상주시조합공동법인', '과채류', 10, 70000, 50, 60, '054-531-0734', '2021-07-21', '2021-09-10', default, '1. 세부 농작업내용 : 상주시 일원 오이농가 유인 및 잎따기작업'||chr(13)||chr(10)||'2. 근무시간 : 08:00~17:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 70,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 농가주: 중식및 간식제공(중식 농작업자 준비시 임금에 반영)'||chr(13)||chr(10)||'센터: 참여자교통비, 농작업 상해보험 가입 등'||chr(13)||chr(10)||'6. 기타사항 : 참여자는 상주시 인력중개센터 방문, 등록신청서 작성 요망(신분증 지참)'||chr(13)||chr(10)||'- 문의사항 : 054-531-0734'||chr(13)||chr(10)||'- 주소 : 상주시 양촌3길 13', 'n', 'y', '오이하우스 일자리 참여자 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer3', '전라북도', '익산시', '낭산면 함낭로 948 낭산농협', '서류', 100, 100000, 20, 50, '063-862-2459', '2021-08-01', '2021-09-02', default, '1. 세부 농작업내용 : 익산시내 고구마 제초작업 및 수확/선별/포장작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~17:30(간식및조식/중식 농가제공)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 남자 100,000원 내외 / 여자 80,000원 내외(작업강도에 따라 임금이 상이함)'||chr(13)||chr(10)||'5. 상세 지원내용 :'||chr(13)||chr(10)||'6. 기타사항 : 교통비지급', 'y', default, '고구마 제초작업 및 수확/선별/포장작업');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer3', '전라북도', '익산시', '낭산면 함낭로 948 낭산농협', '서류', 40, 90000, 40, 50, '063-862-2459', '2021-08-01', '2021-09-01', default, '1. 세부 농작업내용 : 양파 수확'||chr(13)||chr(10)||'2. 근무시간 : 오전 7시 부터 오후 6시까지'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 남자 100,000원 내외 / 여자 80,000원 내외 단,작업강도에 따라 차등지급'||chr(13)||chr(10)||'5. 상세 지원내용 : 중식제공, 교통비지원, 작업반장수당지급'||chr(13)||chr(10)||'6. 기타사항 : 익산시 여산면 및 인근 충남, 완주 부근 거주자 그외 지역도 상관없음.', 'n', 'y', '익산시 여산면 농촌인력 모집 신청(여산농협)');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer2', '충청남도 ', '부여군', '문산읍 문정로 471-9', '과채류', 10, 85000, 20, 40, '041-835-2285', '2021-08-11', '2021-08-15', default, '1. 세부 농작업내용 : 부여군 내 수박농가 작업'||chr(13)||chr(10)||'2. 근무시간 : 농가분과 상의'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 농가주인 차량운행 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 70,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 중식 및 간식 제공'||chr(13)||chr(10)||'6. 기타사항 : 구룡농협 인력중개센터 방문(신청서 작성)'||chr(13)||chr(10)||'문의사항: 041-832-2285'||chr(13)||chr(10)||'주소: 충남 부여군 구룡면 흥수로 113', 'y', default, '수박 순 지르기 구룡농촌인력중개센터');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer6', '전라북도', '남원시', '금하정2길 20 남원원협 2층', '인경채류', 50, 95000, 30, 40, '063-625-0192', '2021-08-01', '2021-09-09', default, '1. 세부 농작업내용 :남원시 내 양파농가 적화작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~17:00(중식시간 12:00~13:00 새참 오전30분, 오후30분)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 85,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 식사 제공방법(농가와협의)'||chr(13)||chr(10)||'6. 기타사항 : 남원지소 063-625-0193', 'y', default, '양파농가 적화작업');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer6', '충청남도', '부여군', '규암면 흥수로 488 부여군농업회의소', '과채류', 10, 105000, 20, 30, '041-830-2912', '2021-09-11', '2021-10-15', default, '1. 세부 농작업내용 : 고구마식재, 과수적과, 밭작물 식재 및 수확작업 등'||chr(13)||chr(10)||'2. 근무시간 : 07시~18시 (농장 여건에 따라 변경가능함)'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 :농장주와 협의 결정 (농장일과 작업조건에 따라 변동됨)'||chr(13)||chr(10)||'5. 상세 지원내용 : 중식, 간식 농장에서 제공, 농작업단체상해보험가입', 'y', default, '부여군일원 비닐하우스 농사 직원구함');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer1', '경상남도', '고성군', '고성읍 중앙로 134 (사)한국농업경영인 고성군 연합회', '과채류', 120, 95000, 30, 40, '055-673-3665', '2021-09-21', '2021-10-15', default, '1. 세부 농작업내용 : 하우스작업, 과수원작업, 논밭농사 등 농작업일체'||chr(13)||chr(10)||''||chr(13)||chr(10)||'2. 근무시간 : 08:00~17:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'-농가의 사정에 따라 근무시간 변경'||chr(13)||chr(10)||'-작업일자 및 일수는 참여자 개별 상담 후 농가주와 협의'||chr(13)||chr(10)||''||chr(13)||chr(10)||'3. 작업지 이동방법'||chr(13)||chr(10)||'-농가수송(중간픽업)'||chr(13)||chr(10)||'-자가 및 개별이동'||chr(13)||chr(10)||'-편성된 영농작업반과 동행하여 이동'||chr(13)||chr(10)||''||chr(13)||chr(10)||'4. 임금 : 작업내용에 따라 농가와 협의 후'||chr(13)||chr(10)||''||chr(13)||chr(10)||'5. 상세 지원내용'||chr(13)||chr(10)||'-농가주: 농작업 현장실습교육비 지원'||chr(13)||chr(10)||'-참여자: 교통비 지급, 작업반장 수당지원, 상해보험 가입'||chr(13)||chr(10)||''||chr(13)||chr(10)||'6. 기타사항 :'||chr(13)||chr(10)||'-현재 우선적으로 참여자 신청을 접수하며, 농작업일정은 추후 개별연락을 통한 참여예정'||chr(13)||chr(10)||'-문의사항은 고성군농촌인력지원센터 로 유선 문의해 주세요(055- 673-3665)'||chr(13)||chr(10)||'주소: 경남 고성군 고성읍 중앙로 134, 농어업인회관 내 3층 고성군농업인력중개센터'||chr(13)||chr(10)||'*내방시 신분증 지참', 'n', default, '고성군농촌인력지원센터-계절근로자 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer4', '울산광역시', '울주군', '범서읍 장검길 10 울산원예농협', '과채류', 5, 95000, 40, 60, '	052-220-6584', '2021-08-01', '2021-09-09', default, '1. 세부 농작업내용 : 울산관내 배 적과 및 봉지씌우기작업'||chr(13)||chr(10)||'2. 근무시간 : 08:00~18:00(중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 80,000원'||chr(13)||chr(10)||'5. 상세 지원내용 : 교통비 지원, 상해보험지원'||chr(13)||chr(10)||'6. 기타사항 : 문의사항 울산원예농협 강지연 052-220-6584', 'y', default, '배 적과 및 봉지씌우기작업');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer1', '경상북도', '영양군', '문산읍 일월면 재일로 2476 영양군 빛깔찬일자리지원센터', '과채류', 60, 100000, 20, 50, '054-683-0038', '2021-08-18', '2021-09-17', default, '1. 세부 농작업내용 : 고추수확'||chr(13)||chr(10)||''||chr(13)||chr(10)||'2. 임금 : 75,000원'||chr(13)||chr(10)||''||chr(13)||chr(10)||'3. 중식 및 새참은 농가에서 지원'||chr(13)||chr(10)||''||chr(13)||chr(10)||'4. 교통비 제공 안됨'||chr(13)||chr(10)||''||chr(13)||chr(10)||'5. 근무시간 타 : 07:00 ~ 18:00 (추후 작업시간은 농가와 협의)'||chr(13)||chr(10)||''||chr(13)||chr(10)||'6. 일자리센터에 연결된 농가로 배정하여 농작업을 함'||chr(13)||chr(10)||''||chr(13)||chr(10)||'영양군 고추농가들의 본격적인 수확철이 다가옴에 따라'||chr(13)||chr(10)||'농촌에 일손부족으로 인해 일을 하실분들을 모집합니다.'||chr(13)||chr(10)||''||chr(13)||chr(10)||'숙소(흥림산 휴양림) 을 사용하고 있으며'||chr(13)||chr(10)||'아침 및 석식은 센터에서 제공해드리고 있습니다.'||chr(13)||chr(10)||'또한 농가에 일을 가시면 농가에서 점심을 제공하여'||chr(13)||chr(10)||'숙식을 하시는데 문제가 없도록 하고있습니다.'||chr(13)||chr(10)||'영양군에서 고추를 수확해보신분들을 우대하고있으며'||chr(13)||chr(10)||'일자리가 필요하신 구직자 분들의 많은 신청 부탁드립니다.', 'y', default, '영양군 고추수확 인력 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer4', '전라북도', '김제시', '금구면 봉두4길 59-48 동김제농협 경제종합센터 김제시 농촌고용인력중개센터', '과채류', 5, 85000, 30, 50, '063-546-5620', '2021-08-30', '2021-09-11', default, '1. 세부 농작업내용 : 김제시 황산면 관내 고추수확 및 배추 종자 심기'||chr(13)||chr(10)||'2. 근무시간 : 07:00~18:00'||chr(13)||chr(10)||'* 작업시간은 농장주와 협의 후 변경 가능'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 80,000원'||chr(13)||chr(10)||'5. 상세 지원내용 : 새참 및 중식 지원, 작업반장 교통비 추가 지원, 농작업 참여자 1일1인1만원 추가 지원'||chr(13)||chr(10)||'6. 기타사항 : 기타 문의 사항(김제시 농촌고용인력 지원센터 담당자010-2684-6966)', 'n', default, '김제시 황산면 관내 고추따기 및 배추종자 심기');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer', '전라북도', '남원시', '금하정2길 20 남원원협 2층 (금동) (사)임순남 남원지소', '과수류', 20, 88000, 30, 40, '063-625-0192', '2021-08-21', '2021-08-15', default, '1. 세부 농작업내용 : 남원시 내 사과농가 잎따기작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~17:00(중식시간 12:00~13:00, 새참시간있음)'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : ex) 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 75,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 교통비지원, 식대지원'||chr(13)||chr(10)||'6. 기타사항 : 상담요망 063-625-0193', 'n', default, '사과 잎따기 작업');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer', '경상남도', '진주시', '문산읍 문정로 471-9 (사)진주시농업인단체협의회', '과채류', 10, 75000, 30, 70, '055-761-3733', '2021-07-21', '2021-09-25', default, '1. 세부 농작업내용 : 진주시 수곡 딸기 농가 육묘장 상토작업 및 묘종 잎떼기'||chr(13)||chr(10)||'2. 근무시간 : 08:00~17:00 (중식시간 12:00~13:00)'||chr(13)||chr(10)||'*5명이서 2일간 작업함.'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 또는 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 65,000원 +차비 5,000원'||chr(13)||chr(10)||'5. 상세 지원내용 : 농가 식사 제공함.'||chr(13)||chr(10)||'6. 기타사항 :', 'n', default, '딸기육묘장 상토작업 및 육묘 관리');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer', '경상북도', '청도군', '화양읍 청화3길 10 청도군 농업기술센터 1층 청도군 농촌인력지원센터', '과채류', 15, 85000, 20, 50, '054-373-1939', '2021-08-10', '2021-08-15', default, '1. 세부 농작업내용 : 청도군 매전면, 금천면, 운문면 일대'||chr(13)||chr(10)||''||chr(13)||chr(10)||'2. 근무시간 : 07:00~17:00 농가별 협의'||chr(13)||chr(10)||''||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||''||chr(13)||chr(10)||'3. 작업지 이동방법 : 농작업지 개별이동'||chr(13)||chr(10)||''||chr(13)||chr(10)||'4. 임금 : 여자 80,000원 내외'||chr(13)||chr(10)||''||chr(13)||chr(10)||'5. 상세 지원내용 : 참여자 교통비 지급 및 팀장 수당 지급'||chr(13)||chr(10)||''||chr(13)||chr(10)||'6. 기타사항 : 상세내역은 센터로 연락 주시면 빠른 상담 가능합니다.'||chr(13)||chr(10)||'054-373-1939', 'y', default, '산딸기 수확작업 5~10인 팀 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer5', '경상남도', '진주시', '문산읍 문정로 471-9 (사)진주시농업인단체협의회', '과수류', 6, 80000, 20, 40, '055-761-3733', '2021-07-21', '2021-09-09', default, '1. 세부 농작업내용 : 진주시 문산읍 매실농가 매실 수확'||chr(13)||chr(10)||'2. 근무시간 : 08:00~17:00 (중식시간 12:00~13:00)'||chr(13)||chr(10)||'* 6월 1일~ 5일간 예정( 늦으면 6월 4일 작업시작할수 있고 비가오면 그 뒷날 시작함)'||chr(13)||chr(10)||'3. 작업지 이동방법 : 편성된 영농작업반과 동행하여 이동 / 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 :남자 80,000원 내외 / 여자 70,000원 내외'||chr(13)||chr(10)||'5. 상세 지원내용 : 농가 식사 및 간식 제공,'||chr(13)||chr(10)||'6. 기타사항 : 사다리 3단~ 5단정도 이용함.', 'y', default, '(급구)매실 수확 일꾼 모집');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer2', '경상북도', '경주시', '양남면 동해안로 445 양남농협 인력중개센터 양남농협', '경엽채류', 30, 87000, 20, 40, '054-744-0968', '2021-07-28', '2021-08-25', default, '1. 세부 농작업내용 : 부추 하우스 개.보수 및 기타'||chr(13)||chr(10)||''||chr(13)||chr(10)||'2. 근무시간: 06시~18시'||chr(13)||chr(10)||'*작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||''||chr(13)||chr(10)||'3. 작업지 이동방법: 개별이동'||chr(13)||chr(10)||''||chr(13)||chr(10)||'4. 임금: 60,000 원 / 일'||chr(13)||chr(10)||''||chr(13)||chr(10)||'5. 상세 지원내용: 쌀 제공, 새참 2회 제공(빵, 라면). 기타 반찬류는 본인부담'||chr(13)||chr(10)||'농가에서 숙소 제공 가능'||chr(13)||chr(10)||'교통비 일5천원 지원'||chr(13)||chr(10)||'일일상해보험 무상가입'||chr(13)||chr(10)||''||chr(13)||chr(10)||'6. 기타사항: 남성인력을 필요로 하는 장기적인 일자리입니다.'||chr(13)||chr(10)||'많은 지원 바랍니다.', 'n', default, '부추 하우스 개보수 및 기타작업(경주시 양남면)');

insert into tblWorker (seq, id, city, gu, address, cropInfo, totalPerson, pay, minAge, maxAge, tel, startDate, endDate, regDate, detail, isCareer, isEnd, title)
    values (seqWorker.nextVal, 'farmer', '전라북도', '진안군', '백운면 임진로 1309 백운농협', '과채류', 20, 65000, 20, 50, '063-430-3704', '2021-07-02', '2021-08-15', default, '1. 세부 농작업내용 : 수박 순 지르기 작업'||chr(13)||chr(10)||'2. 근무시간 : 07:00~18:00 (중식시간 12:00~13:00)'||chr(13)||chr(10)||'날씨 상황에 따라 작업시간이 달라질 수 있음. 점심시간 제외 10시간 작업.'||chr(13)||chr(10)||'* 작업일자 및 일수는 신청자 개별 상담 후 협의'||chr(13)||chr(10)||'3. 작업지 이동방법 : 농작업지 개별이동'||chr(13)||chr(10)||'4. 임금 : 여자 70,000원'||chr(13)||chr(10)||'5. 상세 지원내용 :'||chr(13)||chr(10)||'숙소 - 농가 소유 숙소 지원'||chr(13)||chr(10)||'교통비 - 거리에 따라 5천원~7천원 지원함'||chr(13)||chr(10)||'식사 - 농가에서 중식과 새참 지원함'||chr(13)||chr(10)||'6. 기타사항 : 농가에서 작업교육을 하고 작업을 시작 하기 때문에 경험이 없으시더라도 지원하실 수 있습니다.', 'n', default, '수박 순 지르기 작업 반원 모집');

commit;



-- 더미데이터(tblWorkApply)--------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 18, 'user1', 5, '작년에 일해본 경험이 있습니다.'||chr(13)||chr(10)||'뽑아주신다면 열심히 일하겠습니다.', default, default, 'n');

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 18, 'user3', 2, '친구와 같이 신청합니다.'||chr(13)||chr(10)||'농사일을 배운적이 있어서 잘 할 수 있습니다.', default, default, 'n');

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 19, 'user2', 5, '농사일은 처음이지만 저의 일처럼 열심히 하겠습니다.'||chr(13)||chr(10)||'감사합니다.^^', default, default, 'y');

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 19, 'user4', 1, '꼼꼼하게 작업하겠습니다.'||chr(13)||chr(10)||'연락 기다리겠습니다.', default, default, 'y'); 
    
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 19, 'user6', 1, '열심히 일하는 모습 보여드리겠습니다.'||chr(13)||chr(10)||'연락주세요.', default, default, 'y');     
    
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 20, 'user5', 10, '힘 좋은 청년들입니다.'||chr(13)||chr(10)||'열심히 하겠습니다.'||chr(13)||chr(10)||'연락 기다리겠습니다.', default, default, 'y');     
 
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 20, 'user7', 2, '빠른 손이 여기있습니다.'||chr(13)||chr(10)||'수확, 모종심기, 관리 자신있습니다.', default, default, 'y');     
        
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 20, 'user9', 5, '손발 잘 맞는 능력 좋은 팀입니다.'||chr(13)||chr(10)||'특수 재배도 가능합니다. 연락주세요.', default, default, 'n');     
           
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 17, 'user', 1, '빠른 손, 성실한 청년입니다.'||chr(13)||chr(10)||'장기알바 가능합니다.연락주세요.', 'y', default, 'n');     
              
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 15, 'user', 1, '성실하게 부지런히 움직이겠습니다.'||chr(13)||chr(10)||'연락 기다리겠습니다^^', default, default, 'n');         
        
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 10, 'user', 1, '경력있습니다.'||chr(13)||chr(10)||'맡겨만 주세요. 빠르게 작업하겠습니다.', default, default, 'n');         

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 8, 'user', 5, '5명씩 팀 단위 작업도 가능합니다.'||chr(13)||chr(10)||'연락부탁드리겠습니다.', 'y', default, 'n');         

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 1, 'user1', 1, '작년에 일해본 경험이 있습니다.'||chr(13)||chr(10)||'뽑아주신다면 열심히 일하겠습니다.', default, default, 'n');

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 2, 'user3', 2, '친구와 같이 신청합니다.'||chr(13)||chr(10)||'농사일을 배운적이 있어서 잘 할 수 있습니다.', default, default, 'n');

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 3, 'user2', 5, '농사일은 처음이지만 저의 일처럼 열심히 하겠습니다.'||chr(13)||chr(10)||'감사합니다.^^', default, default, 'y');

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 4, 'user4', 1, '꼼꼼하게 작업하겠습니다.'||chr(13)||chr(10)||'연락 기다리겠습니다.', default, default, 'y'); 
    
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 5, 'user6', 1, '열심히 일하는 모습 보여드리겠습니다.'||chr(13)||chr(10)||'연락주세요.', default, default, 'y');     
    
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 6, 'user5', 10, '힘 좋은 청년들입니다.'||chr(13)||chr(10)||'열심히 하겠습니다.'||chr(13)||chr(10)||'연락 기다리겠습니다.', default, default, 'y');     
 
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 7, 'user7', 20, '빠른 손이 여기있습니다.'||chr(13)||chr(10)||'수확, 모종심기, 관리 자신있습니다.', default, default, 'y');     
        
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 8, 'user9', 15, '손발 잘 맞는 능력 좋은 팀입니다.'||chr(13)||chr(10)||'특수 재배도 가능합니다. 연락주세요.', default, default, 'n');     
           
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 9, 'user2', 1, '빠른 손, 성실한 청년입니다.'||chr(13)||chr(10)||'장기알바 가능합니다.연락주세요.', default, default, 'n');     
              
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 10, 'user10', 1, '성실하게 부지런히 움직이겠습니다.'||chr(13)||chr(10)||'연락 기다리겠습니다^^', default, default, 'n');         
        
insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 11, 'user9', 1, '경력있습니다.'||chr(13)||chr(10)||'맡겨만 주세요. 빠르게 작업하겠습니다.', default, default, 'n');         

insert into tblWorkApply (seq, pseq, id, totalApply, detail, isPass, regDate, isCareer) 
    values (seqWorkApply.nextVal, 12, 'user8', 5, '5명씩 팀 단위 작업도 가능합니다.'||chr(13)||chr(10)||'연락부탁드리겠습니다.', 'y', default, 'n');         
 
 
commit;   
                                