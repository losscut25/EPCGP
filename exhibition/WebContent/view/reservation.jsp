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
  <body style="background-color: #fff;  min-height: 100vh; ">
  <div class ="reservationMain">
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
  
<form method="post" name="regiform" name="regiform">    
     <div id="calendarForm"></div>
       <script src="../js/script2.js"></script>
		<div class="title2_select selectBox" style="display: block;">
		<p class="selectbox_title" style="display: block;">권종선택
		<button type="button" class="title2_btn btn_number_239096 active" name="239096" value="">
		<span class="option_title">성인</span><span class="title2_price">1인 입장권</span>
		<span>22,000원</span></button>
		<button type="button" class="title2_btn btn_number_239097" name="239097" value="">
		<span class="option_title">청소년</span><span class="title2_price">20,000원</span></button>
		<button type="button" class="title2_btn btn_number_239098" name="239098" value="">
		<span class="option_title">어린이</span><span class="title2_price">17,000원</span></button></p>
       </div>
    	<div class="num_select" style="display: black;">
    		<p class="title">수량선택</p>
    			<div class="select_list">
    				<div class="select_item" id="">
    					<div class="select_name" style="float:left">성인 1인 입장권</div>
						<input type="hidden" name="cate_title[]" class="cate_title" value="[유효기간:~2023.10.8] 어린이 1인 입장권">
    					<div style="float:right; display: inline-block;">
    					<a href="#item_close" class="close" data-store="222528">
    					<span class="remove_ticket" style="font-size:14px; border:1px solid #888; border-radius:5px; width:16px; padding:0 6px; color:#fff; 
    					background:#888;" value="15000">X</span></a>
    					</div>
    					<div style="clear:both;"></div>
    					<div class="price_wrap">
    						<div class="quantity">
    							<button type="button" class="remove_ticket" value="22000">
    								<img src="mobile_img/detail/btn_minus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    							<span class="select_quanatity">1</span>
    							<button type="button" class="add_ticket" value="22000">
    							<img src="mobile_img/detail/btn_plus_square.png" style="width:18px; vertical-align:-3px;">
    							</button>
    						</div>
    						<p class="price">22,000원</p>
    					</div>
    				</div>    		
    			</div>
    		<div class="submit_btn">	
         		<a class="button1" href="#" data-check="false">
         			<span>예매하기</span></a> 
         	</div>
    	</div>
         	</form>
       </div>
  

</body>
</html>