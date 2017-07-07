<%@page import="com.hb.mybatis.guestbookDAO"%>
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
	<jsp:useBean id="vo3" class="com.hb.mybatis.VO"/>
	<jsp:setProperty property="*" name="vo3"/>
	
	<%
		int result = guestbookDAO.getDel(vo3); 
		if(result>0){
			%>
			<script type="text/javascript">
			alert("삭제성공!!!");
			location.href="list.jsp";
			</script>
			<%
		}else{%>
		<script type="text/javascript">
			alert("삭제실패!!!");
			history.go(-1);
		</script>
	  <%}
	%>
</body>
</html>