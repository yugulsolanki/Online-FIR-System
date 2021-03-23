<%-- 
    Document   : Home
    Created on : 12 Mar, 2021, 10:28:22 PM
    Author     : yugul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online FIR</title>
        <style>
            a{
                text-decoration: none;
                color: white;
                font-size: 25px;
            }
            a:hover{
                background-color: white;
                color: crimson;
            }
            .navi{
                background-color:crimson;
                width: 100%;
                heigth: 120px;
                text-align: center;
            }
            td{
                border-radius: 20px;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <%@include file="Header.jsp" %>
        <hr>
        <!--navigation-->
        <div>
            <table class="navi">
                <tr>
                    <td><a href="Home.jsp">Home</a></td>
                    <td><a href="">Cyber Crime</a></td>
                    <td><a href="">Advocte</a></td>
                    <td><a href="">Laws</a></td>
                    <td><a href="">Help</a></td>
                    <td><a href="Logout.jsp">Logout</a></td>
                </tr>
            </table>
        </div>
        
        <!--body-->
        <div style='background-color: lightblue; width:70%; height: 100%; margin-left: 15%;'>
            <div>
                <form action="Changepasscode.jsp">
        <table align="center" border="0" border-radius="20" font-size="20px">
            <tr>
                <td>Username</td>
            </tr>
            <tr>
                <td><input type="text" name="userid"></td>
            </tr>
            
            <tr>
                <td>New Password</td>
            </tr>
            <tr>
                <td><input type="password" name="newpass"></td>
            </tr>
            <tr>
                <td>Confirm new password</td>
            </tr>
            <tr>
                <td><input type="text" name="cnewpass"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Done"></td>
            </tr>
        </table>
        </form>
            </div>
        </div>
        
        <hr>
        <!--footer-->
        <%@include file="Footer.jsp" %>
    </body>
</html>
