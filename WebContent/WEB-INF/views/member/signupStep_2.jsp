<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
	margin:auto;
}
body{
	background:#E6E6E6;
}
.tm_all{
	position: relative;
	margin: 0 20px;
    padding: 1px 0 15px;
    border-bottom: 1px solid #E8E8E8;
    
}
label{
	cursor: pointer;
}

.agree_all {
	margin-top:15px;
	font-family: 'Nanum Gothic', sans-serif;
	font-weight:bold;
}
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Nanum Gothic', sans-serif;
}
body{
	background-color: #f7f7f7;}
ul>li{
	list-style: none
}
a{
	text-decoration: none;}
.clearfix::after{
	content: "";
	display: block;
	clear: both;
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
.regi_u{
	font-family: 'Nanum Gothic', sans-serif;
	background: #FF0000;
	text-decoration:none;
	color:#2E2E2E;
	width:200px;
	height:50px;
	display:inline-block;
	font-size:18px;
	border-radius:5px;
	font-weight:bold;
}
#joinForm{width: 460px;margin: 0 auto; }
ul.join_box{background-color: #fff;}
.checkBox,.checkBox>ul{position: relative;}
.checkBox>ul>li{float: left;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
.footBtwrap{margin-top: 30px; display:block; text-align:center;}
.footBtwrap>li{ display:inline-block;}
.footBtwrap>li>button{
	display:block;
	width:150px;
	height:50px;
	font-size:15px;
	text-align: center;
	line-height: 50px;
	border-radius:10px;
	font-weight:bold;
	}
.fpmgBt1{	
	background:#FFFFFF;
	margin-right:2px;
	border:2px solid #848484;}
.fpmgBt2{	
	background:#0B0B61;
	margin-left:2px;
	color:white;
	border:2px solid #0B0B61;}


</style>

<div class="main" style=" margin:auto; width:1200px; ">
	<div style="margin:auto; width:570px; margin-top:50px; margin-bottom:100px;">
		<div style="margin-bottom:30px;">
			<h2 style="display:inline-block;">회원가입</h2>
			<ol style="list-style:none; ">
				<li>1 가입</li>
				<li style="color:#0B0B61; border-top:3px solid #0B0B61;">2 약관동의</li>
				<li>3 정보입력</li>
				<li>4 가입완료</li>
			</ol>
		</div>
		<div style="font-size:10px; color:#6E6E6E; text-align:center; ">
			동네마다 하루배송 구매회원/전자금융서비스 이용약관과 개인정보 수집 및 이용에 동의를 하셔야 회원가입이 가능합니다.
		</div>
		<div class="box" style="width:570px; height:600px; background:white; border:1px solid white; margin-top:5px;">
			<form action="" id="joinForm">
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관, 프로모션 안내
                            메일 수신에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk"> 
                        </li>
                    </ul>
                    <textarea name="" id="">여러분을 환영합니다.
동네마다 하루배송 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 동네마다 하루배송 서비스의 이용과 관련하여 동네마다 하루배송 서비스를 제공하는 동네마다 하루배송 주식회사(이하 ‘네이버’)와 이를 이용하는 동네마다 하루배송 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 동네마다 하루배송 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
동네마다 하루배송 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 동네마다 하루배송 서비스의 이용과 관련하여 동네마다 하루배송 서비스를 제공하는 동네마다 하루배송 주식회사(이하 ‘동네마다 하루배송’)와 이를 이용하는 동네마다 하루배송 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 동네마다 하루배송 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
동네마다 하루배송 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 동네마다 하루배송 서비스의 이용과 관련하여 동네마다 하루배송 서비스를 제공하는 동네마다 하루배송 주식회사(이하 ‘동네마다 하루배송’)와 이를 이용하는 동네마다 하루배송 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 동네마다 하루배송 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk">
                        </li>
                    </ul>
 
                </li>
            </ul>
            <div class="row center">
            <div class="btn_zone" style="text-align:center;">
				<a href="javascript:location.href='<%=request.getContextPath()%>/member/signupstep3.do'"  class="regi">동의</a>
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="btn_zone" style="text-align:center;">
				<a href="javascript:location.href='<%=request.getContextPath()%>/common/main.do'"  class="regi_u">비동의</a>
			</div>
			</div>
        </form>
        	
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




