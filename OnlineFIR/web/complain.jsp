
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
        
        <!--body-->
        <div style='background-color: lightblue; width:70%; height: 100%; margin-left: 15%;'>
            <div>
                <form action="Complaincode.jsp">
        <table align="center" border="0" border-radius="20" font-size="20px">
            <tr>
                <td>Full Name</td>
                <td><input type="text" name="fname"></td>
            </tr>
            <tr>
                <td>Contact Number</td>
                <td><input type="text" name="contact"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="add"></td>
            </tr>
            <tr>
                <td>Email-id</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>Subject</td>
                        <td>><select name="sub">
                                <option>select</option>
                                <option>burglary</option>
                                <option>threads</option>
                                <option>murder</option>
                                <option>other</option>
                    </select></td>
            </tr>
            <tr>
                <td>Complain</td>
                <td><textarea type="text" name="complain"></textarea></td>
            </tr>
            <tr>
                <td>Name of Suspect</td>
                <td><input type="text" name="suspect"></td>
            </tr>
            <tr>
                <td>Addition detail</td>
                <td><textarea type="text" name="additional"></textarea></td>
            </tr>
            
            <tr>
                <td><input type="submit" value="Submit"></td>
            </tr>
            <tr>
                <td><input type="reset"></td>
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
