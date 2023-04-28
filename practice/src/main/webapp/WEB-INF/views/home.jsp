<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
	table{
		display: inline-block; 
	}
	</style>
</head>
<body>
	<form action="list" method="get">
		<table border="1">
			<tr>
				<td>카테고리</td>
				<td>
					<select name="categoty_name">
						<option>선택</option>
						<option value="의류">의류</option>
						<option value="침구">침구</option>
						<option value="가구">가구</option>
					</select>                                             
				</td>                                                     
				<td>1차</td>                                              
				<td>                                                      
					<select name="categoty_sex">                                              
						<option>선택</option>                             
						<option value="남성">남성</option>                             
						<option value="여성">여성</option>                             
					</select>                                             
				</td>                                                     
				<td>2차</td>                                              
				<td>                                                      
					<select name="categoty_type">
						<option>선택</option>
						<option value="티셔츠">티셔츠</option>
						<option value="바지">바지</option>
						<option value="슈트">슈트</option>
					</select>
				</td>
			<tr/>
		</table>
		
		<button>조회</button>
		<br/>
		<table border="1">
			<tr>
				<td>상품코드</td>
				<td>상품명</td>
				<td>제조사명</td>
				<td>단위명</td>
				<td>재고수량</td>
				<td>재고여부</td>
				<td>사용여부</td>
			</tr>
			<c:forEach var="goods" items="${goods}">
				<tr>
					<td>${goods.code}</td>
					<td>${goods.name}</td>
					<td>${goods.maker}</td>
					<td>${goods.unit}</td>
					<td>${goods.stock}</td>
					<td>
						<input id="stock" type="checkbox" disabled="disabled"<c:if test="${goods.stock_whether == 1}"> checked</c:if>>
					</td>
					<td>
						<input id="use_stock" type="checkbox" disabled="disabled"<c:if test="${goods.use_whether == 1}"> checked</c:if>>
					</td>
				</tr>
			</c:forEach>
			
		</table>
	
	</form>
	<form>
	
	</form>
</body>
<script
  src="https://code.jquery.com/jquery-3.6.4.slim.js"
  integrity="sha256-dWvV84T6BhzO4vG6gWhsWVKVoa4lVmLnpBOZh/CAHU4="
  crossorigin="anonymous"></script>
<script>
	
</script>
</html>
