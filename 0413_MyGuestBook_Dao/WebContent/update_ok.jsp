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
	<jsp:useBean id="vo4" class="com.hb.mybatis.VO"/>
	<jsp:setProperty property="*" name="vo4"/>
<%
		int result = guestbookDAO.getUpdate(vo4); 
		if(result>0){
			%>
			<script type="text/javascript">
				alert("수정성공!!!");
				location.href="onelist.jsp?idx=<%=vo4.getIdx()%>";
			</script>
			<%
		}else{%>
		<script type="text/javascript">
				alert("수정실패!!!");
				history.go(-1);
		</script>
	  <%}
	%>
	
</body>
</html>