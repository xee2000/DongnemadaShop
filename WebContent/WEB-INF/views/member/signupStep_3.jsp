<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />





<body style="background: red; height: auto;">


<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap')
	;

.box {
	border-radius: 30px;
}

ol, li {
	list-style: none;
}

ol>li {
	display: inline-block;
	margin-right: 5px;
	font-size: 14px;
	font-family: 'Jeju Gothic', sans-serif;
	font-weight: bold;
	color: #A4A4A4;
}

ol {
	display: inline-block;
	margin-left: 130px;
}

h2 {
	display: inline-block;
	font-family: 'Nanum Gothic', sans-serif;
	margin-left: 20px;
}

.hello {
	display: block;
	height: 25px;
	background-position: 138px -400px;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 22px;
	color: black;
	margin-bottom: 10px;
}

.info_text {
	text-align: center;
	margin-bottom: 45px;
	margin-top: 20px;
}

.text {
	font-size: 12px;
	color: #848484;
	font-weight: bold;
}

.btn_zone {
	text-aling: center;
	line-height: 50px;
}

.regi {
	font-family: 'Nanum Gothic', sans-serif;
	background: #FCCE03;
	text-decoration: none;
	color: #2E2E2E;
	width: 200px;
	height: 50px;
	display: inline-block;
	font-size: 18px;
	border-radius: 5px;
	font-weight: bold;
}

.p_tit {
	font-size: 10px;
}

.tit {
	font-size: 12px;
	font-weight: bold;
}

.join_note {
	width: 400px;
	margin: auto;
}

body {
	background: #E6E6E6;
}

.input_box {
	width: 0 auto;
	height: 30px;
	font-size: 14px;
	font-weight: bold;
	border-radius: 2px;
	border: 0px solid black;
	background: #E0E6F8;
	font-family: 'Nanum Gothic', sans-serif;
}

.signup {
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: bold;
	margin-bottom: 3px;
}

.info {
	font-size: 12px;
	font-weight: bold;
	color: #848484;
	font-family: 'Nanum Gothic', sans-serif;
}

.check_btn>div {
	width: 150px;
	height: 50px;
	display: inline-block;
	text-align: center;
	border-radius: 10px;
	line-height: 50px;
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: bold;
}

.check_btn {
	margin-top: 20px;
	text-align: center;
	color: #424242;
}

.next_btn {
	background: #0B0B61;
	margin-left: 2px;
	color: white;
	border: 2px solid #0B0B61;
}

.cancel_btn {
	background: #FFFFFF;
	margin-right: 2px;
	border: 2px solid #848484;
}

li>.colon {
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: bold;
}

.che_btn {
	border-radius: 5px;
	font-size: 10px;
	width: 50px;
	height: 40px;
	background: #848484;
	font-family: 'Nanum Gothic', sans-serif;
	color: white;
}

select {
	font-size: 14px;
	font-weight: bold;
	border-radius: 2px;
	border: 0px solid black;
	background: #E0E6F8;
	font-family: 'Nanum Gothic', sans-serif;
	color: #A4A4A4;
	height: 25px; /* set the fixed height */
}

select.box {
	width: 100%;
	height: 25px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
	font-family: 'Montserrat', 'Pretendard', sans-serif;
}

option {
	font-size: 16px;
}

.info .box#domain-list option {
	font-size: 14px;
	background-color: #ffffff;
}

.custom-select {
    font-size: 14px;
    font-weight: bold;
    border-radius: 2px;
    border: 1px solid #A4A4A4;
    background: #E0E6F8;
    font-family: 'Nanum Gothic', sans-serif;
    color: #A4A4A4;
    height: 30px;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    scroll:hidden;
}

.dropdown{
    max-height: 300px; /* set the maximum height */
    width: 120px;
    overflow-y: auto; /* enable vertical scrolling */
}

.dropdown::-webkit-scrollbar {
    display: none;
}

