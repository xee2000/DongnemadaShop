<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<%@ include file="/WEB-INF/views/include/header.jsp"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<style>
body{
font-family: 'Noto Sans KR', sans-serif;
}

</style>

 <div class="col-lg-12" style="margin:0 auto;">
 <div class="shop-openbox" style="width:800px; height:1000px; margin-left:25%;margin-top:40px;">
 
 
 //로그인
 <h1>Membership Registration - Step 1</h1>
	<form>
		<label for="first-name">First Name:</label>
		<input type="text" id="first-name" name="first-name"><br><br>
		
		<label for="last-name">Last Name:</label>
		<input type="text" id="last-name" name="last-name"><br><br>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email"><br><br>
		
		<button type="button" onclick="nextStep()">Next</button>
	</form>
 <form>
		<label for="card-number">Card Number:</label>
		<input type="text" id="card-number" name="card-number"><br><br>
		
		<label for="expiration-date">Expiration Date:</label>
		<input type="text" id="expiration-date" name="expiration-date"><br><br>
		
		<label for="cvv">CVV:</label>
		<input type="text" id="cvv" name="cvv"><br><br>
		
		<button type="button" onclick="nextStep()">Next</button>
	</form>
 
 
 </div>
 
 
 
 
 
 </div>




<%@ include file="/WEB-INF/views/include/footer.jsp"%>

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
		function nextStep() {
			// Get user input values
			var cardNumber = document.getElementById("card-number").value;
			var expirationDate = document.getElementById("expiration-date").value;
			var cvv = document.getElementById("cvv").value;
			
			// Store user input values in local storage
			localStorage.setItem("cardNumber", cardNumber);
			localStorage.setItem("expirationDate", expirationDate);
			localStorage.setItem("cvv", cvv);
			
			// Redirect to next step
			window.location.href = "step3.html";
		}
	</script>