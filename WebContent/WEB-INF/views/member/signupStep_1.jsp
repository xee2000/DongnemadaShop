<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/css/shop_step3.css"
	rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />



<body style="background:red; height:auto;">

<style>

@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');

.box{
	border-radius:30px;
}
ol,li{
	list-style:none;
}
ol>li{
	display:inline-block;
	margin-right:5px;
	font-size:14px;
	font-family: 'Jeju Gothic', sans-serif;
	font-weight:bold;
	color:#A4A4A4;
}
ol{
	display:inline-block;
	margin-left:130px;
}
h2{
	display:inline-block;
	font-family: 'Nanum Gothic', sans-serif;
	margin-left:20px;
}

.hello{
	display: block;
    height: 25px;
    background-position: 138px -400px;
    font-family: 'Nanum Gothic', sans-serif;
    font-size:22px;
    color:black;
    margin-bottom:10px;
}
.info_text{
	text-align: center;
    margin-bottom: 45px;
    margin-top:20px;
}
.text{
	font-size:12px;
	color:#848484;
	font-weight:bold;
}
.btn_zone{
	text-aling:center;
	line-height:50px;
	
}
.regi{
	font-family: 'Nanum Gothic', sans-serif;
	background:#FCCE03;
	text-decoration:none;
	color:#2E2E2E;
	width:200px;
	height:50px;
	display:inline-block;
	font-size:18px;
	border-radius:5px;
	font-weight:bold;
}
.p_tit{
	font-size:10px;
	
}
.tit{
	font-size:12px;
	font-weight:bold;
	
}
.join_note{
	width:400px;
	margin-left:20px;
}
body{
	background:#E6E6E6;
}
</style>

<div class="main" style=" margin:auto; width:1200px; ">
	<div style="margin:auto; width:570px; margin-top:50px; margin-bottom:100px;">
		<div style="margin-bottom:30px;">
			<h2 style="display:inline-block;">회원가입</h2>
			<ol style="list-style:none; ">
				<li style="color:#0B0B61; border-top:3px solid #0B0B61;">1 가입</li>
				<li>2 약관동의</li>
				<li>3 정보입력</li>
				<li>4 가입완료</li>
			</ol>
		</div>
		<div class="box" style="width:570px; height:300px; background:white; border:1px solid white; margin:auto;">
			<p class="info_text">
				<span class="hello">동네마다 하루배송에 오신 것을 환영합니다.</span>
				<span class="text">지금 회원 가입하신 후 동네마다 하루배송의 다양한 서비스를 만나보세요.</span>
			</p>
			
			<div class="btn_zone" style="text-align:center;">
				<a href="javascript:location.href='<%=request.getContextPath()%>/member/signupstep2.do'" class="regi">가입하기</a>
			</div>
			<div class="join_note" style="margin-top:50px;">
				<h4 class="tit">회원가입시 유의사항</h4>
				<p class="p_tit" style="line-height:2; margin-top:5px;">회원가입은 간단한 정보입력만으로 가입이 가능하나, 상품결제나 스마일캐시 등 실명기반 서비스 이용 시에는 실명인증이 필요할 수 있습니다.</p>
			</div>
		</div>
	</div>
</div>
</body>
<script>
const id = document.querySelector("#id")
const btn = document.querySelector("#commit")
 
console.log(id)
 
const pattern = new RegExp("^[a-zA-Z][0-9a-zA-Z]{4,7}$")
// const pattern = / /
console.log(id.value)
btn.addEventListener('click', function() {
  if (pattern.test(id.value)) {
  } else {
    alert('다시 입력해주세요');
    id.value = ''
    id.focus()
  }
})
</script>
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




