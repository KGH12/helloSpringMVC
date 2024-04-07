<%--
  Created by IntelliJ IDEA.
  User: KGH
  Date: 2024-04-06
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>학기별 총 이수 학점</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<br />
<h1 style="font-size: 30px; font-weight: 700; text-align: center;">학기별 총 이수 학점</h1>
<br /><br />
<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">년도</th>
            <th scope="col">학기</th>
            <th scope="col">취득학점</th>
            <th scope="col">상세보기</th>
        </tr>
        </thead>
        <tbody>
<c:forEach var="course" items="${id_courses}" >
        <tr>
            <td><c:out value="${course['수강년도']}" /></td>
            <td><c:out value="${course['학기']}" /></td>
            <td><c:out value="${course['학점']}" /></td>
            <td>
    <c:url var="courseDetailUrl" value="/coursedetail">
        <c:param name="year" value="${course['수강년도']}" />
        <c:param name="semester" value="${course['학기']}" />
    </c:url>
    <a href="${courseDetailUrl}">링크</a>

            </td>
        </tr>
</c:forEach>
        </tbody>
    </table>
</body>
</html>
