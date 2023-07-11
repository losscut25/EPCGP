<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>예매하기</title>
    <link rel="stylesheet" href="../css/style.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
  <div class ="reservationMain">
  	<div class="summaryTop">
  		<h2 class="exTitle">전시회 제목</h2>
  		<div class="exTitleBottom"></div>
   </div>
     <div class="summaryBody">
     	<div class="posterBox">
     	  <div class="posterBoxTop">
     	 	<img class="posterBoxImage" src="" alt="전시회 제목">
     	  </div>
    	<div class="container">
      		<div class="calendar">
       		 <div class="month">
         	 <i class="fas fa-angle-left prev"></i>
          		<div class="date">
           			 <h1></h1>
           			 <p></p>
          		</div>
          <i class="fas fa-angle-right next"></i>
        </div>
        <div class="weekdays">
          <div>일</div>
          <div>월</div>
          <div>화</div>
          <div>수</div>
          <div>목</div>
          <div>금</div>
          <div>토</div>
        </div>
        <div class="days"></div>
      </div>
    </div>

    <script src="../js/script.js"></script>
   
    
<div class="title2_select selectBox" style="display: block;">
	<p class="selectbox_title" style="display: block;">권종선택
		<button type="button" class="title2_btn btn_number_239096 active" name="239096" value="">
		<span class="option_title">성인</span><span class="title2_price">22,000원</span></button>
		<button type="button" class="title2_btn btn_number_239097" name="239097" value="">
		<span class="option_title">청소년</span><span class="title2_price">20,000원</span></button>
		<button type="button" class="title2_btn btn_number_239098" name="239098" value="">
		<span class="option_title">어린이</span><span class="title2_price">17,000원</span></button></p>
          </div>
         <a class="" href="#" data-check="false">
         	<span>예매하기</span></a>
 </div>    

</body>
</html>