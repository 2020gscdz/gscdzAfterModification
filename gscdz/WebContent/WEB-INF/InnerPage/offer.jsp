<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/offer.css">
<script type="text/javascript"
	src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full">
	
</script>

<script src="<%=request.getContextPath()%>/js/offera.js"></script>
<script></script>
</head>
<body>
	<div id="web-body-container">
		<div id="middle">
			<div id="subject" contenteditable="true" class="inputdiv"></div>
			<div id="solution" contenteditable="true" class="inputdiv"></div>
			<div id="knowledgePoints" contenteditable="true" class="inputdiv"></div>
			<div id="analysis" contenteditable="true" class="inputdiv"></div>
			<div id="tips" contenteditable="true" class="inputdiv"></div>
			<button id="sub-btn">提交</button>
		</div>
	</div>
</body>
</html>