<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<div>
	<section class="content register-page" style="height:1100px;">
		<div class="register-box"style="width:800px;">
			<div class="login-logo">
				<a href=""><b>상품 등록</b></a>
			</div>
			<!-- form start -->
			<div class="card">
				<div class="register-card-body">
					<form role="form" class="form-horizontal" action="regist" 
						method="post">
						<input type="hidden" name="product_picture" value="noImage.jpg" />
						<input type="hidden" name="shop_id" value="${shop_id }"/>
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
				<%@ include file="/WEB-INF/views/include/category.jsp"%>
				<input type="hidden" id="${product.category_code} " name="category_code">
						</div>
						<div class="form-group row">
							<label for="pwd" class="col-sm-3" style="font-size: 0.9em;">
								<span style="color: red; font-weight: bold;">*</span>상품이름
							</label>
							<div class="col-sm-9 input-group-sm">
								<input class="form-control" name="product_name" type="text"
									class="form-control" placeholder="20글자 영문자,숫자,특수문자 조합" />
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
								<input name="product_price" type="text" class="form-control" id="product_price">
							</div>
						</div>
												<div class="form-group row">
							<label for="email" class="col-sm-3" style="font-size: 0.9em;">원산지/제조국가</label>
							<div class="col-sm-9 input-group-sm">
								<input name="product_origin" type="text" class="form-control" id="product_price">
							</div>
						</div>
						<div class="form-group row">
							<label for="email" class="col-sm-3" style="font-size: 0.9em;">보관방법</label>
							<div class="col-sm-9 input-group-sm">
								<input name="product_keep" type="text" class="form-control" id="product_price">
							</div>
						</div>
								<div class="form-group row">
							<label for="email" class="col-sm-3" style="font-size: 0.9em;">최소 주문수량</label>
							<div class="col-sm-9 input-group-sm">
								<input name="product_min" type="text" class="form-control" id="product_price">
							</div>
						</div>
						<div class="form-group row">
							<label for="email" class="col-sm-3" style="font-size: 0.9em;">최대 주문수량</label>
							<div class="col-sm-9 input-group-sm">
								<input name="product_max" type="text" class="form-control" id="product_price">
							</div>
						</div>
												<div class="form-group row">
							<label for="email" class="col-sm-3" style="font-size: 0.9em;">판매여부</label>
							<div class="col-sm-9 input-group-sm">
							<select name="product_status">
							<option value="---">선택</option>
							<option value="Y">Y</option>
							<option value="N">N</option>
							</select>
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
								<input name="product_discount" type="text" class="form-control" id="product_price">
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



<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<form role="imageForm" action="picture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;" onchange="picture_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="test" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>


<script>	
	function regist_go(){
		//alert("regist btn");
		
		var uploadCheck = $('input[name="checkUpload"]').val();  	
		if(uploadCheck=='0'){
		    alert("사진업로드는 필수 입니다");      
		    return;
		}
		var form = $('form[role="form"]');
		form.attr("action","regist.do");
		form.submit();
	}

</script>

<script>
function picture_go(){
	//alert("changee file");
	var form = $('form[role="imageForm"]');
	var picture = form.find('[name=pictureFile]')[0];
	
	var fileFormat = 
		picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
	//이미지 확장자 jpg 확인
	if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
		alert("이미지는 jpg 형식만 가능합니다.");
		return;
	} 
	//이미지 파일 용량 체크
	if(picture.files[0].size>1024*1024*1){
		alert("사진 용량은 1MB 이하만 가능합니다.");
		return;
	};
	
	if (picture.files && picture.files[0]) {
		var reader = new FileReader();
		
		reader.readAsDataURL(picture.files[0]);
		 
		reader.onload = function (e) {
			var pictureView = $('div#pictureView')[0];
			//이미지 미리보기	        	
		 	pictureView.style.backgroundImage = "url("+e.target.result+")";
		 	pictureView.style.backgroundPosition="center";
		 	pictureView.style.backgroundSize="cover";
		 	pictureView.style.backgroundRepeat="no-repeat";			
		}
	}
	
	form.find('[name="checkUpload"]').val(0);
	$('#inputFileName').val(picture.files[0].name);
}

function upload_go(){
	//alert("upload btn");
	if(!$('input[name="pictureFile"]').val()){
	    alert("사진을 선택하세요.");
	    $('input[name="pictureFile"]').click();
	    return;
	 }  
	
	if($('input[name="checkUpload"]').val()==1){
		alert("이미 업로드된 사진입니다.");
		return;
	}
	
	 var formData = new FormData($('form[role="imageForm"]')[0]);
	 
	 $.ajax({
			url:"picture.do",
			data:formData,
			type:"post",
		    processData:false,
	        contentType:false,
	        success:function(data){
	        	//업로드 확인변수 세팅
	            $('input[name="checkUpload"]').val(1);
	            //저장된 파일명 저장.
	            $('input#oldFile').val(data); // 변경시 삭제될 파일명	          
	            $('form[role="form"]  input[name="product_picture"]').val(data);	    	  
	      	 	alert("사진이 업로드 되었습니다.");
	        },
	        error:function(error){
	        	
	        }
	 });
			
}

</script>
<script>
$(document).ready(function (){
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
});


</script>






</body>


