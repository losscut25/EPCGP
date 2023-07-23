(function () {
    calendarMaker($("#calendarForm"), new Date());
})();

var reserveInfo = ""; // 예약 정보 변수
var nowDate = new Date();

function calendarMaker(target, date) {
    if (date == null || date == undefined) {
        date = new Date();
    }
    nowDate = date;
    if ($(target).length > 0) {
        var year = nowDate.getFullYear();
        var month = nowDate.getMonth() + 1;
        $(target).empty().append(assembly(year, month));
    } else {
        console.error("custom_calendar Target is empty!!!");
        return;
    }

    var thisMonth = new Date(nowDate.getFullYear(), nowDate.getMonth(), 1);
    var thisLastDay = new Date(nowDate.getFullYear(), nowDate.getMonth() + 1, 0);

    var tag = "<tr>";
    var cnt = 0;
    //빈 공백 만들어주기
    for (i = 0; i < thisMonth.getDay(); i++) {
        tag += "<td></td>";
        cnt++;
    }

    //날짜 채우기
    for (i = 1; i <= thisLastDay.getDate(); i++) {
        if (cnt % 7 == 0) {
            tag += "<tr>";
        }

        tag += "<td>" + i + "<span class='reserve_p'></span></td>";
        cnt++;
        if (cnt % 7 == 0) {
            tag += "</tr>";
        }
    }
    $(target).find("#custom_set_date").append(tag);
    calMoveEvtFn();

    function assembly(year, month) {
        var calendar_html_code =
            "<table class='custom_calendar_table'>" +
            "<colgroup>" +
            "<col style='width:81px'/>" +
            "<col style='width:81px'/>" +
            "<col style='width:81px'/>" +
            "<col style='width:81px'/>" +
            "<col style='width:81px'/>" +
            "<col style='width:81px'/>" +
            "<col style='width:81px'/>" +
            "</colgroup>" +
            "<thead class='cal_date'>" +
            "<th><button type='button' class='prev'><</button></th>" +
            "<th colspan='5'><p><span>" + year + "</span>년 <span>" + month + "</span>월</p></th>" +
            "<th><button type='button' class='next'>></button></th>" +
            "</thead>" +
            "<thead  class='cal_week'>" +
            "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>" +
            "</thead>" +
            "<tbody id='custom_set_date'>" +
            "</tbody>" +
            "</table>";
        return calendar_html_code;
    }

    function calMoveEvtFn() {
        //전달 클릭
        $(".custom_calendar_table").on("click", ".prev", function () {
            nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth() - 1, nowDate.getDate());
            calendarMaker($(target), nowDate);
        });
        //다음달 클릭
        $(".custom_calendar_table").on("click", ".next", function () {
            nowDate = new Date(nowDate.getFullYear(), nowDate.getMonth() + 1, nowDate.getDate());
            calendarMaker($(target), nowDate);
        });
        //일자 선택 클릭
        $(".custom_calendar_table").on("click", "td", function () {
            if ($(this).hasClass("select_day")) {
                // 이미 선택한 날짜를 클릭한 경우
                $(this).removeClass("select_day");
                $(this).find(".reserve_p").text($(this).data("custom_set_date"));
                reserveInfo = "";
            } else {
                // 다른 날짜를 선택한 경우
                $(".custom_calendar_table .select_day").removeClass("select_day");
                $(this).addClass("select_day");
                $(this).find(".reserve_p").text("");
                reserveInfo = $(this).data("custom_set_date");
            }
        });
    }
}

$(document).ready(function() {
	  var selectedBtns = []; // 선택한 권종 버튼들을 저장할 배열
	  // 총 결제금액 초기화
	  updateTotalPrice();

	  // 권종 선택 버튼 클릭 이벤트
	  $("#adult, #teenager, #childern").click(function() {
	    var isSelected = $(this).hasClass('active'); // 해당 버튼이 이미 선택되었는지 확인

	    // 선택한 가격을 수량 선택 항목에 표시
	    var price = parseInt($(this).find(".title2_price").text().replace(/[^0-9]/g, ""));
	    $(this).closest(".selectBox").find(".price").text(price.toLocaleString() + "원");

	    // 선택한 버튼이 이미 선택된 상태이면 선택 해제
	    if (isSelected) {
	      $(this).removeClass('active');
	      selectedBtns = selectedBtns.filter(function(btn) {
	        return btn.attr('id') !== $(this).attr('id');
	      });
	    } else { // 선택되지 않은 상태이면 선택 추가
	      $(this).addClass('active');
	      selectedBtns.push($(this));
	    }

	    showNumSelect();

	    // 선택한 권종 버튼에 active 클래스 추가
	    function showNumSelect() {
	      // 수량선택 영역 보이기
	      $('.num_select').show();

	      // 모든 권종 선택 영역 숨기기
	      $('.select_item').hide();

	      // 선택한 권종에 해당하는 수량 선택 영역 보이기
	      for (var i = 0; i < selectedBtns.length; i++) {
	        $('#' + selectedBtns[i].attr('name')).show();
	      }
	    }

	  });

	  $('.remove_ticket1').click(function() {
	    var item = $(this).closest('.select_item');
	    var btnId = item.attr('id');

	    // 선택한 권종 버튼에서 해당 아이템 제거
	    selectedBtns = selectedBtns.filter(function(btn) {
	      return btn.attr('id') !== btnId;
	    });

	    // 선택한 권종에 해당하는 수량 선택 영역 숨기기
	    item.hide();

	    // 선택한 권종 버튼에 active 클래스 제거
	    $('#' + btnId).removeClass('active');

	    // 선택한 권종 버튼에 대한 name 출력
	    $('#' + btnId).closest(".selectBox").find(".select_name").text("");
	    updateTotalPrice(); // 선택한 권종이 변경되면 총 결제금액 업데이트
	  });

	  // 수량 선택 버튼 클릭 이벤트
	  $('.add_ticket').click(function() {
	    var quantity = parseInt($(this).siblings('.select_quanatity').text(), 10);
	    quantity++;
	    $(this).siblings('.select_quanatity').text(quantity);
	    updateTotalPrice(); // 수량 변경으로 인해 총 결제금액 업데이트
	  });

	  $('.remove_ticket2').click(function() {
	    var quantity = parseInt($(this).siblings('.select_quanatity').text(), 10);
	    if (quantity > 1) {
	      quantity--;
	      $(this).siblings('.select_quanatity').text(quantity);
	      updateTotalPrice(); // 수량 변경으로 인해 총 결제금액 업데이트
	    }
	  });

	  // 총 결제금액 초기화
	  updateTotalPrice();

	  function updateTotalPrice() {
	    var total = 0;

	    // 선택한 모든 권종의 가격 합산
	    $('.select_item').each(function() {
	      var quantity = parseInt($(this).find('.select_quanatity').text(), 10);
	      var price = parseInt($(this).find('.item_price').val(), 10);
	      if (!isNaN(quantity) && !isNaN(price)) {
	        total += quantity * price;
	      }
	    });

	    // 총 결제금액 표시
	    $('.total_price').text(total.toLocaleString() + '원');
	  }
	});

