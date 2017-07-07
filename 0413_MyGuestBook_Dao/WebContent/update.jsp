<%@page import="com.hb.mybatis.VO"%>
<%@page import="com.hb.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	SqlSession ss = DBService.getFactory().openSession();
	VO vo = ss.selectOne("onelist", idx);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function update_ok(f) {
		var pwd1 = f.pwd.value;
		var pwd2 = "<%=vo.getPwd()%>";
		if(pwd1==pwd2){
		f.action="update_ok.jsp";
		f.submit();
		}else{
			alert("패스워드가 다릅니다.");
			f.pwd.value="";
			f.pwd.focus();
			return;
		}
	}
	function back(f) {
		history.go(-1);
	}
</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 수정화면</h2>
		<hr />
		<p>[<a href="list.jsp">게시물목록으로 이동</a>]</p>
		<form method="post">
		
			<%
				if (vo!=null) {
			%>
			<table width="500" cellpadding="5" cellspacing="0" border="1">
				<tr align="center">
					<td bgcolor="#99ccff">번호</td>
					<td><%=vo.getIdx()%></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td><input type="text" name="name" size ="20" value="<%=vo.getName()%>"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제목</td>
					<td><input type="text" name="subject" size ="20" value="<%=vo.getSubject()%>"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">이메일</td>
					<td><input type="text" name="email" size ="20" value="<%=vo.getEmail()%>"/></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">비밀번호</td>
					<td><input type="password" name="pwd" size ="20" value=""/></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="5" cols="60" name="content"><%=vo.getContent()%></textarea>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="저장" onclick="update_ok(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="취소" onclick="back(this.form)"/>
						</td>
							<input type="hidden" name="idx" value="<%=vo.getIdx() %>">
					</tr>
				</tfoot>
								<%} else {%>
		<h2>자료가 없습니다.</h2>
			<%}%>
			<%ss.close(); %>
			</table>
		</form>
	</div>
</body>
</html>










