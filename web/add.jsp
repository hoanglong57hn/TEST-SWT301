<%--
    Document   : add
    Created on : May 30, 2024, 4:54:18 PM
    Author     : SIEU THI SO 4G
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
        <form action="add" method="post">

            Input RollNo: <input type="text" name="rollNo" value="" />
            <br/>
            Input Name: <input type="text" name="name" value="" />
            <br/>
            Input Mark: <input type="text" name="mark" value="" />
            <br/>
            <input type="submit" value="add" />
        </form>
    </body>
</html>
