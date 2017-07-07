<%@page import="com.hb.mybatis.guestbookDAO"%>
<%@page import="com.hb.mybatis.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.hb.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		List<VO> list = guestbookDAO.getList();
	%>
	<div align="center">
	
	
		<h2>방명록</h2>
		<hr />
		<p>	
			[<a href="write.jsp">방명록 쓰기</a>]
		</p>
		<form>
			<table width="500" cellpadding="5" cellspacing="0" border="1">
				<tr align="center">
					<td bgcolor="#99ccff">번호
					<td bgcolor="#99ccff">작성자</td>
					<td bgcolor="#99ccff">제목</td>
					<td bgcolor="#99ccff">작성일</td>
					<%
						if (list.size() > 0) {
					%>
				</tr>
				<%
					for (VO k : list) {
				%>
				<tr align="center">
					<td><%=k.getIdx()%></td>
					<td><%=k.getName()%></td>
					<td><a href="onelist.jsp?idx=<%=k.getIdx()%>"><%=k.getSubject()%></a></td>
					<input type="hidden" name="idx" value="<%=k.getIdx() %>">
					<td><%=k.getRegdate().substring(0,16)%></td>
				</tr>
				<%
					}
				%>
				<%
					} else {
				%>
				<h3>자료가 없습니다.</h3>
				<%
					}
				%>
			</table>
		</form>
	</div>
</body>
</html>