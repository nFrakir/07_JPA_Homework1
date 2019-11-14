<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="com.gmail.silverleaf.annn.Course"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>University</title>
    <meta charset="utf-8">
    <link rel='stylesheet' href='style.css' type='text/css' media='all' />
</head>
<body>
    <h3>Courses</h3>
    <table>
        <thead>
            <th class="outer">Course title</th>
            <th class="outer">Students count</th>
        </thead>
        <tbody>
        <c:forEach items="${courses}" var="course">
            <tr>
                <td><c:out value="${course.getTitle()}" /></td>
                <td><c:out value="${course.getStudent_count()}" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>