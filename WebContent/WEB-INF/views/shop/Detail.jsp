<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/css/shop/shop_registForm.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css" />
	<div>
		<section class="content register-page" style="height: 1100px;">
			<div class="register-box" style="width: 800px;">
				<div class="login-logo">
					<a href=""><b>상품 상세</b></a>
				</div>
				<!-- form start -->
				<div class="card">
					<div class="register-card-body">
						<form role="form" class="form-horizontal" action="regist"
							method="post">
							<input type="hidden" name="shop_id" value="${shop_id }" />
							<div class="input-group mb-3">
								<div class="mailbox-attachments clearfix"
									style="text-align: center;">
									<div class="mailbox-attachment-icon has-img" id="pictureView"
										style="border: 1px solid green; height: 200px; width: 140px; margin: 0 auto;">
										<span class="manPicture" data-id="${product.product_code }"
											style="width: 120px; height: 120px; display: block; margin: 0 auto;"></span>
									</div>
									<div class="mailbox-attachment-info"></div>
								</div>
								<br />
							</div>
							<div class="form-group row">
								<label for="id" class="col-sm-3" style="font-size: 0.9em;">
									<span style="color: red; font-weight: bold;">*</span>상품카테고리
								</label> <input type="text" readonly name="category_code"
									value="${product.category_name }">
							</div>
							<div class="form-group row">
								<label for="pwd" class="col-sm-3" style="font-size: 0.9em;">
									<span style="color: red; font-weight: bold;">*</span>상품이름
								</label>
								<div class="col-sm-9 input-group-sm">
									<input class="form-control" name="product_name" type="text"
										readonly class="form-control" value="${product.product_name }" />
								</div>

							</div>
							<div class="form-group row">
								<label for="name" class="col-sm-3" style="font-size: 0.9em;">
									<span style="color: red; font-weight: bold;">*</span>제조사
								</label>
								<div class="col-sm-9 input-group-sm">
									<input class="form-control" name="product_name" type="text"
										readonly class="form-control"
										value="${product.product_maker }" />
								</div>

							</div>

							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">상품가격</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_price" type="text" readonly
										class="form-control" id="product_price"
										value="${product.product_price }">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">원산지/제조국가</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_origin" type="text" class="form-control"
										readonly value="${product.product_origin }">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">보관방법</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_keep" type="text" class="form-control"
										readonly value="${product.product_keep }">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">최소
									주문수량</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_min" type="text" class="form-control"
										readonly value="${product.product_min }">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">최대
									주문수량</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_max" type="text" class="form-control"
										readonly value="${product.product_max }" id="product_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">판매여부</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_status" readonly
										value="${product.product_status }" />
								</div>
								<div class="col-sm-9 input-group-sm">
									<label>상품상세설명</label>
									<textarea readonly name="product_detail"
										style="width: 760px; height: 150px;">${product.product_detail }</textarea>
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-sm-3" style="font-size: 0.9em;">할인율</label>
								<div class="col-sm-9 input-group-sm">
									<input name="product_discount" type="text" readonly
										class="form-control" id="product_price"
										value="${product.product_discount }">
								</div>
							</div>

							<div class="card-footer">
								<div class="row" style="display: flex;">
									<div class="col-sm-6">
										<button type="button" id="registBtn" onclick="regist_go();"
											class="btn btn-info">수&nbsp;&nbsp;정</button>
									</div>

									<div class="col-sm-6">
										<button type="button" id="cancelBtn" onclick="CloseWindow();"
											class="btn btn-default float-right">&nbsp;&nbsp;&nbsp;삭
											&nbsp;&nbsp;제&nbsp;&nbsp;&nbsp;</button>
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
	function regist_go(){
		var uploadCheck = $('input[name="checkUpload"]').val();  	
		if(uploadCheck=='0'){
		    alert("사진업로드는 필수 입니다");      
		    return;
		$('form[role="form"]').submit();    		
	}
	window.onload=function(){
		summernote_go($('#content'),'<%=request.getContextPath()%>');
	}
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
	            $('form[role="form"]  input[name="picture"]').val(data);	    	  
	      	 	alert("사진이 업로드 되었습니다.");
	        },
	        error:function(error){
	        	
	        }
	 });
			
}

</script>

	<script>

#("input[name='product_max']").attr('disabled',true);

</script>

	<script>
  window.onload=function(){
MemberPictureThumb('<%=request.getContextPath()%>');
 }
  </script>

</body>





