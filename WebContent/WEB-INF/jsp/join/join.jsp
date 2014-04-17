<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�̴� ���θ�</title>
<script type="text/javascript">

	function idCheck() {
		
		if(document.loginForm.id.value == '') {
			alert('���̵� �Է��ϼ���.');
			document.loginForm.id.focus();
			return;
		}
		
		var frm = document.loginForm;
		frm.method.value="idCheck";
		frm.submit();
	}
	
	function join() {
		
		if(document.loginForm.id.value == '') {
			alert('���̵� �Է��ϼ���.');
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
			<h1><a href="/Minishop">�̴� ���θ�</a></h1>
		</div>
		<div align="center">
			<h3>ȸ�������� ���� �Ʒ��׸��� �Է����ּ���.</h3>
		</div>

		<div align="center">
			<br /> <br /> <br /> <br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���̵�&nbsp;&nbsp;&nbsp;<input type="text" id="id" name="id" style="width: 100px;" />&nbsp;<input type="button" value="�ߺ�üũ" onclick="javascript:idCheck();" /><br /> <br />
			��й�ȣ&nbsp;<input type="password" id="passwd" name="passwd" style="width: 100px;" /><br /> <br />
			�������&nbsp;<input type="text" id="birth" name="birth" style="width: 100px;" /><br /> <br />
			����&nbsp;<input type="radio" id="gender" name="gender" value="M" />M&nbsp;&nbsp;<input type="radio" id="gender" name="gender" value="F" />F<br /> <br />
			�̸���&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="email" name="email" style="width: 100px;" /><br /> <br />
			��ȭ��ȣ&nbsp;<input type="text" id="phone" name="phone" style="width: 100px;" /><br /> <br />
			�ּ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="addr" name="addr" style="width: 100px;" /><br /> <br />
		</div>
		<div align="center">
			<br /> <br /> <input type="button" value="ȸ�����" onclick="javascript:join();" />
		</div>
	</form:form>
</body>
</html>