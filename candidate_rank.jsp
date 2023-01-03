<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    StringBuffer sb = new StringBuffer();
    sb.append("select mem.m_no, mem.m_name, count(*) cnt				   ")
    	.append("from TBL_VOTE_202005 vote, TBL_MEMBER_202005 mem  ")
    	.append("where vote.m_no=mem.m_no and vote.V_CONFIRM = 'Y' ")
    	.append("group by mem.m_no, mem.m_name                             ")
    	.append("order by cnt desc                                 ");
    
    String sql = sb.toString();
    
    Connection conn = DBConnect.getConnection();
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
	<jsp:include page="layout/nav.jsp"></jsp:include>
	<section class="section">
		<h2>후보자등수</h2>
		<table class="table_line">
			<tr>
				<td>후보번호</td>
				<td>성명</td>
				<td>총투표건수</td>
			</tr>
			<%while(rs.next()){ %>
			<tr class="center">
				<td><%=rs.getString("m_no") %></td>
				<td><%=rs.getString("m_name") %></td>
				<td><%=rs.getString("cnt") %></td>
			</tr>
			<%} %>
		</table>
	</section>
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>