<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<title>�̴� ���θ�</title>
<script type="text/javascript">

	function Login() {
		
		if(document.loginForm.id.value == '') {
			alert('���̵� �Է��ϼ���.');
			document.loginForm.id.focus();
			return;
		}
		
		if(document.loginForm.passwd.value == '') {
			alert('��й�ȣ�� �Է��ϼ���.');
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
			<h1><a href="/Minishop">�̴� ���θ�</a></h1>
		</div>
		<div align="center">
			<h3>�̴� ���θ��� ���� ���� ȯ���մϴ�.</h3>
		</div>

		<div align="center">
			<br /> <br /> <br /> <br /> <br /> ���̵�&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="id" name="id" style="width: 100px;" /><br /> <br />
			��й�ȣ&nbsp;<input type="password" id="passwd" name="passwd" style="width: 100px;" />
		</div>
		<div align="center">
			<br /> <br /> <input type="button" value="�α���" onclick="javascript:Login();" />
		</div>
		<div align="center">
			<br /> <br /> ���� ȸ���� �ƴϽŰ���? <input type="button" value="ȸ������"
				onclick="javascript:Join();" />
		</div>
	</form:form>
</body>
</html>