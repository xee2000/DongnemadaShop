<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<%@ include file="/WEB-INF/views/include/header.jsp"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shop_step2.css">


<div class="col-lg-12" style="margin: 0 auto;height:300px;">
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
						<h5 class="description-header" style="font-size: 22px; font-weight: bold;">STEP2</h5>
					</div>
					<!-- /.description-block -->
				</div>
				<!-- /.col -->
				<div class="col-sm-3 col-6">
					<div class="description-block border-right">
						<h5 class="description-header">STEP3</h5>
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

			<form action="http://localhost/upload.php" method="post"
				enctype="multipart/form-data">
				사업자등록증 : <input type="file" name="profile"><br><br> 
				통장 : <input type="file" name="profile"><br><br> 
				판매계약서 : <input type="file" name="profile"><br><br>
			</form>
		</div>
	</div>
		
</div>
<div class="move_button" style="margin-left:50%;margin-bottom:30px;">
<button class="btn btn-active btn-primary" style="background-color:red;margin-right:20px;" onclick="location.href=shopopen.jsp">이전으로</button>
			<button type="button" onclick="nextStep()" style="background-color:green;color:white;border-radius:10px;">Next</button>
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




<%@ include file="/WEB-INF/views/include/footer.jsp"%>