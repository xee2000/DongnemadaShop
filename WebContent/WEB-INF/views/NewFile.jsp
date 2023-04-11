<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<div>
		<section class="content register-page" style="height: 1100px;">
			<div class="register-box" style="width: 800px;">
				<div class="login-logo">
					<a href=""><b>상품 등록</b></a>
				</div>
				<!-- form start -->
				<div class="card">
					<div class="register-card-body">
						<form role="form" class="form-horizontal" action="regist"
							method="post">
							<input type="hidden" name="product_picture" value="noImage.jpg" />
							<input type="hidden" name="shop_id" value="${shop_id }" />
							<div class="input-group mb-3">
								<div class="mailbox-attachments clearfix"
									style="text-align: center;">
									<div class="mailbox-attachment-icon has-img" id="pictureView"
										style="border: 1px solid green; height: 200px; width: 140px; margin: 0 auto;"></div>
									<div class="mailbox-attachment-info">
										<div class="input-group input-group-sm">
											<label for="inputFile"
												class=" btn btn-warning btn-sm btn-flat input-group-addon">파일선택</label>
											<input id="inputFileName" class="form-control" type="text"
												name="tempPicture" disabled /> <span
												class="input-group-append-sm">
												<button type="button" class="btn btn-info btn-sm btn-append"
													onclick="upload_go();">업로드</button>
											</span>
										</div>
									</div>
								</div>
								<br />
							</div>
							<div class="form-group row">
								<label for="id" class="col-sm-3" style="font-size: 0.9em;">
									<span style="color: red; font-weight: bold;">*</span>상품카테고리
								</label>
								<div class="col-sm-9 input-group input-group-sm">
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

									</select> >&nbsp;소분류 <select id="goodsselect">
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


										<option value="P020801" class="md12">네일 아트</option>



									</select>


								</div>
							</div>
							<div class="form-group row">
								<label for="pwd" class="col-sm-3" style="font-size: 0.9em;">
									<span style="color: red; font-weight: bold;">*</span>상품이름
								</label>
								<div class="col-sm-9 input-group-sm">
									<input class="form-control" name="product_name" type="text"
										class="form-control" id="pwd"
										placeholder="20글자 영문자,숫자,특수문자 조합" />
								</div>

							</div>
							<div class="form-group row">
								<label for="name" class="col-sm-3" style="font-size: 0.9em;">
									<span style="color: red; font-weight: bold;">*</span>제조사
								</label>
								<div class="col-sm-9 input-group-sm">
									<input class="form-control" name="product_maker" type="text"
										class="form-control" id="name" placeholder="이름을 입력하세요"
										onkeyup="this.value=this.value.trim();" />
								</div>

							</div>

							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">상품가격</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_price" type="text" class="form-control"
										id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">원산지/제조국가</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_origin" type="text" class="form-control"
										id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">보관방법</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_keep" type="text" class="form-control"
										id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">최소
									주문수량</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_min" type="text" class="form-control"
										id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">최대
									주문수량</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_max" type="text" class="form-control"
										id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">판매여부</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_status" type="text" class="form-control"
										id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">상품상세설명</label>
								<div class="col-sm-9 input-group-sm">
									<textarea name="product_detail"></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">할인율</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_discount" type="text" class="form-control"
										id="product_price">
								</div>
							</div>

							<div class="card-footer">
								<div class="row">
									<div class="col-sm-6">
										<button type="button" id="registBtn" onclick="regist_go();"
											class="btn btn-info">등&nbsp;&nbsp;록</button>
									</div>

									<div class="col-sm-6">
										<button type="button" id="cancelBtn" onclick="CloseWindow();"
											class="btn btn-default float-right">&nbsp;&nbsp;&nbsp;취
											&nbsp;&nbsp;소&nbsp;&nbsp;&nbsp;</button>
									</div>

								</div>
							</div>
						</form>
					</div>
					<!-- register-card-body -->
				</div>
			</div>
		</section>
		<!-- /.content -->
	</div>



	</div>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/demo.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<form role="imageForm" action="picture.do" method="post"
		enctype="multipart/form-data">
		<input id="inputFile" name="pictureFile" type="file"
			class="form-control" style="display: none;" onchange="picture_go();">
		<input id="oldFile" type="hidden" name="oldPicture" value="test" /> <input
			type="hidden" name="checkUpload" value="0" />
	</form>


	<script>
		function picture_go() {
			//alert("changee file");
			var form = $('form[role="imageForm"]');
			var picture = form.find('[name=pictureFile]')[0];

			var fileFormat = picture.value.substr(
					picture.value.lastIndexOf(".") + 1).toUpperCase();
			//이미지 확장자 jpg 확인
			if (!(fileFormat == "JPG" || fileFormat == "JPEG")) {
				alert("이미지는 jpg 형식만 가능합니다.");
				return;
			}
			//이미지 파일 용량 체크
			if (picture.files[0].size > 1024 * 1024 * 1) {
				alert("사진 용량은 1MB 이하만 가능합니다.");
				return;
			}
			;

			if (picture.files && picture.files[0]) {
				var reader = new FileReader();

				reader.readAsDataURL(picture.files[0]);

				reader.onload = function(e) {
					var pictureView = $('div#pictureView')[0];
					//이미지 미리보기	        	
					pictureView.style.backgroundImage = "url("
							+ e.target.result + ")";
					pictureView.style.backgroundPosition = "center";
					pictureView.style.backgroundSize = "cover";
					pictureView.style.backgroundRepeat = "no-repeat";
				}
			}

			form.find('[name="checkUpload"]').val(0);
			$('#inputFileName').val(picture.files[0].name);
		}

		function upload_go() {
			//alert("upload btn");
			if (!$('input[name="pictureFile"]').val()) {
				alert("사진을 선택하세요.");
				$('input[name="pictureFile"]').click();
				return;
			}

			if ($('input[name="checkUpload"]').val() == 1) {
				alert("이미 업로드된 사진입니다.");
				return;
			}

			var formData = new FormData($('form[role="imageForm"]')[0]);

			$.ajax({
				url : "picture.do",
				data : formData,
				type : "post",
				processData : false,
				contentType : false,
				success : function(data) {
					//업로드 확인변수 세팅
					$('input[name="checkUpload"]').val(1);
					//저장된 파일명 저장.
					$('input#oldFile').val(data); // 변경시 삭제될 파일명	          
					$('form[role="form"]  input[name="product_picture"]').val(
							data);
					alert("사진이 업로드 되었습니다.");
				},
				error : function(error) {

				}
			});

		}

		var malls = false;
		function update_selected() {
			$("#mallSelect").val(0);
			$("#mallSelect").find("option[value!=0]").detach();
			$("#mallSelect").append(malls.filter(".mall" + $(this).val()));

		}

		$(function() {
			malls = $("#mallSelect").find("option[value!=0]");
			malls.detach();

			$("#productSelect").change(update_selected);

			$("#productSelect").trigger("change");

		});

		var mds = false;
		function smcategory() {

			$("#goodsselect").val(0);
			$("#goodsselect").find("option[value!=0]").detach();
			$("#goodsselect").append(mds.filter(".md" + $(this).val()));

		}

		$(function() {
			mds = $("#goodsselect").find("option[value!=0]");
			mds.detach();

			$("#mallSelect").change(smcategory);

			$("#mallSelect").trigger("change");

		});
	</script>








</body>


