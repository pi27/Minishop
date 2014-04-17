<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<title>미니 쇼핑몰</title>
<script type="text/javascript">

	function Login() {
		
		if(document.loginForm.id.value == '') {
			alert('아이디를 입력하세요.');
			document.loginForm.id.focus();
			return;
		}
		
		if(document.loginForm.passwd.value == '') {
			alert('비밀번호를 입력하세요.');
			document.loginForm.passwd.focus();
			return;
		}
		
		var frm = document.loginForm;
		frm.method.value="login";
		frm.submit();
	}
	
	
	function Join() {
		
		var frm = document.loginForm;
		frm.method.value="join";
		frm.submit();
	}
	
	function LoginCheck() {
			if('${msg}' != '')
			alert('${msg}');
	}
</script>
</head>
<body onload="LoginCheck();">
	<form:form action="login.do" name="loginForm" method="post" modelAttribute="loginVo">
		<input type="hidden" name="method" value="" />
		<div align="center">
			<h1><a href="/Minishop">미니 쇼핑몰</a></h1>
		</div>
		<div align="center">
			<h3>미니 쇼핑몰에 오신 것을 환영합니다.</h3>
		</div>

		<div align="center">
			<br /> <br /> <br /> <br /> <br /> 아이디&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="id" name="id" style="width: 100px;" /><br /> <br />
			비밀번호&nbsp;<input type="password" id="passwd" name="passwd" style="width: 100px;" />
		</div>
		<div align="center">
			<br /> <br /> <input type="button" value="로그인" onclick="javascript:Login();" />
		</div>
		<div align="center">
			<br /> <br /> 아직 회원이 아니신가요? <input type="button" value="회원가입"
				onclick="javascript:Join();" />
		</div>
	</form:form>
</body>
</html>