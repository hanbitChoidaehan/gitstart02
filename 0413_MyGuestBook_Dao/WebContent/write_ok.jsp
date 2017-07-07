<%@page import="com.hb.mybatis.guestbookDAO"%>
<%@page import="com.hb.mybatis.VO"%>
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
	<jsp:useBean id="vo2" class="com.hb.mybatis.VO"/>
	<jsp:setProperty property="*" name="vo2"/>
	
	<%
		int result = guestbookDAO.getInsert(vo2);
		
		if(result>0){
			%>
			<script type="text/javascript">
			alert("쓰기성공!!!");
			location.href="list.jsp";
			</script>
			<%
		}else{%>
		<script type="text/javascript">
			alert("쓰기실패!!!");
			location.href="list.jsp";
		</script>
	  <%}
	%>
</body>
</html>