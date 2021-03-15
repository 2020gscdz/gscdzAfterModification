<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/loginPage.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if ((session.getAttribute("isright") != null) && session.getAttribute("isright") == "wrong") {
		response.getWriter().println("<html><body><p>please check your username or password</p></body></html>");
	} else if ((session.getAttribute("isnull") != null) && session.getAttribute("isnull") == "yes") {
		response.getWriter().println("<html><body><p>password or username null</p></body></html>");
	}
	%>

	<div class="box">
    <div class="box__form box--signin">
      <form action="login" method="post" class="form">
          <h1 class="form__title">Login</h1>
          <select name="occupation" class="select">
           <option value="Admin">管理员</option>
           <option value="User">用户</option>
          </select>
          <lable for="username"><input type="text" id="username" name="username" placeholder="Username" class="input"/></lable>
          <lable for="password"><input type="password" id="password" name="password" placeholder="Password" class="input"/></lable>
          <button class="btn" type="submit">登录</button>
      </form>
    </div>
  </div>
</body>
</html>