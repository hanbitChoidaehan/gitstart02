<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function save_go(f) {
		f.action="write_ok.jsp";
		f.submit();
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
					<td bgcolor="#99ccff">작성자</td>
					<td><input type="text" name="name" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제  목</td>
					<td><input type="text" name="subject" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td><input type="text" name="email" size ="20"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20"/></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<textarea rows="5" cols="60" name="content"></textarea>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="저장" onclick="save_go(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>










