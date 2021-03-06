<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<h2><title>게시물 조회</title></h2>
</head>
<body>
<!-- 메뉴 include -->
<div id="nav">
 <%@ include file="../include/nav.jsp" %>
</div>

<form method="post">

<label>제목</label>
${view.title}<br /><hr>

<label>작성자</label>
${view.writer}<br /><hr>

<label>내용</label><br />
${view.content}<br /><hr>

<div>
<a href="/board/modify?bno=${view.bno}">게시물 수정</a>,<a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
</div>

</form>
<!-- 댓글 시작 -->

<hr />

<ul>
	<!-- <li>
		<div>
			<p>첫 번째 댓글 작성자</p>
			<p>첫 번째 댓글</p>
		</div>
	</li>
	<li>
		<div>
			<p>두 번째 댓글 작성자</p>
			<p>두 번째 댓글</p>
		</div>
	</li>
	<li>
		<div>
			<p>세 번째 댓글 작성자</p>
			<p>세 번째 댓글</p>
		</div>
	</li> -->
	
	<c:forEach items="${reply}" var="reply">
	<li>
		<div>
			<p>${reply.writer} / ${reply.regDate}</p>
			<p>${reply.content}</p>
		</div>
	</li>	
	</c:forEach>
</ul>

<div>

	<form method="post" action="/reply/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer">
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
		<input type="hidden" name="bno" value="${view.bno}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>






<!-- 댓글 끝 -->

</body>
</html>