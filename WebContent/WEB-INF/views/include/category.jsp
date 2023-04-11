<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	function setOptionValueToInput() {
		// Get the select element by its ID
		var selectElement = document.getElementById("dropdown");

		// Get the selected option value
		var selectedValue = selectElement.value;

		// Get the input element by its ID
		var inputElement = document.getElementById("inputField");

		// Set the input field value to the selected option value
		inputElement.value = selectedValue;
	}
</script>


<div class="col-sm-9 input-group input-group-sm"
	style="margin-left: 25%;">
	대분류<select id="productSelect">
		<option value="0" selected="selected">제품군 선택</option>
		<option value="1">의류</option>
		<option value="2">뷰티</option>
		<option value="3">주방용품</option>
		<option value="4">생활용품</option>
		<option value="5">가구</option>
		<option value="6">문구/오피스</option>
		<option value="7">가전/디지털</option>
		<option value="8">스포츠/레저</option>
		<option value="9">자동차용품</option>
		<option value="10">완구/취미</option>
		<option value="11">식품</option>
	</select> >&nbsp;중분류 <select id="mallSelect">
		<option value="0" class="mall1">선택</option>
		<option value="1" class="mall1">여성 패션</option>
		<option value="2" class="mall1">남성 패션</option>
		<option value="3" class="mall1">남녀 공용 의류</option>
		<option value="4" class="mall1">유아용 의류</option>

		<option value="5" class="mall2">스킨케어</option>
		<option value="6" class="mall2">클린비건뷰티</option>
		<option value="7" class="mall2">클렌징/필링</option>
		<option value="8" class="mall2">메이크업</option>
		<option value="9" class="mall2">향수</option>
		<option value="10" class="mall2">남성화장품</option>
		<option value="11" class="mall2">네일</option>
		<option value="12" class="mall2">뷰티소품</option>
		<option value="13" class="mall2">헤어</option>
		<option value="14" class="mall2">바디</option>

		<option value="15" class="mall3">주방조리도구</option>
		<option value="16" class="mall3">그릇/홈세트</option>
		<option value="17" class="mall3">수저/커트러리</option>
		<option value="18" class="mall3">컵/텀블러/와인용품</option>
		<option value="19" class="mall3">주전자/커피/티용품</option>
		<option value="20" class="mall3">주방수납/정리</option>
		<option value="21" class="mall3">밀폐저장/도시락</option>
		<option value="22" class="mall3">주방잡화</option>
		<option value="23" class="mall3">일회용품/종이컵</option>
		<option value="24" class="mall3">보은/보냉용품</option>
		<option value="25" class="mall3">방한용품</option>
		<option value="26" class="mall3">바디/세안</option>

		<option value="27" class="mall4">구강/면도</option>
		<option value="28" class="mall4">화장지/물티슈</option>
		<option value="29" class="mall4">생리대/성인기저귀</option>
		<option value="30" class="mall4">기저귀</option>
		<option value="31" class="mall4">세탁세제</option>
		<option value="32" class="mall4">청소/주방세제</option>
		<option value="33" class="mall4">탈취/방향/살충제</option>
		<option value="34" class="mall4">건강/의료용품</option>
		<option value="35" class="mall4">세탁/청소용품</option>
		<option value="36" class="mall4">욕실용품</option>
		<option value="37" class="mall4">생활전기용품</option>
		<option value="38" class="mall4">수납/정리</option>

		<option value="39" class="mall5">싱글하우스</option>
		<option value="40" class="mall5">홈데코</option>
		<option value="41" class="mall5">가구</option>
		<option value="42" class="mall5">수납정리</option>
		<option value="43" class="mall5">침구</option>
		<option value="44" class="mall5">커튼/블라인드</option>
		<option value="45" class="mall5">카페드/쿠션/거실화</option>
		<option value="46" class="mall5">수예/수선</option>
		<option value="47" class="mall5">욕실용품</option>
		<option value="48" class="mall5">조명/스탠드</option>
		<option value="49" class="mall5">셀프 인테리어</option>
		<option value="50" class="mall5">원예/가드닝</option>

		<option value="51" class="mall6">미술/학업용품</option>
		<option value="52" class="mall6">캐릭터문구</option>
		<option value="53" class="mall6">학용품/수업준비</option>
		<option value="54" class="mall6">필기류/노트/메모지</option>
		<option value="55" class="mall6">다이어리/플래너</option>
		<option value="56" class="mall6">바인더/파일</option>
		<option value="57" class="mall6">파티/이벤트</option>
		<option value="58" class="mall6">데코/포장용품</option>
		<option value="59" class="mall6">카드/엽서/봉투</option>
		<option value="60" class="mall6">앨범</option>
		<option value="61" class="mall6">복사용품/라벨지</option>
		<option value="62" class="mall6">보드/칠판/광고</option>
		<option value="63" class="mall11">과일</option>
		<option value="64" class="mall11">견과</option>
		<option value="65" class="mall11">채소</option>
		<option value="66" class="mall11">쌀/잡곡</option>
		<option value="67" class="mall11">축산/계란</option>
		<option value="68" class="mall11">수산물/건어물</option>
		<option value="69" class="mall11">생수/음료</option>
		<option value="70" class="mall11">커피/원두/차</option>
		<option value="71" class="mall11">과자/초콜릿/시리얼</option>
		<option value="72" class="mall11">면/통조림/가공식품</option>
		<option value="73" class="mall11">가루/조미료/오일</option>
		<option value="74" class="mall11">장/소스/드레싱/식초</option>
		<option value="75" class="mall11">유제품/아이스크림</option>
		<option value="76" class="mall11">냉장/냉동/간편요리</option>
		<option value="77" class="mall11">건강식품</option>


	</select> >&nbsp;소분류 <select id="dropdown" name="category_code">
		<option value="0" selected="selected">선택</option>
		<!--여성패션  -->
		<option value="P010101" class="md1">원피스</option>
		<option value="P010102" class="md1">상의</option>
		<option value="P010103" class="md1">하의</option>
		<option value="P010104" class="md1">속옷/잠옷</option>
		<option value="P010105" class="md1">신발</option>
		<option value="P010106" class="md1">가방/잡화</option>

		<!--남성패션  -->
		<option value="P010201" class="md2">상의</option>
		<option value="P010202" class="md2">하의</option>
		<option value="P010203" class="md2">속옷/잠옷</option>
		<option value="P010204" class="md2">신발</option>
		<option value="P010205" class="md2">가방/잡화</option>

		<!--남녀공동  -->
		<option value="P010301" class="md3">아우터</option>
		<option value="P010302" class="md3">티셔츠</option>
		<option value="P010303" class="md3">맨투맨/후드티</option>
		<option value="P010304" class="md3">셔츠</option>
		<option value="P010305" class="md3">바지</option>
		<option value="P010306" class="md3">트레이닝복</option>
		<option value="P010307" class="md3">집업</option>
		<option value="P010308" class="md3">니트</option>
		<option value="P010309" class="md3">테마 의류</option>
		<option value="P010310" class="md3">커플룩/패밀리룩</option>
		<option value="P010311" class="md3">빅사이즈</option>

		<!--유아동  -->
		<option value="P010401" class="md4">베이비</option>
		<option value="P010402" class="md4">여아</option>
		<option value="P010403" class="md4">남아</option>

		<!--스킨케어 -->
		<option value="P020101" class="md5">스킨</option>
		<option value="P020102" class="md5">로션</option>
		<option value="P020103" class="md5">에센스/세럼/엠플</option>
		<option value="P020104" class="md5">미스트</option>
		<option value="P020105" class="md5">오일</option>
		<option value="P020106" class="md5">크림/올인원</option>
		<option value="P020107" class="md5">기초세트</option>
		<option value="P020108" class="md5">마스크/팩</option>
		<option value="P020109" class="md5">선케어/태닝</option>

		<!--클린비건뷰티  -->
		<option value="P020201" class="md6">스킨케어</option>
		<option value="P020202" class="md6">메이크업</option>

		<!--클렌징/필링  -->
		<option value="P020301" class="md7">클렌징 폼</option>
		<option value="P020302" class="md7">클렌징 젤/파우더</option>
		<option value="P020303" class="md7">클렌징 비누</option>
		<option value="P020304" class="md7">클렌징 오일</option>
		<option value="P020305" class="md7">클렌징 워터</option>
		<option value="P020306" class="md7">립/아이 리무버</option>
		<option value="P020307" class="md7">클렌징 티슈/시트</option>
		<option value="P020308" class="md7">클렌징 로션 크림</option>
		<option value="P020309" class="md7">클렌징 세트</option>
		<option value="P020310" class="md7">스크럽/필링</option>

		<!--메이크업  -->
		<option value="P020401" class="md8">베이스 메이크업</option>
		<option value="P020402" class="md8">아이 메이크업</option>
		<option value="P020403" class="md8">립 메이크업</option>
		<option value="P020404" class="md8">치크 메이크업</option>
		<option value="P020405" class="md8">멀티 메이크업</option>
		<option value="P020406" class="md8">바디 메이크업</option>

		<!--향수 -->
		<option value="P020501" class="md9">여성 향수</option>
		<option value="P020502" class="md9">남녀 공용 향수</option>
		<option value="P020503" class="md9">고체향수</option>
		<option value="P020504" class="md9">드레스 퍼퓸</option>


		<!--남성화장품  -->
		<option value="P020601" class="md10">남성 스킨 케어</option>
		<option value="P020602" class="md10">남성 메이크업</option>
		<option value="P020603" class="md10">남성 화장품 세트</option>
		<option value="P020604" class="md10">남성 헤어케어</option>
		<option value="P020605" class="md10">남성 바디케어</option>
		<option value="P020606" class="md10">남성 쉐이빙케어</option>


		<!--네일  -->
		<option value="P020701" class="md11">네일팁/스티커</option>
		<option value="P020702" class="md11">일반 네일</option>
		<option value="P020703" class="md11">젤네일</option>
		<option value="P020704" class="md11">큐티클/영양</option>
		<option value="P020705" class="md11">네일 케어 도구</option>
		<option value="P020706" class="md11">네일 아트</option>



		<!--뷰티소품  -->
		<option value="P020801" class="md12">화장솜/면봉</option>
		<option value="P020802" class="md12">아이 소품</option>
		<option value="P020803" class="md12">페이스 소품</option>
		<option value="P020804" class="md12">클렌징 소품</option>
		<option value="P020805" class="md12">헤어 소품</option>
		<option value="P020806" class="md12">피부관리기</option>
		<option value="P020807" class="md12">용기/거울/기타</option>

		<!--헤어  -->
		<option value="P020901" class="md13">샴푸</option>
		<option value="P020902" class="md13">린스/컨디셔너</option>
		<option value="P020903" class="md13">트리트먼트/팩/앰플</option>
		<option value="P020904" class="md13">헤어 에센스/오일</option>
		<option value="P020905" class="md13">헤어 스타일링</option>
		<option value="P020906" class="md13">헤어 세트</option>
		<option value="P020907" class="md13">염색/펌</option>

		<!--바디  -->
		<option value="P021001" class="md14">샤워/입욕 용품</option>
		<option value="P021002" class="md14">바디로션/크림</option>
		<option value="P021003" class="md14">핸드/풋/데오</option>
		<option value="P021004" class="md14">제모/슬리밍/청결제</option>


		<!--주방조리도구  -->
		<option value="P030101" class="md15">조리도구</option>
		<option value="P030102" class="md15">조리도구 세트</option>
		<option value="P030103" class="md15">가위/슬라이서/스퀴저</option>
		<option value="P030104" class="md15">믹싱볼/대야</option>
		<option value="P030105" class="md15">채반/소쿠리</option>
		<option value="P030106" class="md15">다지기/절구/밀대</option>
		<option value="P030107" class="md15">석쇠/버너/화로</option>
		<option value="P030108" class="md15">야채 탈수기</option>
		<option value="P030109" class="md15">간식/도시락용 도구</option>
		<option value="P030110" class="md15">베이킹 용품</option>
		<option value="P030111" class="md15">칼</option>
		<option value="P030112" class="md15">도구</option>

		<!--그릇/홈세트  -->
		<option value="P030201" class="md16">식기홈세트</option>
		<option value="P030202" class="md16">그릇/식기</option>
		<option value="P030203" class="md16">접시/플레이트</option>
		<option value="P030204" class="md16">식탁보/테이블 매트</option>
		<option value="P030205" class="md16">쟁반/베드 트레이</option>
		<option value="P030206" class="md16">이유/유아식기</option>
		<option value="P030207" class="md16">제기/제수용품</option>


		<!--수저/커트러리  -->
		<option value="P030301" class="md17">수저/커트러리 세트</option>
		<option value="P030302" class="md17">숟가락/티스푼</option>
		<option value="P030303" class="md17">젓가락</option>
		<option value="P030304" class="md17">포크</option>
		<option value="P030305" class="md17">나이프</option>
		<option value="P030306" class="md17">유아동 수저</option>
		<option value="P030307" class="md17">서빙스푼/스쿱</option>
		<option value="P030308" class="md17">수저통/수저받침</option>

		<!--컵/텀블러/와인용품  -->
		<option value="P030401" class="md18">머그/드링크잔</option>
		<option value="P030402" class="md18">커피잔/찻잔</option>
		<option value="P030403" class="md18">텀블러/콜드컵</option>
		<option value="P030404" class="md18">유아동컵/빨대컵</option>
		<option value="P030405" class="md18">물컵/주스컵</option>
		<option value="P030406" class="md18">유리컵/맥주잔</option>
		<option value="P030407" class="md18">와인용품</option>
		<option value="P030408" class="md18">주류용품</option>
		<option value="P030409" class="md18">컵 소품</option>
		<option value="P030410" class="md18">머그/드링크잔</option>
		<option value="P030411" class="md18">머그/드링크잔</option>
		<option value="P030412" class="md18">머그/드링크잔</option>
		<option value="P030413" class="md18">머그/드링크잔</option>

		<!--주전자/티/용품  -->
		<option value="P030501" class="md19">주전자/티포트</option>
		<option value="P030502" class="md19">커피 용품</option>
		<option value="P030503" class="md19">티용품</option>

		<!--주방수납/정리  -->
		<option value="P030601" class="md20">공간별 수납/정리</option>
		<option value="P030602" class="md20">식기 건조대/선반</option>
		<option value="P030603" class="md20">주방정리/소품</option>
		<option value="P030604" class="md20">교자상</option>



		<!--밀폐저장/도시락  -->
		<option value="P030701" class="md21">밀폐보관용기</option>
		<option value="P030702" class="md21">특수저장용기</option>
		<option value="P030703" class="md21">양념통/오일병</option>
		<option value="P030704" class="md21">쌀통/잡곡통/항아리</option>
		<option value="P030705" class="md21">김치통/진공항아리</option>
		<option value="P030706" class="md21">도시락통/가방/찬합</option>
		<option value="P030707" class="md21">이유식조리보관</option>
		<option value="P030708" class="md21">유아동물병/도시락</option>
		<option value="P030709" class="md21">밀폐보관용기</option>
		<option value="P030710" class="md21">밀폐보관용기</option>



		<!--주방잡화  -->
		<option value="P030801" class="md22">수세미/세척솔</option>
		<option value="P030802" class="md22">고무장갑</option>
		<option value="P030803" class="md22">행주</option>
		<option value="P030804" class="md22">앞치마/오븐장갑</option>
		<option value="P030805" class="md22">주방매트/다용도매트</option>
		<option value="P030806" class="md22">식탁보/테이블매트</option>
		<option value="P030807" class="md22">음식물쓰레기통</option>
		<option value="P030808" class="md22">싱크대용품</option>
		<option value="P030809" class="md22">아트보드/렌지가드</option>
		<option value="P030810" class="md22">계량/저울/타이머</option>
		<option value="P030811" class="md22">덮개/받침</option>
		<option value="P030812" class="md22">냅킨/주방수건</option>
		<option value="P030813" class="md22">오프너/병따개</option>



		<!--일회용품/종이컵  -->
		<option value="P030901" class="md23">랩/호일/유산지</option>
		<option value="P030902" class="md23">키친타올</option>
		<option value="P030903" class="md23">일회용 장갑</option>
		<option value="P030904" class="md23">위생백/비닐봉투</option>
		<option value="P030905" class="md23">일회용컵</option>
		<option value="P030906" class="md23">일회용수저</option>
		<option value="P030907" class="md23">일회용용기/도시락</option>
		<option value="P030908" class="md23">배달일회용용품</option>
		<option value="P030909" class="md23">빨대/스트로우</option>
		<option value="P030910" class="md23">기타 주방 일회용품</option>



		<!--보은/보냉용품  -->
		<option value="P031001" class="md24">보온/보냉병</option>
		<option value="P031002" class="md24">보온/보냉도시락</option>
		<option value="P031003" class="md24">보온죽통/푸드자</option>
		<option value="P031004" class="md24">보온/보냉텀블러</option>
		<option value="P031005" class="md24">보온/보냉주전자</option>
		<option value="P031006" class="md24">아이스박스/아이스팩</option>
		<option value="P031007" class="md24">아이스물통/워터저그</option>
		<option value="P031008" class="md24">쿨러백/보온보냉소품</option>


		<!--과일  -->
		<option value="P110101" class="md63">사과/배</option>
		<option value="P110102" class="md63">귤/한라봉/감귤류</option>
		<option value="P110103" class="md63">감/홍시/곶감</option>
		<option value="P110104" class="md63">키위/참다래</option>
		<option value="P110105" class="md63">토마토/자두/복숭아/포도</option>
		<option value="P110106" class="md63">수박/메론/참외</option>
		<option value="P110107" class="md63">딸기/블루베리/베리류</option>
		<option value="P110108" class="md63">바나나/오렌지/파인애플</option>
		<option value="P110109" class="md63">자몽/레몬/라임/석류</option>
		<option value="P110110" class="md63">망고/체리/아보카도/기타</option>
		<option value="P110111" class="md63">냉동과일/간편과일</option>
		<option value="P110112" class="md63">과일선물세트</option>

		<!--견과  -->
		<option value="P110201" class="md64">땅콩/호두</option>
		<option value="P110202" class="md64">밤/잣/은행</option>
		<option value="P110203" class="md64">아몬드/피스타치오</option>
		<option value="P110204" class="md64">기타견과류</option>
		<option value="P110205" class="md64">호박씨/해바라기씨</option>
		<option value="P110206" class="md64">기타씨앗</option>
		<option value="P110207" class="md64">종합견과세트</option>
		<option value="P110208" class="md64">건과일/건채소</option>
		<option value="P110209" class="md64">과일가루</option>

		<!--채소  -->
		<option value="P110301" class="md65">두부/콩나물</option>
		<option value="P110302" class="md65">감자/고구마</option>
		<option value="P110303" class="md65">당근/뿌리채소</option>
		<option value="P110304" class="md65">오이/고추/열매채소</option>
		<option value="P110305" class="md65">양파/마늘/파</option>
		<option value="P110306" class="md65">배추/무/김장채소</option>
		<option value="P110307" class="md65">시금치/나물/잎줄기채소</option>
		<option value="P110308" class="md65">상추/깻잎/쌈채소</option>
		<option value="P110309" class="md65">샐러드/손질채소</option>
		<option value="P110310" class="md65">새송이/버섯류</option>
		<option value="P110311" class="md65">인삼/건강차재료</option>
		<option value="P110312" class="md65">기타채소</option>
		<option value="P110313" class="md65">건나물/건채소</option>

		<!--쌀/잡곡  -->
		<option value="P110401" class="md66">백미</option>
		<option value="P110402" class="md66">현미/찹쌀/흑미</option>
		<option value="P110403" class="md66">기능성쌀/기타쌀</option>
		<option value="P110404" class="md66">콩/팥/보리</option>
		<option value="P110405" class="md66">조/수수/깨</option>
		<option value="P110406" class="md66">기타잡곡/혼합곡</option>
		<option value="P110407" class="md66">슈퍼곡물</option>
		<option value="P110408" class="md66">기타씨앗</option>
		<option value="P110409" class="md66">쌀/잡곡 가루</option>
		<option value="P110410" class="md66">곡물선물세트</option>


		<!--축산/계란  -->
		<option value="P110501" class="md67">소고기</option>
		<option value="P110502" class="md67">돼지고기</option>
		<option value="P110503" class="md67">닭/오리고기</option>
		<option value="P110504" class="md67">양/말고기</option>
		<option value="P110505" class="md67">기타 육고기</option>
		<option value="P110506" class="md67">계란/알류/가공란</option>
		<option value="P110507" class="md67">축산선물세트</option>

		<!--수산물/건어물  -->
		<option value="P110601" class="md68">생선</option>
		<option value="P110602" class="md68">오징어/낙지/연체류</option>
		<option value="P110603" class="md68">새우/게/갑각류</option>
		<option value="P110604" class="md68">전복/굴/조개류</option>
		<option value="P110605" class="md68">멸치/다시팩/기타</option>
		<option value="P110606" class="md68">김/미역/해조류</option>
		<option value="P110607" class="md68">건오징어/쥐포/어포</option>
		<option value="P110608" class="md68">황태/진미채</option>
		<option value="P110609" class="md68">생선알</option>
		<option value="P110610" class="md68">기타수산물/건어물</option>
		<option value="P110611" class="md68">수산물선물세트</option>

		<!--생수/음료  -->
		<option value="P110701" class="md69">생수</option>
		<option value="P110702" class="md69">탄산수</option>
		<option value="P110703" class="md69">과일/야채음료</option>
		<option value="P110704" class="md69">탄산/스포츠음료</option>
		<option value="P110705" class="md69">커피음료/차음료</option>
		<option value="P110706" class="md69">두유</option>
		<option value="P110707" class="md69">냉장우유</option>
		<option value="P110708" class="md69">멸균우유</option>
		<option value="P110709" class="md69">숙취/건강음료</option>
		<option value="P110710" class="md69">어린이음료</option>
		<option value="P110711" class="md69">음료선물세트</option>
		<option value="P110712" class="md69">전통주</option>

		<!--커피/원두/차  -->
		<option value="P110801" class="md70">커피믹스</option>
		<option value="P110802" class="md70">원두/생두</option>
		<option value="P110803" class="md70">캡슐/더치/티백</option>
		<option value="P110804" class="md70">녹차/메밀차</option>
		<option value="P110805" class="md70">둥글레/옥수수차</option>
		<option value="P110806" class="md70">보리/우엉/결명자</option>
		<option value="P110807" class="md70">도라지/작두콩차</option>
		<option value="P110809" class="md70">홍차/밀크티</option>
		<option value="P110810" class="md70">유자/과일차</option>
		<option value="P110811" class="md70">율무/전통차</option>
		<option value="P110812" class="md70">허브/콤부/꽃차</option>
		<option value="P110813" class="md70">코코아/라떼/기타분말</option>
		<option value="P110814" class="md70">커피/차 선물세트</option>

		<!--과자/초콜릿/시리얼  -->
		<option value="P110901" class="md71">과자</option>
		<option value="P110902" class="md71">비스킷/크래커</option>
		<option value="P110903" class="md71">쿠키/파이</option>
		<option value="P110904" class="md71">전통과자/떡</option>
		<option value="P110905" class="md71">초콜릿</option>
		<option value="P110906" class="md71">젤리/캐러멜</option>
		<option value="P110907" class="md71">사탕/껌</option>
		<option value="P110908" class="md71">시리얼</option>
		<option value="P110909" class="md71">베이커리/잼</option>
		<option value="P110910" class="md71">육포/원물간식</option>
		<option value="P110911" class="md71">과자/간식세트</option>
		<option value="P110912" class="md71">어린이간식</option>


		<option value="P111001" class="md72">라면/컵라면</option>
		<option value="P111002" class="md72">면류/파스타</option>
		<option value="P111003" class="md72">참치/햄/통조림</option>
		<option value="P111004" class="md72">즉석밥/누룽지</option>
		<option value="P111005" class="md72">카레/짜장/양념</option>
		<option value="P111006" class="md72">즉석국/간편조리</option>

		<option value="P111101" class="md73">가루/분말류</option>
		<option value="P111102" class="md73">설탕/소금/조미료</option>
		<option value="P111103" class="md73">식용유/오일</option>


		<option value="P111201" class="md74">장류</option>
		<option value="P111202" class="md74">케찹/마요네즈</option>
		<option value="P111203" class="md74">머스타드</option>
		<option value="P111204" class="md74">소스</option>
		<option value="P111205" class="md74">드레싱</option>
		<option value="P111206" class="md74">식초/미림</option>
		<option value="P111207" class="md74">물엿/올리고당/조청</option>
		<option value="P111208" class="md74">육수/액젓</option>
		<option value="P111209" class="md74">꿀</option>


		<option value="P111301" class="md77">냉장우유</option>
		<option value="P111401" class="md78">밀키트</option>
		<option value="P111501" class="md79">건강기능식품</option>

	</select> <input type="hidden" name="category_code" id="inputField" />
</div>