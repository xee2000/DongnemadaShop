<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>


<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shop_step1.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">

<div class="col-lg-12" style="margin: 0 auto;height:700px;">
	<div class="shop-openbox">


		<div class="card-footer">
                <div class="row">
                  <div class="col-sm-3 col-6" ">
                    <div class="description-block border-right">
                      <h5 class="description-header" style="font-size: 22px; font-weight: bold;">STEP1</h5>
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
		
		<form>
			<label for="companyname">회사이름:</label> <input type="text"
				id="companyname" name="companyname"><br>
			<br> <label for="supervisername">대표자이름: </label> <input type="text"
							       id="name"
							       name="name"
							       maxlength="8"
							       minlength="2"
							       required
							       size="10" />
			<br><label for="number">전화번호:</label>
			 <input type="text" class="" oninput="oninputPhone(this)" maxlength="14"><br>
			
			
				<br><label for="number">휴대폰 번호:</label><input type="text" class="" oninput="oninputPhone(this)" maxlength="14"><br>
				<br>
				 <form>
   	이메일 :<input type="email" name="dest" required autofocus/>
    <input type="submit" value="이메일 확인">
</form>
<br>
				<br> <label for="companynumber">사업자등록번호:</label> <input type="text" class=" input-sm" name="li_number" id="li_number" placeholder="하이픈을 제외하여 입력해주세요" maxlength="12">
				<input type="button" onclick="onopen02();" value="번호확인">
				<br> <label for="companyaddress">업체주소:</label>  <input id="member_post"  type="text" placeholder="우편번호" onclick="findAddr()">
  <input id="member_addr" type="text" placeholder="주소" value=""> <br>
  <input type="text" placeholder="상세주소"><br>
				
		</form></div>
	</div>
</div>
<div class="move_button" style="margin-left:50%;">
<button class="btn btn-active btn-primary" style="background-color:red;margin-right:20px;" onclick="location.href=shopopen.jsp">이전으로</button>
			<button type="button" onclick="nextStep()" style="background-color:green;color:white;border-radius:10px;">Next</button>
</div>

<br><br>
<script>
function onopen02(){
	var li_number = document.getElementById("li_number").value;
	var url= "http://www.ftc.go.kr/bizCommPop.do?wrkr_no="+li_number;
	window.open(url,"bizCommPop","width=750,height=700;");
	
}


</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
    // 수정전text 받아오기
    var beforeEdit = document.getElementById('pro_name').value;
    console.log(beforeEdit);
    function characterCheck(obj){
      // console.log(beforeEdit);
      // console.log(obj);
      // console.log(obj.value);

      // 못쓰게 하고싶은 특수 문자가 있다면 [] 내부에 넣기
      var regExp = /[ -]/gi;
      if( regExp.test(obj.value) ){
         alert("공백이나 '-'는 포함될 수 없습니다.");
         obj.value = beforeEdit; // textbox를 초기 값(초기이름)으로 되돌리기
         // obj.value = obj.value.substring( 0 , obj.value.length - 1 ); // 입력한 특수문자 한자리 지움
      }
    }
  </script>
<script>
function oninputPhone(target) {
    target.value = target.value
        .replace(/[^0-9]/g, '')
        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
}


</script>

<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
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
			window.location.href = "step2.jsp";
		}
	</script>




<%@ include file="/WEB-INF/views/include/footer.jsp"%>