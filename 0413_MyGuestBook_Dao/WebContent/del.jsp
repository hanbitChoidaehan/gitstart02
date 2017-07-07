<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		request.setCharacterEncoding("utf-8");
    	String idx = request.getParameter("idx");
    	String pwd = request.getParameter("pwd");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function del(f) {
		var pwd1 = f.pwd.value;
		var pwd2 = "<%=pwd%>";
		if(pwd1 != pwd2){
			alert("비번을 다시 입력하세요");
			f.pwd.value="";
			f.pwd.focus();
			return;
		}else{
			var chk = confirm("정말 삭제할까요?");
			if(chk){
				f.action="del_ok.jsp?idx=<%=idx%>";
				f.submit();
			
			}else{
				f.action="onelist.jsp?idx=<%=idx%>";
				f.submit();
			}
		}
	}
</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 작성화면</h2>
		<hr />
		<p>[<a href="list.jsp">목록으로 이동</a>]</p>
		<form method="post">
			<table width="500" cellpadding="5" cellspacing="0" border="1">
				<tr align="center">
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
						<input type="hidden" name="idx" value="<%=idx%>">
				</tr>
				<tfoot>
					<tr align="left">
						<td colspan="2">
							<input type="button" value="삭제" onclick="del(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>










