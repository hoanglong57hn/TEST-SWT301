<%-- 
    Document   : user
    Created on : Jun 6, 2024, 4:55:22 PM
    Author     : HOANG LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, model.Student" %>
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
    <center>
        <h1>User List </h1>
        <%
            List<Student> list = null;
            if (request.getAttribute("list") != null) {
                list = (List<Student>) request.getAttribute("list");
            }
        %>
        <table border="1">
            <tr>
                <th>RollNo</th>
                <th> Name</th>
                <th>Mark</th>
            </tr>
            <%
                if (list != null) {
                    for(Student s : list) {
            %>
            <tr>
                <td><%= s.getRollNo() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getMark() %></td>
            </tr>
            <%
                    }
                }
            %>
        </table>

    </center>
</body>
</html>
