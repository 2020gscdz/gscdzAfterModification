<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="gscdz.java.*,java.util.*,java.text.SimpleDateFormat"%>
<%@ include file="./nav.jsp"%>

<!DOCTYPE html>
<html>
<head>
<script src="<%=request.getContextPath()%>/js/mathjax-config.js">
	
</script>
<script type="text/javascript"
	src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full">
	
</script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/CuoTiJia.css">


<!-- 
<script type="text/javascript">
function DetailClick(i){
	analysis=document.getElementById("analysis"+i);
	solution=document.getElementById("solution"+i);
    tr=document.getElementById("tr"+i);
    window.MathJax.Hub.Queue(function(){
        let math = MathJax.Hub.getAllJax("MathDiv")[0];
        window.MathJax.Hub.Queue(["Text",math,analysis.innerText+solution.innerText]);
        });
}
</script>
 -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="web-body-container">
		<div id="middle">
			<p id="title">错題集</p>
			<div id="tabContainer">
				<table width="80%" cellpadding=0 cellspacing=0 border=1>
					<tr>
						<td class="id">序号</td>
						<td class="subject">题目</td>
						<td class="createTime">创建时间</td>
						<td class="action">操作</td>
					</tr>

					<%
						ArrayList<SolProblem> cuoTiJiArray = (ArrayList<SolProblem>) session.getAttribute("cuoTiJiArray");
					if (cuoTiJiArray == null) {
					%>
					<tr>
						<td colspan="4">暂无错题记录</td>
					</tr>
					<%
						} else {
					SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					for (SolProblem solp : cuoTiJiArray) {
					%>
					<tr id="tr<%=solp.getId() %>">
						<td class="id"><%=solp.getId()%></td>
						<td class="subject"><%=solp.getSubject()%></td>
						<td class="createTime"><%=formatter.format(solp.getCreateTime())%></td>
						<td class="action"><a href="<%=request.getContextPath()%>/user/ctjProDet?id=<%=solp.getId()%>" style="color: blue">查看 </a> <span>/</span>
						    <a href="<%=request.getContextPath()%>/user/delete?id=<%=solp.getId()%>"
							style="color: red">删除 </a></td>
					</tr>
					<%
						}
					}
					%>
				</table>
			</div>
		</div>
	</div>
</body>
</html>