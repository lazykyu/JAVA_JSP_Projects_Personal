<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	String passwd = request.getParameter("passwd");
	
	BoardDAO bdao = new BoardDAO();
	int check = bdao.deleteBoard(num,passwd);
	
	if(check==1){
%>
		<script type="text/javascript">
			alert("삭제 성공");
			location.href="galleryNotice.jsp?pageNum=<%=pageNum%>";
		</script>		
<%
	}else{
%>
		<script>
			alert("비밀번호가 일치하지 않습니다.");
			history.back();
		</script>
<%		
	}
%>