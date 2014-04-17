<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>미니 쇼핑몰</title>
<script type="text/javascript">

	function idCheck() {
		
		if(document.loginForm.id.value == '') {
			alert('아이디를 입력하세요.');
			document.loginForm.id.focus();
			return;
		}
		
		var frm = document.loginForm;
		frm.method.value="idCheck";
		frm.submit();
	}
	
	function join() {
		
		if(document.loginForm.id.value == '') {
			alert('아이디를 입력하세요.');
			document.loginForm.id.focus();
			return;
		}
		
		var frm = document.loginForm;
		frm.method.value="insertUser";
		frm.submit();
	}
	
	
	function init() {
			if('${msg}' != '') {
				alert('${msg}');
				if('${result}' == '0') {
					document.loginForm.id.value = '${loginVo.id}';
					document.loginForm.id.readOnly = true;
					document.loginForm.idConfirm.value = "1";
				} else {
					document.loginForm.id.focus();
					
				}
			}
			
	}
</script>
</head>
<body onload="init();">
	<form:form action="login.do" name="loginForm" method="post" modelAttribute="loginVo">
		<input type="hidden" name="method" value="" />
		<input type="hidden" id="idConfirm" name="idConfirm" value="0" />
		<div align="center">
			<h1><a href="/Minishop">미니 쇼핑몰</a></h1>
		</div>
		<div align="center">
			<h3>회원가입을 위해 아래항목을 입력해주세요.</h3>
		</div>

		<div align="center">
			<br /> <br /> <br /> <br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디&nbsp;&nbsp;&nbsp;<input type="text" id="id" name="id" style="width: 100px;" />&nbsp;<input type="button" value="중복체크" onclick="javascript:idCheck();" /><br /> <br />
			비밀번호&nbsp;<input type="password" id="passwd" name="passwd" style="width: 100px;" /><br /> <br />
			생년월일&nbsp;<input type="text" id="birth" name="birth" style="width: 100px;" /><br /> <br />
			성별&nbsp;<input type="radio" id="gender" name="gender" value="M" />M&nbsp;&nbsp;<input type="radio" id="gender" name="gender" value="F" />F<br /> <br />
			이메일&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="email" name="email" style="width: 100px;" /><br /> <br />
			전화번호&nbsp;<input type="text" id="phone" name="phone" style="width: 100px;" /><br /> <br />
			주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="addr" name="addr" style="width: 100px;" /><br /> <br />
		</div>
		<div align="center">
			<br /> <br /> <input type="button" value="회원등록" onclick="javascript:join();" />
		</div>
	</form:form>
</body>
</html>