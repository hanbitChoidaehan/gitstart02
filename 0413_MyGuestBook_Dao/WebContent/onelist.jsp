<%@page import="com.hb.mybatis.guestbookDAO"%>
<%@page import="com.hb.mybatis.VO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.hb.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	String pwd = request.getParameter("pwd");
%>
<!DOCTYPE html=>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function update(f) {
		f.action="update.jsp";
		f.submit();
	}
	function del(f) {
		f.action="del.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<%
			VO vo = guestbookDAO.getOneList(idx); 
		%>
	<div align="center">
		<h2>방명록 : 내용화면</h2>
		<hr />
		<p>[<a href="list.jsp">게시물목록으로 이동</a>]</p>
		<form method="post">
		
			<%
				if (vo!=null) {
			%>
			<table width="500" cellpadding="5" cellspacing="0" border="1">
				<tr align="center">
					<td bgcolor="#99ccff">번호</td>
					<td><%=vo.getIdx() %></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td><%=vo.getName() %></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제목</td>
					<td><%=vo.getSubject() %></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">이메일</td>
					<td><%=vo.getEmail()%></td>
				</tr>
				<tr>
					<td colspan="2">
						<%=vo.getContent() %>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update(this.form)" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="삭제" onclick="del(this.form)"/>
						</td>
						<input type="hidden" name="idx" value="<%=vo.getIdx() %>">
						<input type="hidden" name="pwd" value="<%=vo.getPwd() %>">
					</tr>
				</tfoot>
								<%} else {%>
		<h2>자료가 없습니다.</h2>
			<%}%>
			</table>
		</form>
	</div>
</body>
</html>










