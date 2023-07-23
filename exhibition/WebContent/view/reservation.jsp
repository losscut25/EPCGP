<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>예매하기</title>
    <link rel="stylesheet" href="../css/style2.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body style="background-color: #fff;  min-height: 100vh;">
<form id="reservationForm" action="/reservation.do" method="post">
  <div class ="reservationMain">
  	<div class ="summaryall">
  	 <div class="summaryTop">
  		<h2 class="exTitle">사유정원 상상 너머를 거닐다</h2>
  		<div class="exTitleBottom"></div>
     </div>
     <div class="summaryBody">
     	<div class="posterBox">
     	  <div class="posterBoxTop">
     	 	<img class="posterBoxImage" src="../image/test1.jpg" alt="전시회 제목">
     	  </div>
     </div>
  	</div>
  	</div>
     <div id="calendarForm"></div>
     <section style="float: right; width: 307px;">
     <div class="boxcontrol" >
		<div class="title2_select selectBox" style="display: block;">
		<p class="selectbox_title" style="display: block;">권종선택
		<button type="button" id="adult" class="btn-option title2_btn btn_number_239096" name="239096" value="22000" data-price="22000">
		<span class="option_title">성인</span>
		<span class="title2_price">1인 입장권</span>
		<span>22,000원</span></button>
		<button type="button" id="teenager" class="btn-option title2_btn btn_number_239097" name="239097" value="20000" data-price="20000">
		<span class="option_title">청소년</span>
		<span class="title2_price">1인 입장권</span>
		<span>20,000원</span></button>
		<button type="button" id="childern" class="btn-option title2_btn btn_number_239098"  name="239098" value="17000" data-price="17000">
		<span class="option_title">어린이</span>
		<span class="title2_price">1인 입장권</span>
		<span>17,000원</span></button></p>
       </div>
    	<div class="num_select" style="display:none">
    		<p class="title">수량선택</p>
    			<div class="select_list">
    				<div class="select_item" id="239096">
    					<div class="select_name" style="float:left">성인 1인 입장권</div>
						<input type="hidden" name="cate_title[]" class="cate_title" value="성인 1인 입장권">
    					<div style="float:right; display: inline-block;">
    					<a href="#item_close" class="close" data-store="222528">
    					<span class="remove_ticket1" style="font-size:14px; border:1px solid #888; border-radius:5px; width:16px; padding:0 6px; color:#fff; 
    					background:#888;">X</span></a>
    					</div>
    					<div style="clear:both"></div>
    					<div class="price_wrap">
    						<div class="quantity">
    							<button type="button" class="remove_ticket2" value="22000" data-price="22000">
    								<img src="mobile_img/detail/btn_minus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    							<span class="select_quanatity">0</span>
    							<button type="button" class="add_ticket" value="22000">
    							<img src="mobile_img/detail/btn_plus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    							<p class="price">22,000원</p>
    							<input type="hidden" name="product_cate_price[]" class="item_price" value="22000">
    						</div>
    					</div>
    				</div>    		
    				<div class="select_item" id="239097">
    					<div class="select_name" style="float:left">청소년 1인 입장권</div>
						<input type="hidden" name="cate_title[]" class="cate_title" value="청소년 1인 입장권">
    					<div style="float:right; display: inline-block;">
    					<a href="#item_close" class="close" data-store="222528">
    					<span class="remove_ticket1" style="font-size:14px; border:1px solid #888; border-radius:5px; width:16px; padding:0 6px; color:#fff; 
    					background:#888;">X</span></a>
    					</div>
    					<div style="clear:both;"></div>
    					<div class="price_wrap">
    						<div class="quantity">
    							<button type="button" class="remove_ticket2" value="20000">
    								<img src="mobile_img/detail/btn_minus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    							<span class="select_quanatity">0</span>
    							<button type="button" class="add_ticket" value="20000">
    							<img src="mobile_img/detail/btn_plus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    						  <p class="price">20,000원</p>
    							<input type="hidden" name="product_cate_price[]" class="item_price" value="20000">
    						</div>
    					</div>
    				</div>
    				<div class="select_item" id="239098">
    					<div class="select_name" style="float:left">어린이 1인 입장권</div>
						<input type="hidden" name="cate_title[]" class="cate_title" value="어린이 1인 입장권">
    					<div style="float:right; display: inline-block;">
    					<a href="#item_close" class="close" data-store="222528">
    					<span class="remove_ticket1" style="font-size:14px; border:1px solid #888; border-radius:5px; width:16px; padding:0 6px; color:#fff; 
    					background:#888;">X</span></a>
    					</div>
    					<div style="clear:both;"></div>
    					<div class="price_wrap">
    						<div class="quantity">
    							<button type="button" class="remove_ticket2" value="17000">
    								<img src="mobile_img/detail/btn_minus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    							<span class="select_quanatity">0</span>
    							<button type="button" class="add_ticket" value="17000">
    							<img src="mobile_img/detail/btn_plus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    						  <p class="price">17,000원</p>
    							<input type="hidden" name="product_cate_price[]" class="item_price" value="17000">
    						</div>
    					</div>
    				</div>    		
    			</div>
    	</div>
    	 <div class="total_wrap" style="display: flex;">
    	  <p class="title" >총 결제금액 :</p>
    	  <p class="total_price">0원</p>
    	  <input type="hidden" id="total_price_input" value="0">
    	 </div>
    		<div class="submit_btn">	
			 <button class="button1" type="submit" id="btn_5">예매하기</button> 	
			</div>
		</div>
		</section>
    <script src="<%=request.getContextPath() %>/js/script3.js" charset="UTF-8"></script>
       </div>
</form>

</body>
</html>