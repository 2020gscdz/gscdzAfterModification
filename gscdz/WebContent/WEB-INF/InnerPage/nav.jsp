<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/nav.css">
</head>
<body>
	<div id="web-nav-container">
		<div id="m-navTop-func">
			<div id="m-navTop-func-i">
				<div id="u-navLogin-container">
					<div class="u-navLogin-logo new-nav-spoc-logo">
						<a href="<%=request.getContextPath()%>/user/gethome"> <image
								src="<%=request.getContextPath()%>/images/logo.png"></a>
					</div>
					<div class="e-hover-quiz u-navLogin-quiz">
						<a href="<%=request.getContextPath()%>/user/quiz" target="_top">
							<span class="nav">提问</span>
						</a>

					</div>
					<div class="u-navLogin-practice normal">
						<a href="<%=request.getContextPath()%>/user/test" target="_top">
							<span class="nav">练习</span>
						</a>
					</div>
					<div class="u-navLogin-p normal">
						<a href="<%=request.getContextPath()%>/user/offer" target="_top">
							<span class="nav">提供题目</span>
						</a>
					</div>
					<div class="u-navLogin-p normal">
						<a href="<%=request.getContextPath()%>/user/ctj" target="_top">
							<span class="nav">错题集</span>
						</a>
					</div>
					<div class="u-navLogin-xiazai normal">
						<a href="#" target="_top"> <span class="nav"> 下载APP(暂无)
						</span>
						</a>
					</div>
					<div class="web-nav-right-part">
						<div class="u-navLogin-searchFunc"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>