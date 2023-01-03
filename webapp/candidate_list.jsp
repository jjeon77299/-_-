
<%@ page import="java.sql.*" %>
<%@ page import="DB.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sql = "select m.m_no, m.m_name, p.p_name, "
				+"case when p_school='1' then '고졸' when p_school='2' then '학사' when p_school='3' then '석사' when p_school='4' then '박사' end p_school, "
				+"substr(m.m_jumin,0,6) || '-' || substr(m.m_jumin,7,11) m_jumin, m.m_city, p.p_tel1 || '-' || p.p_tel2 || '-' || p.p_tel3 p_tel "
				+"from tbl_member_202005 m, tbl_party_202005 p "
				+"where m.p_code = p.p_code";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>candidate_list</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<jsp:include page="layout/header.jsp"/>
	<jsp:include page="layout/nav.jsp"/>
	<section class="section">
		<h2>후보조회</h2>
		<table class="table_line">
			<tr>
				<th>후보번호</th>
				<th>성명</th>
				<th>소속정당</th>
				<th>학력</th>
				<th>주민번호</th>
				<th>지역구</th>
				<th>대표전화</th>
			</tr>
			<% while(rs.next()) { %>
			<tr class="center">
				<td><%= rs.getString("m_no") %></td>
				<td><%= rs.getString("m_name") %></td>
				<td><%= rs.getString("p_name") %></td>
				<td><%= rs.getString("p_school") %></td>
				<td><%= rs.getString("m_jumin") %></td>
				<td><%= rs.getString("m_city") %></td>
				<td><%= rs.getString("p_tel") %></td>
			</tr>
			<% } %>
		</table>
	</section>
	<jsp:include page="layout/footer.jsp"/>
</body>
</html>