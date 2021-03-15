
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="gscdz.java.*,java.util.*,java.text.SimpleDateFormat"%>

<%!private ArrayList<String> getTokenizer(String text) {
		ArrayList<String> textArray = new ArrayList<String>();
		StringTokenizer text1 = new StringTokenizer(text, "||");
		while (text1.hasMoreTokens()) {
			textArray.add(text1.nextToken());
		}
		return textArray;
	}
	private User getUser(int id) {
		UserDB db = new UserDB();
		User user = db.getUserByid(id);
		return user;
	}%>
<%@ include file="./nav.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/proDet.css">
<script src="<%=request.getContextPath()%>/js/proDeta.js"></script>
<script type="text/javascript"
	src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full">
	
</script>
<title>Insert title here</title>

</head>

<body>
	<div id="web-body-container">
		<div id="middle">
			<%
				Problem problem = (Problem) session.getAttribute("problem");
			if (problem != null) {
				UserDB userdb = new UserDB();
				User user = userdb.getUserByid(problem.getCreUserId());
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ");
			%>
			<div id="proInfo">
				<div id="subject" class="text1"><%=problem.getSubject()%>
				</div>
				<P id="else" class="text1">
					相关知识点：<%=problem.getKnowledgePoints()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cteateTime：<%=formatter.format(problem.getCreateTime())%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建者：<%=user.getUername()%>
				</P>
			</div>
			<div id="container">
				<div id="elseAnswer" class="box">
					<!--弹性和布局呈现其他答案
                class="elAs"
               -->

					<%
						ArrayList<String> solution = getTokenizer(problem.getSolution());
					ArrayList<String> answUserId = getTokenizer(problem.getAnswUserId());
					ArrayList<String> analysis = getTokenizer(problem.getAnalysis());
					%>
					<%
						if (solution != null) {
						for (int i = 0; i < solution.size(); ++i) {
							User answerUser = getUser(Integer.parseInt(answUserId.get(i)));
					%>
					<div class="elAs">
						<div id="userInfor">
							<div id="photo"></div>
							<p>
								用户：<%=answerUser.getUername()%><br /> 已解决题量：<%=answerUser.getSolvedQuestionNumber()%>
							</p>
						</div>
						<div class="soluAndAna">
							解决方案：<%=solution.get(i)%></div>
						<div class="soluAndAna">
							分析：<%=analysis.get(i)%></div>
					</div>
					<%
						}
					} else {
					%>
					<div id="noSol" class="elAs">暂时无人作答</div>
					<%
						}
					%>

				</div>
				<div id="resize">
					<!--中间的移动块
               <div class="resize-icon" id="resize-icon-left"></div>
               <div class="resize-icon" id="resize-icon-mid"></div>
               <div class="resize-icon" id="resize-icon-right"></div>
               -->
					<canvas id="resize-canvas" width="11px" height="50px"></canvas>
				</div>
				<div id="answerPos" class="box">
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
						<div id="analysis" contenteditable="true"></div>
					</div>
					<div id="pageFooter">
						<button id="btn-submit" class="btn">提交</button>

					</div>

				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>