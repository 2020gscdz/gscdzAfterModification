<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="gscdz.java.*,java.text.SimpleDateFormat,java.util.*"%>
<%@ include file="./nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/test.css">
<script type="text/javascript"
	src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full">
	
</script>
<script src="<%=request.getContextPath()%>/js/test.js">
	
</script>
<title>Insert title here</title>
</head>
<body>

	<div id="web-body-container">
		<div id="middle">
			<%
				SolProblem problem = (SolProblem) session.getAttribute("solproblem");

			if (problem != null) {
				UserDB userdb = new UserDB();
				User user = userdb.getUserByid(problem.getCreUserId());
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
			%>
			<div id="proInfo">
			    <div id="problemId" hidden="hidden"><%=problem.getId() %></div>
				<div id="subject" class="text1"><%=problem.getSubject()%>
				</div>
				<div id="tips" hidden="hidden"><%=session.getAttribute("tips")%></div>
				<P id="else" class="text1">
					相关知识点：<%=problem.getKnowledgePoints()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cteateTime：<%=formatter.format(problem.getCreateTime())%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建者：<%=user.getUername()%>
				</P>
			</div>

			<button id="startBtn" class="btn">开始作答</button>
			<button id="tipsBtn" class="btn">提示一下</button>

			<div id="answerPos">
				<div id="pageHeader">答题区</div>
				<div id="pageContent">
					<div id="pageContent-Tool">
						<button class="toolBtn">$\infty$</button>
						<button class="toolBtn">$\cup$</button>
						<button class="toolBtn">$\cap$</button>
						<button class="toolBtn">$\in$</button>
						<button class="toolBtn">$\notin$</button>
						<button class="toolBtn">$\varnothing$</button>
						<button class="toolBtn">$\forall$</button>
						<button class="toolBtn">$\exists$</button>
						<button class="toolBtn">$\nabla$</button>
						<button class="toolBtn">$\partial$</button>
						<button class="toolBtn">$\sum$</button>
						<button class="toolBtn">$\int$</button>
						<button class="toolBtn">$\sqrt[x]{y}$</button>
						<button class="toolBtn">$\frac{x}{y}$</button>
					</div>
					<div id="MathDiv" contenteditable="true">$abc$</div>
					<div id="solution" hidden="hidden">
						答案：<%
						StringTokenizer solution = new StringTokenizer(problem.getSolution(), "||");
					while (solution.hasMoreTokens()) {
					%>
						<p>
							<%=solution.nextToken()%>
							<%
								}
							%>
						
					</div>
					<div id="analysis" hidden="hidden">
						分析：<%=problem.getAnalysis()%></div>
				</div>
				<div id="pageFooter">
					<button id="btn-submit" class="btn">作答完毕</button>
					<button id="btn-addToctj" class="btn">添加到错题集</button>

				</div>

			</div>

			<%
				}
			%>


		</div>
	</div>

</body>
</html>