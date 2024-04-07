<%--
  Created by IntelliJ IDEA.
  User: KGH
  Date: 2024-04-06
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <title>로그인</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/login.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container login-ContentWrap">
    <form class="form-signin" method="post" action="<c:url value="/login" />">
        <h2 class="form-signin-heading login-InputTitle">로그인</h2>

        <c:if test="${not empty errorMsg}">
            <div class="login-ErrorMessageWrap" style="color: #ff0000;"> <h3> ${errorMsg} </h3></div>
        </c:if>

        <c:if test="${not empty logoutMsg}">
            <div class="login-ErrorMessageWrap" style="color: #0000ff;"> <h3> ${logoutMsg} </h3> </div>
        </c:if>

        <div class="mb-3 text-start">
            <label for="username" class="sr-only login-InputTitle">사용자명</label>
            <div class='login-InputWrap'>
                <input type="text" id="username" name="username" class="form-control login-Input" placeholder="Username" required autofocus>
            </div>
        </div>

        <div class="mb-3 text-start">
            <label for="password" class="sr-only login-InputTitle">비밀번호</label>
            <div class='login-InputWrap'>
                <input type="password" id="password" name="password" class="form-control login-Input" placeholder="Password" required>
            </div>
        </div>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"  />
        <button class="login-Button" type="submit">로그인</button>
    </form>
</div>
</body>
</html>
