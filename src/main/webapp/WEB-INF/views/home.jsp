<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>학사 정보 시스템</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <style>
    .card-border {
      border: 2px solid #007bff;
      border-radius: .25rem;
      margin-bottom: 1rem;
    }

    .card-img-top {
      width: 100%;
      height: 400px;
      object-fit: cover;
    }

    .card-body {
      height: 200px;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">학사 정보 시스템</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      </ul>
      <div class="d-flex">
        <c:if test="${pageContext.request.userPrincipal != null}">
          <span class="navbar-text me-3">
             ${pageContext.request.userPrincipal.name}
          </span>
          <a href="javascript:document.getElementById('logout').submit()" class="btn btn-outline-light me-2">Logout</a>
        </c:if>
<c:if test="${pageContext.request.userPrincipal == null}">
  <a href="<c:url value='/login'/>" class="btn btn-outline-light me-2">로그인</a>

</c:if>

</div>
    </div>
  </div>
</nav>

<br />
<div class="container text-center">
  <div class="row">
    <div class="col-sm-4">
      <div class="card-border">
        <div class="card">
                  <img src="${pageContext.request.contextPath}/resources/images/a.png" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">학년별 이수 학점 조회</h5>
                    <p class="card-text">학년별 이수 학점을 조회하세요!</p>
                    <a href="${pageContext.request.contextPath}/courses" class="btn btn-info">이동→</a>
                  </div>
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="card-border">
        <div class="card">
                  <img src="${pageContext.request.contextPath}/resources/images/b.png" class="card-img-top"  alt="...">
                  <div class="card-body">
                    <h5 class="card-title">수강 신청하기</h5>
                    <p class="card-text">2024년 2학기에 수강할 과목을 신청하세요!</p>
                    <a href="${pageContext.request.contextPath}/createcourseregistration" class="btn btn-info">이동→</a>
                  </div>
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="card-border">
        <div class="card">
                  <img src="${pageContext.request.contextPath}/resources/images/c.png" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">수강 신청 조회</h5>
                    <p class="card-text">2024년 2학기 수강 신청 내역을 조회하세요!</p>
                    <a href="${pageContext.request.contextPath}/courseregistrations" class="btn btn-info">이동→</a>
                  </div>

        </div>
      </div>
    </div>
  </div>
</div>

<form id="logout" action="<c:url value='/logout' />" method="post">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

</body>
</html>
