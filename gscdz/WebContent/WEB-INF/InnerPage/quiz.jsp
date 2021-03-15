<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="gscdz.java.*,java.util.*"%>
<%@ include file="./nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/quiza.css">
<script type="text/javascript"
	src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full">
	
</script>
<script src="<%=request.getContextPath()%>/js/quiza.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<Problem> usps = (ArrayList<Problem>) application.getAttribute("usps");
	User user = (User) session.getAttribute("user");
	if (session.getAttribute("issuc") != null && session.getAttribute("issuc") == "yes") {
	%>
	<script>
		alert("添加成功");
	</script>
	<%
		session.removeAttribute("issuc");
	}
	%>
	<div id="middle">
		<div id="Container">
			<div id="tabCon">
				<table width="560px" cellpadding=0 cellspacing=0 border=1>
					<tr>
						<td>编号</td>
						<td>题目</td>
						<td>相关知识点</td>
						<td>状态</td>
					</tr>
					<%
						if (usps != null) {
						for (Problem p : usps) {
					%>
					<tr>
						<td><%=p.getId()%></td>
						<td><%=p.getSubject()%></td>
						<td><%=p.getKnowledgePoints()%></td>
						<td><%=p.getState()%></td>
						<td><a
							href="<%=request.getContextPath()%>/user/ProDetails?id=<%=p.getId()%>">查看详情</a></td>
					</tr>
					<%
						}
					}
					%>
				</table>
				<button id="btn-quiz" class="btn">我要提问</button>
			</div>
			<div id="pagCon">

				<div id="pageHeader"><%=user.getUername()%>的问题提交
				</div>
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
					<div id="MathDiv" contenteditable="true">$：$</div>
					<div id="kpoints" contenteditable="true"></div>
				</div>
				<div id="pageFooter">
					<button id="btn-submit" class="btn">提交</button>
					<button id="btn-back" class="btn">取消</button>

				</div>

			</div>


		</div>

	</div>
</body>
</html>