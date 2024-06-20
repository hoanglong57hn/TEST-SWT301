<%-- 
    Document   : login
    Created on : Jun 5, 2024, 3:56:21 PM
    Author     : HOANG LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
            <h1>LOGIN FORM</h1>
            <form action="login" method="post">
                <div class = "input-field">
                    <input type = "text" id ="email" name ="username" placeholder ="Username"/>
                </div>
                <div class = "input-field">
                    <input type = "password" id ="password" name ="password" placeholder ="Password"/>
                </div>
                <button type ="submit"> Login </button>
                <h2 style = "color: red">${err}</h2>

                <a href="register.jsp" class ="signup">Signup now</a>
            </form>
        </div>
        <p style ="color: red">${requestScope.err}</p>
        
    </center>
</body>
</html>
