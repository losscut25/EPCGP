 $(document).ready(function(){
  var setpw = document.getElementById("setpw");
  var setrepw = document.getElementById("setrepw");
  var settel = $("#settel").val();
  
  var pw = document.getElementById("pw");
  var repw = document.getElementById("repw");
  var tel = document.getElementById("tel");

  var errorpw = /^(?=.*\d)(?=.*[a-z]).{8,15}$/;


//pw null or 유효성에 안 맞는 경우
  setpw.addEventListener("keyup", function() {
    if (setpw.value === "") {
      setpw.style.borderColor = "red";
      pw.classList.add("error"); 
      setpw.focus();
    } else if (!errorpw.test(setpw.value)) {
      setpw.style.borderColor = "red";
      pw.classList.add("error"); 
      setpw.focus();
    } else {
      pw.classList.remove("error"); 
      setpw.style.borderColor = "";
    }
    return false;
  });

  //pw null or 비번 확인이랑 다른 경우
  setrepw.addEventListener("keyup", function() {
    if (setrepw.value === "") {
      setrepw.style.borderColor = "red";
      repw.classList.add("error");
      setrepw.focus();
    } else if (setrepw.value !== setpw.value) {
      setrepw.style.borderColor = "red";
      repw.classList.add("error");
      setrepw.focus();
    } else {
      repw.classList.remove("error"); 
      setrepw.style.borderColor = "";
    }
    return false;
  });

 
	});