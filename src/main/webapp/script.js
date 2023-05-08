function std_submit(){
	var fn = document.stdfrm;
	
	if(fn.stdno.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.stdno.focus();
		return false;
	}
	if(fn.stdname.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.stdname.focus();
		return false;
	}
	if(fn.stdgrade.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.stdgrade.focus();
		return false;
	}
	fn.submit();
}

function sub_submit(){
	var fn = document.subfrm;
	
	if(fn.subno.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.subno.focus();
		return false;
	}
	if(fn.subname.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.subname.focus();
		return false;
	}
	if(fn.subscore.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.subscore.focus();
		return false;
	}
	if(fn.subtime.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.subtime.focus();
		return false;
	}
	if(fn.substart.value ==""){
		alert("모든 항목을 입력하세요.");
		fn.substart.focus();
		return false;
	}
	fn.submit();
}

function course_submit(){
	var fn = document.coursefrm;
	
	if(fn.stdno.value==""){
		alert("모든 항목을 입력하세요");
		fn.stdno.focus();
		return false;
	}
	if(fn.subno.value==""){
		alert("모든 항목을 입력하세요");
		fn.subno.focus();
		return false;
	}
	if(fn.registdate.value==""){
		alert("모든 항목을 입력하세요");
		fn.registdate.focus();
		return false;
	}
}