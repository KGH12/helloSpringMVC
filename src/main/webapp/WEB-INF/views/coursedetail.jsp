<%--
  Created by IntelliJ IDEA.
  User: KGH
  Date: 2024-04-06
  Time: 오후 7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학기별 수강 내역</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<br />
<h1 style="font-size: 30px; font-weight: 700; text-align: center;">학기별 수강 내역</h1>
<br /><br />
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">년도</th>
        <th scope="col">학기</th>
        <th scope="col">교과목명</th>
        <th scope="col">교과구분</th>
        <th scope="col">담당교수</th>
        <th scope="col">학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="coursedetail" items="${id_coursedetail}" >
        <tr>
            <td><c:out value="${coursedetail['수강년도']}" /></td>
            <td><c:out value="${coursedetail['학기']}" /></td>
            <td><c:out value="${coursedetail['교과목명']}" /></td>
            <td><c:out value="${coursedetail['교과구분']}" /></td>
            <td><c:out value="${coursedetail['담당교수']}" /></td>
            <td><c:out value="${coursedetail['학점']}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