.dropdown {
    scrollbar-width: none; /* Firefox */
}

</style>

	<div class="main" style="margin: auto; width: 1200px;">
		<form role="form" class="form-horizontal" action="<%=request.getContextPath() %>/common/main.do" method="post">
			<div style="margin: auto; width: 570px; margin-top: 50px; margin-bottom: 100px;">
				<div style="margin-bottom: 30px;">
					<h2 style="display: inline-block;">회원가입</h2>
					<ol style="list-style: none;">
						<li>1 가입</li>
						<li>2 약관동의</li>
						<li style="color: #0B0B61; border-top: 3px solid #0B0B61;">3
							정보입력</li>
						<li>4 가입완료</li>
					</ol>
				</div>
				<div style="font-size: 15px; color: #6E6E6E; margin-left: 20px;">
					회원정보를 입력해주세요. 모두 입력하셔야 가입이 가능합니다.</div>
				<div class="box" style="width: 570px; height: 580px; background: white; border: 1px solid white; margin-top: 5px;">
					<ul style="padding-left: 30px; padding-top: 30px;">
						<li><span class="signup" style="margin-bottom: 3px;">아이디</span>
							<span class="info">(필수정보)</span> <span class="colon">:</span> 
							<div class="row">
							<input name="member_id" onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" type="text" class="form-control" id="id"
										placeholder="13글자 영문자,숫자 조합" style="border: 0px; width: 300px; height: 30px; font-size: 14px; font-weight: bold;
										border-radius: 2px; border: 0px solid black; background: #E0E6F8; font-family: 'Nanum Gothic', sans-serif;"> 
							<span class="input-group-append-sm">&nbsp;
							<button type="button" onclick="idCheck_go();" class="btn btn-info btn-sm btn-append" style="height: 30px;">중복확인</button>
							</span>
							</div>
						</li>
						<li style="margin-top: 15px;">
							<span class="signup">비밀번호</span>
							<span class="info">(필수정보)</span>
							<span class="colon">:</span> 
							<input class="input_box" size="30" type="password" value="" name="member_pw" id="pw" onchange="check_pw()" placeholder="비밀번호를 입력해주세요"></li>
						<li style="margin-top: 15px;">
							<span class="signup">비밀번호 확인</span> 
							<span class="info">(필수정보)</span> 
							<span class="colon">:</span>
							<input class="input_box" size="30" type="password" value="" name="member_pw" id="pw2" onchange="check_pw()" placeholder="위의 비밀번호를 다시 입력해주세요">&nbsp;<span id="check"></span></li>
							
						<li style="margin-top: 15px;">
							<span class="signup">이름</span> 
							<span class="info">(필수정보)</span> 
							<span class="colon">:</span> 
							<input class="input_box" type="text" value="" name="member_name" id="member_name" onkeyup="this.value=this.value.trim();" placeholder="이름을 입력해주세요"></li>
						<li style="margin-top: 15px;">
							<span class="signup">전화번호</span>
							<span class="info">(필수정보)</span> 
							<span class="colon">:</span> 
							<input size="25" class="input_box" type="text" value="" name="member_phone" id="member_phone" placeholder="-을 빼고 입력해 주세요"></li>
						<li style="margin-top: 15px;">
							<span class="signup">주소</span> 
							<span class="info">(필수정보)</span> 
							<input type="text" class="input_box" name="member_address" id="sample6_postcode" placeholder="우편번호"> 
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" class="input_box" name="member_address" id="sample6_address" placeholder="주소" style="width: 500px; margin-top: 10px;"><br />
							<input type="text" class="input_box" name="member_address" id="sample6_detailAddress" placeholder="상세주소" style="width: 295px; margin-top: 10px;">
							&nbsp; 
							<input type="text" class="input_box" name="member_address" id="sample6_extraAddress" placeholder="참고항목" style="width: 195px;">
						<li style="margin-top: 15px;">
							<span class="signup">생년월일</span>
							<span class="info">(필수정보)</span>
							<span class="colon"></span> <!-- BIRTH_YY -->
							<form>
								<div class="form-group">
									<input type="date" class="form-control" id="dob" name="member_birth" style="width:500px;">
								</div>
							</form>
						</li>
	
						<li style="margin-top: 15px;">
						<span class="signup" style="margin-bottom: 3px;">이메일</span>
							<div class="row">
								<input class="box" name="member_email" id="domain-txt" type="text" style="height: 42px;" />
								&nbsp;
								<div style="font-size: 25px;">@</div>
								&nbsp; 
								<select class="box" name="member_email" id="domain-list" style="height: 30px;">
									<option value="" selected>이메일을 선택해주세요</option>
									<option value="naver.com">naver.com</option>
									<option value="google.com">google.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">nate.com</option>
									<option value="kakao.com">kakao.com</option>
								</select>
							</div>
						</li>
					</ul>
				</div>
				<div class="check_btn">
					<div class="cancel_btn"><button type="button" id="registBtn" onclick="location.href='<%=request.getContextPath()%>/member/signupstep1.do'" style="background:none; border:none; color:black; width:150px;">처음으로</button></div>
					<div style="" class="next_btn">
						<button type="button" id="registBtn" onclick="regist_go()" style="background:none; border:none; color:white; width:150px;" class="btn btn-info">확인</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	<script>
		function nextStep() {
			// Get user input values
			var firstName = document.getElementById("first-name").value;
			var lastName = document.getElementById("last-name").value;
			var email = document.getElementById("email").value;

			// Store user input values in local storage
			localStorage.setItem("firstName", firstName);
			localStorage.setItem("lastName", lastName);
			localStorage.setItem("email", email);

			// Redirect to next step
			window.location.href = "step2.html";
		}
	</script>

	<script>
		function findAddr() {
			new daum.Postcode({
				oncomplete : function(data) {

					console.log(data);

					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var jibunAddr = data.jibunAddress; // 지번 주소 변수
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('member_post').value = data.zonecode;
					if (roadAddr !== '') {
						document.getElementById("member_addr").value = roadAddr;
					} else if (jibunAddr !== '') {
						document.getElementById("member_addr").value = jibunAddr;
					}
				}
			}).open();
		}
	</script>


	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if (data.userSelectedType === 'R') {
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== ''
								&& /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== ''
								&& data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName
									: data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("sample6_extraAddress").value = extraAddr;

					} else {
						document.getElementById("sample6_extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode;
					document.getElementById("sample6_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("sample6_detailAddress").focus();
				}
			}).open();
		}
	</script>
	<script>	
	function regist_go(){
		//alert("regist btn");
		
		if(!$('input[name="member_id"]').val()){
		    alert("아이디는 필수입니다.");
		    return;
		}
		if($('input[name="member_id"]').val()!=checkedID){
		    alert("아이디는 중복 확인이 필요합니다.");
		    return;
		}
		
		var form = $('form[role="form"]');
		form.attr("action","regist.do");
		form.submit();
	}
	
	var checkedID ="";	
	function idCheck_go(){
		//alert("id check");
		var member_id=$('input[name="member_id"]');
		//alert(id);
		
		if(!member_id.val()){
		  alert("아이디를 입력하시오");
		  id.focus();
		  return;
		}
		
		$.ajax({
			url:"idCheck.do",
			method:"get",
			data:"member_id="+member_id.val().trim(),
			success:function(data){
			 	if(data.toUpperCase() == "DUPLICATED"){
			 		alert("중복된 아이디 입니다."); 
				}else{
				    alert("사용가능한 아이디 입니다.");
				    checkedID=member_id.val().trim();
				}
			},
			error:function(error){
				alert(error.status);
			}
		});
	}
	
</script>

<script>
        function check_pw(){
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>


</body>

