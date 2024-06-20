<%-- 
    Document   : register
    Created on : Jun 6, 2024, 4:22:51 PM
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
        <center>
        <div>
            <h1>REGISTER FORM</h1>
            <form action="register" method="post">
                <div class = "input-field">
                    <input type = "text" id ="email" name ="username" placeholder ="Username"/>
                </div>
                <div class = "input-field">
                    <input type = "password" id ="password" name ="password" placeholder ="Password"/>
                </div>
                <div class = "input-field">
                    <input type = "number" id ="number" name ="role" placeholder ="Role"/>
                </div>
                <button type ="submit"> Sign up </button>
                <h2 style = "color: red">${err}</h2>
            </form>
        </div>
        <p style ="color: red">${requestScope.err}</p>
    </center>
    </body>
</html>
