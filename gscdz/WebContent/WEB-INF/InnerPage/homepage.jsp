<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,gscdz.java.*"%>
<%@ include file="./nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/homepage.css">

<script src="<%=request.getContextPath()%>/js/homepage.js"></script>
<script type="text/javascript"
	src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full">
	
</script>
</head>
<body>

	<div id="middle">
		<div class="container1">
			<div class="container2">
				<div class="container3">
					<div class="leftNav">
						<div class="chapter">
							<span class="headline title">章节内容</span> <span class="subtitle"></span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">函数与极限</a>
							</span> <span class="subtitle"> <a href="">映射与函数</a> <span>/</span>
								<a href="">极限与无穷</a> <span>/</span> <a href="">函数的连续性与间断点</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">导数与微分</a>
							</span> <span class="subtitle"> <a href="">导数的概念及求导法则</a> <span>/</span>
								<a href="">高阶导数</a> <span>/</span> <a href="">隐函数</a> <span>/</span>
								<a href="">函数的微分</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">微分中值定理</a>
							</span> <span class="subtitle"> <a href="">微分中值定理</a> <span>/</span>
								<a href="">洛必达法则</a> <span>/</span> <a href="">泰勒公式</a> <span>/</span>
								<a href="">函数的单调性与凹凸性</a> <span>/</span> <a href="">函数的极值与最值</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">不定积分</a></span> <span
								class="subtitle"> <a href="">不定积分的概念与性质</a> <span>/</span>
								<a href="">换元积分法</a> <span>/</span> <a href="">分部积分法</a> <span>/</span>
								<a href="">有理函数的积分</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">定积分</a>
							</span> <span class="subtitle"> <a href="">概念与性质</a> <span>/</span>
								<a href="">微积分的基本公式</a> <span>/</span> <a href="">换元法与分部积分法</a>
								<span>/</span> <a href="">反常积分</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">定积分的应用</a>
							</span> <span class="subtitle"> <a href="">元素法</a> <span>/</span>
								<a href="">几何学上的应用</a> <span>/</span> <a href="">物理学上的应用</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">微分方程</a>
							</span> <span class="subtitle"> <a href="">可分离变量的微分方程</a> <span>/</span>
								<a href="">齐次方程</a> <span>/</span> <a href="">一阶线性与高阶线性微分方程</a>
								<span>/</span> <a href="">常系数齐次线性微分方程</a> <span>/</span> <a
								href="">常系数非齐次线性微分方程</a>
							</span>
						</div>
						<div class="chapter">
							<span class="headline"> <a href="">向量代数与解析几何</a>
							</span> <span class="subtitle"> <a href="">向量及线性运算</a> <span>/</span>
								<a href="">数量积与混合积</a> <span>/</span> <a href="">平面与空间直线</a> <span>/</span>
								<a href="">曲面与空间曲线</a>
							</span>
						</div>
						<div class="chapter chapter1" hidden>
							<span class="headline"> <a href="">多元微分函数</a>
							</span> <span class="subtitle"> <a href="">偏导数</a> <span>/</span>
								<a href="">全微分</a> <span>/</span> <a href="">多元复合函数</a> <span>/</span>
								<a href="">隐函数的求导法则</a> <span>/</span> <a href="">方向导数与梯度</a> <span>/</span>
								<a href="">多元函数的极值</a>
							</span>
						</div>
						<div class="chapter chapter1" hidden>
							<span class="headline"> <a href="">重积分</a>
							</span> <span class="subtitle"> <a href="">概念和性质</a> <span>/</span>
								<a href="">二重积分</a> <span>/</span> <a href="">三重积分</a> <span>/</span>
								<a href="">重积分的应用</a>
							</span>
						</div>
						<div class="chapter chapter1" hidden>
							<span class="headline"> <a href="">曲线与曲面积分</a>
							</span> <span class="subtitle"> <a href="">弧长的曲线积分</a> <span>/</span>
								<a href="">坐标的曲线积分</a> <span>/</span> <a href="">格林公式</a> <span>/</span>
								<a href="">面积的曲面积分</a> <span>/</span> <a href="">坐标的曲面积分</a> <span>/</span>
								<a href="">高斯公式与斯托克斯公式</a>
							</span>
						</div>
						<div class="chapter chapter1" hidden>
							<span class="headline"> <a href="">无穷级数</a>
							</span> <span class="subtitle"> <a href="">常数项级数</a> <span>/</span>
								<a href="">幂级数</a> <span>/</span> <a href="">傅里叶级数</a>
							</span>
						</div>
						<div id="icon">
							<canvas id="canvas" width="30px" height="30px"></canvas>
						</div>

					</div>
					<div id="midPic">
						<div class="slide">
							<a href="https://mp.weixin.qq.com/s/uKYmqDL7uOdYEM2s1LjTvQ"><img
								src="<%=request.getContextPath()%>/images/1.png"></a>
						</div>
						<div class="slide">
							<a href="https://mp.weixin.qq.com/s/ZCkQ7rVxRkDyzXja7S73kQ"><img
								src="<%=request.getContextPath()%>/images/2.png"></a>
						</div>
						<div class="slide">
							<a href="https://mp.weixin.qq.com/s/ZQFDX_kT8q6Yjb4cBj8Diw"><img
								src="<%=request.getContextPath()%>/images/3.jpg"></a>
						</div>
					</div>
					<div class="user"></div>
				</div>
				<div id="web-material">
					<p class="web-material-title">每日一题</p>

					<div class="web-material-inner">
						<%
							if (session.getAttribute("islogin") == "yes") {
							ArrayList<SolProblem> sps = (ArrayList<SolProblem>) application.getAttribute("sps");
							SolProblem sp = sps.get(4);
						%>
						<div id="subject"><%=sp.getSubject()%></div>
						<div id="else">
							相关知识点：<%=sp.getKnowledgePoints()%>&nbsp;&nbsp;&nbsp;&nbsp;解决时间：<%=sp.getSolvedTime()%></div>
						<div id="solution">
							<%
								StringTokenizer solution = new StringTokenizer(sp.getSolution(), "||");
							while (solution.hasMoreTokens()) {
							%>
							<p>
								<%=solution.nextToken()%>
								<%
									}
								%>
							</p>
						</div>
						<div id="analysis">
							分析：<%=sp.getAnalysis()%></div>
						<%
							}
						%>
					</div>

				</div>
			</div>
		</div>

	</div>
	<div id="footer">
		<p id="footer-inner">本网站旨在帮助你学习高等数学，所有题目以理解为主，不要盲目地抄答案！！！</p>
	</div>
</body>
</html>