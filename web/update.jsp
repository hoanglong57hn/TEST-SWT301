<%-- 
    Document   : update
    Created on : Jun 6, 2024, 4:38:56 PM
    Author     : HOANG LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Student</h1>
        <form action="update" method="post">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="${student.id}">
            RollNo: <input type="text" name="rollNo" value="${student.rollNo}"><br>
            Name: <input type="text" name="name" value="${student.name}"><br>
            Mark <input type="number" name="mark" value="${student.mark}"><br>       
            <input type="submit" value="Update">
        </form>
            <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>
        <a href="list">Back to List</a>


    </body>
</html>
