<%--
  Created by IntelliJ IDEA.
  User: KGH
  Date: 2024-04-06
  Time: 오후 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>수강 신청</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/main.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<br />
<h1 style="font-size: 30px; font-weight: 700; text-align: center;">수강 신청</h1>
<br /><br />
<sf:form method="post" action="${pageContext.request.contextPath}/docourseregistration" modelAttribute="courseregistration">
    <table class="formtable">
        <tr>
            <td class="label">수강년도</td>
            <td><sf:input class="control" type="text" path="year"/>  <br/>
                <sf:errors path="year" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label">학기</td>
            <td><sf:input class="control" type="text" path="semester"/> <br/>
                <sf:errors path="semester" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">교과목명</td>
            <td><sf:input class="control" type="text" path="coursename"/> <br/>
                <sf:errors path="coursename" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">교과구분</td>
            <td><sf:input class="control" type="text" path="coursetype"/> <br/>
                <sf:errors path="coursetype" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">담당교수</td>
            <td><sf:input class="control" type="text" path="professor"/> <br/>
                <sf:errors path="professor" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label">학점</td>
            <td><sf:input class="control" type="text" path="credit"/> <br/>
                <sf:errors path="credit" class="error" />
            </td>
        </tr>
        <tr>
            <td> </td>
            <td>
                <button type="submit" class="btn btn-dark">제출</button>
            </td>
        </tr>
    </table>
</sf:form>
</body>
</html>
