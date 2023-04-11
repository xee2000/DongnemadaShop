<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<body style="background:#E6E6E6;">

<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');

*{
	font-family: 'Nanum Gothic', sans-serif;
}
.order{
font-family: 'Nanum Gothic', sans-serif;
font-weight:bold;
font-size:35px;
}
.order2{
font-family: 'Nanum Gothic', sans-serif;
font-weight:bold;
}

h3 {
	font-size:20px;
	color:#FFBF00;
	font-weight:bold;
}
.address_name > span {
	font-weight:bold;	
}
.form__select{
	border:1px solid #BDBDBD;
	width:530px;
	height:50px;
	border-radius:10px;
}
.box__button-group {
    position: absolute;
    top: 380px;
    right: 750px;
}
.button__modify{
	border:1px solid #BDBDBD;
	font-weight:bold;
	height:40px;
	width:120px;
	border-radius:8px;
	color:#585858;
	background:#F7D358;
}
div > img {
	width:100px;
	height:100px;
}
</style>
<section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="order"style="margin-bottom:50px;">주문하기</h4>
                </div>
            </div>
           	<div>
            <div class="checkout__form">
                <h4 class="order2">주문정보</h4>
                <form action="#">
                	<div class="box__card box__card-address box__card-address--default" style="border:1px solid #BDBDBD; width:600px; height:190px; padding:20px; border-radius:15px; background:#FAFAFA;">
                		<div class="box__inner">
                			<div class="box__address-title" style="margin-bottom:10px;  ">
                				<h3 class="sprite__checkout--before text__title-address ">배송지</h3>
                			</div>
                			<div class="box__address-cont box__address--default ">
                				<div class="address_name" style="margin-bottom:5px;">
                					<span class="text__name">김보건</span>
                					<span class="text__tel">010-7410-7419</span>
                				</div>
                				<div class="address_txt" style="margin-bottom:5px;">대전광역시 서구 도산로335번길 14 나동 성림그린빌라 402호</div>
                				<div class="box__form-group">
                				<div class="box__control-select sprite__checkout--after box__form-control box__form--active">
                				<select id="delivery-request" class="form__select js-form__select">
                					<option value="0">배송시 요청사항을 선택해 주세요.</option>
                					<option value="1">직접 수령하겠습니다.</option>
                					<option value="2">배송 전 연락바랍니다.</option>
                					<option value="3">부재 시 경비실에 맡겨주세요.</option>
                					<option value="4">부재 시 문 앞에 놓아주세요.</option>
                					<option value="5">부재 시 택배함에 넣어주세요.</option>
                					<option value="6">직접 입력</option>
                				</select></div></div><div class="box__button-group"><button id="xo_id_open_address_book" type="button" class="button button__modify" data-montelena-acode="200007086">배송지 변경</button></div></div></div></div>
                   <div class="row">
                        <div class="col-lg-8 col-md-6"> 
                        	<div style=" margin-top:30px; border:1px solid #BDBDBD; width:600px; height:450px; padding:20px; border-radius:15px; background:#FAFAFA;">
                        		<h3 style="color:black;">상품들</h3>
                        		<div>
                        			<div style="height:1px; width:580; margin:20px auto; background:#585858;"></div>
                        		</div>
                        		<div style="margin-bottom:20px;">
                        			<img style="margin-right:5px;display:inline-block; font-weight:bold;" src='<%=request.getContextPath()%>/images/쌀.PNG' />
                        			<span style="font-weight:bold; margin-right:10px;">홈플러스</span><span style="">이맛쌀 20kg</span>
                        			<span style="margin-left:150px; font-weight:bold;">￦14100 / 1개</span>
                        		</div>
                        		<div style="margin-bottom:20px;">
                        			<img style="margin-right:5px;display:inline-block; font-weight:bold;" src='<%=request.getContextPath()%>/images/쌀.PNG' />
                        			<span style="font-weight:bold; margin-right:10px;">홈플러스</span><span style="">이맛쌀 20kg</span>
                        			<span style="margin-left:150px; font-weight:bold;">￦14100 / 1개</span>
                        		</div>
                        		<div>
                        			<img style="margin-right:5px;display:inline-block; font-weight:bold;" src='<%=request.getContextPath()%>/images/쌀.PNG' />
                        			<span style="font-weight:bold; margin-right:10px;">홈플러스</span><span style="">이맛쌀 20kg</span>
                        			<span style="margin-left:150px; font-weight:bold;">￦14100 / 1개</span>
                        		</div>
                        	</div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order" style="border:1px solid #6E6E6E; border-radius:15px;">
                                <h4>주문상품</h4>
                                <div class="checkout__order__products">상품명 <span>가격</span></div>
                                <ul>
                                    <li>Vegetable’s Package <span>$75.99</span></li>
                                    <li>Fresh Vegetable <span>$151.99</span></li>
                                    <li>Organic Bananas <span>$53.99</span></li>
                                </ul>
                                <div class="checkout__order__subtotal">상품금액<span>$750.99</span></div>
                                <div class="checkout__order__total">총 결제금액<span>$750.99</span></div>
                                <button type="submit" class="site-btn" style=" background:#FACC2E; height:60px; border-radius:10px;">결제하기</button>
                            </div>
                        </div>
                   </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-6"> 
                        	<div style=" margin-top:30px; border:1px solid #BDBDBD; width:600px; height:130px; padding:20px; border-radius:15px; background:#FAFAFA;">
                        		<h3 style="color:black;">결제수단</h3>
                        		<div style="">
                        			<div style="height:1px; width:580; margin:20px auto; background:#585858;"></div>
                        			<input type="radio"/>
                        			<span>카카오페이</span>
                        		</div>
                        	</div>

                        </div>

                    </div>
                </form>
            </div>
        </div>
    </section>




</body>
