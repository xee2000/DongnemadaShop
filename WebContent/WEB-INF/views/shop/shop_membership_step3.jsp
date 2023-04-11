<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>



<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">
	<link href="<%=request.getContextPath() %>/resources/css/shop_step3.css"
	rel="stylesheet">


<div class="col-lg-12">
	<div class="shop-openbox">


		<div class="card-footer">
			<div class="row">
				<div class="col-sm-3 col-6">
					<div class="description-block border-right">
						<h5 class="description-header">STEP1</h5>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
				<div class="col-sm-3 col-6">
					<div class="description-block border-right">
						<h5 class="description-header">STEP2</h5>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
				<div class="col-sm-3 col-6">
					<div class="description-block border-right">
						<h5 class="description-header" style="font-size: 22px; font-weight: bold;">STEP3</h5>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
				<div class="col-sm-3 col-6">
					<div class="description-block border-right">
						<h5 class="description-header">STEP4</h5>
					</div>
					<!-- /.description-block -->
				</div>
			</div>
			<!-- /.row -->
		</div>
		<div class="shop_membership_1 card card-body">
		
		<form action="step4.jsp" method="post" class="userjoin">
	<div class="idbox">
        <label for="userid">아이디</label>
        <input type="text" name="id" id="id">
    <input type="button" id="commit" value="유효성체크"></input>
    <p>영문과 숫자조합 5-8글자로 작성바랍니다.</p>
    </div>
    <div class="pwbox">
        <label for="pwd">비밀번호</label>
        <input type="password" id="pwd" name="pwd">
    </div>
    <div class="pwcheck">
        <label for="pwcheck">비밀번호 확인</label>
        <input type="password" id="pwdcheck">
        <br>
    </div>
</form>

		
		</div>

	</div>

</div>
<div class="move_button" style="margin-left:50%;margin-bottom:30px;">
<button class="btn btn-active btn-primary" style="background-color:red;margin-right:20px;" onclick="location.href=shopopen.jsp">이전으로</button>
			<button type="button" onclick="nextStep()" style="background-color:green;color:white;border-radius:10px;">Next</button>
</div>
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




