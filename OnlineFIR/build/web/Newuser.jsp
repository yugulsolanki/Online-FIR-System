
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online FIR</title>
        <style>
            .navi{
                background-color:crimson;
                width: 100%;
                heigth: 120px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <%@include file="Header.jsp" %>

        <!--body-->
        <div style=''>
            <div align="center" style="margin-top: 30px; font-size: 20px;">
                <form action="Newusercode.jsp">
        <table style="text-align: center; background-color: lightgoldenrodyellow; border-radius: 10px;" align="center">
            <tr>
                <td style="color: crimson; font-size: 30px">Username</td>
            </tr>
            <tr>
                <td><input type="text" name="newids" style="border-radius: 15px; width: 200px; height: 25px;"></td>
            </tr>
            <tr style="color: crimson; font-size: 30px">
                <td>Password</td>
            </tr>
            <tr>
                <td><input type="password" name="newpassword" style="border-radius: 15px; width: 200px; height: 25px;"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Register" name="btn1"></td>
            </tr>
            
        </table>
        </form>
            </div>
        </div>
        <!--footer-->
        <%@include file="Footer.jsp" %>
    </body>
</html>
