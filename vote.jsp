<%@ page import="java.sql.*" %>
<%@ page import="DB.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sql = "select m_no, m_name from tbl_member_202005";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function chkVla(){
		var dd = document.data;
		if(!dd.v_jumin.value){
			alert("주민번호가 입력되지 않았습니다.")
			data.v_jumin.focus()
			return false;
		}
		else if(!dd.v_name.value){
			alert("성명이 입력되지 않았습니다.")
			data.v_name.focus()
			return false;
		}
		else if(dd.m_no.value=="none"){
			alert("후보번호가 선택되지 않았습니다.")
			data.m_no.focus()
			return false;
		}
		else if(!dd.v_time.value){
			alert("투표시간이 입력되지 않았습니다.")
			data.v_time.focus()
			return false;
		}
		else if(!dd.v_area.value){
			alert("투표장소가 입력되지 않았습니다.")
			data.v_area.focus()
			return false;
		}
		else if(!dd.v_confirm.value){
			alert("유권자확인이 선택되지 않았습니다.")
			data.v_confirm.focus()
			return false;
		}
		alert("정상적으로 투표가 되었습니다")
	}
	function re(){
		document.data.reset();
	}
</script>
<meta charset="UTF-8">
<title>candidate_list</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<jsp:include page="layout/header.jsp"/>
	<jsp:include page="layout/nav.jsp"/>
	<section class="section">
		<h2>투표하기</h2>
		<form action="vote_p.jsp" method="post" name="data" onsubmit="return chkVla()">
			<table class="table_line">
				<tr>
					<th>주민번호</th>
					<td><input type="text" name="v_jumin"></td>
				</tr>
				<tr>
					<th>성명</th>
					<td><input type="text" name="v_name"></td>
				</tr>
				<tr>
					<th>후보번호</th>
					<td>
						<select name="m_no">
							<option value="none"> </option>
							<% while(rs.next()) { %>
							<option value="<%= rs.getString("m_no") %>">[<%= rs.getString("m_no") %>] <%= rs.getString("m_name") %></option>
							<% } %>
						</select>
					</td>
				</tr>
				<tr>
					<th>투표시간</th>
					<td><input type="text" name="v_time"></td>
				</tr>
				<tr>
					<th>투표장소</th>
					<td><input type="text" name="v_area"></td>
				</tr>
				<tr>
					<th>유권자확인</th>
					<td>
						<input type="radio"" name="v_confirm" value="Y"> 확인
						<input type="radio"" name="v_confirm" value="N"> 미확인
					</td>
				</tr>
				<tr class="center">		
					<td colspan="2">
						<input type="submit" value="투표하기">
						<input type="button" value="다시하기" onclick="re()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="layout/footer.jsp"/>
</body>
</html>