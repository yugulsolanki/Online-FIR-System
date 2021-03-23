<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online FIR</title>
        <style>
            a{
                text-decoration: none;
            }
            .side{
                text-decoration: none; 
                color: crimson; 
                font-size: 25px;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <div>
           <%@include file="Header.jsp" %>
        <nav style="float: left; width: 15%; height: 100%; padding: 20px;">
            <ul>               
                <li><a href="complain.jsp" class="side">File a Complain</a></li><br><br>
                <li><a href="viewmycomplain.jsp" class="side">View Complain</a></li><br><br>
                <li><a href="Changepass.jsp" class="side">Change Password</a></li><br><br>
                <li><a href="Home.jsp" class="side">Logout</a></li><br><br>
                
            </ul>
          </nav>
         <!--searching complain-->
        <div style="margin-left: 80%; margin-top: 100px;">
           <form action="Searchmycomplaincode.jsp">
               <table>
                   <tr><td><input type="text" placeholder="Enter your contact to see your complain" name="contact" style="border-radius: 15px; width: 200px; height: 25px;">
                       </td></tr>
                   <tr style="text-align: center;"><td><input type="submit" value="Search" align="center"></td></tr>
               </table>
            </form>
        </div>
          
        <div style="width: 420px; background-color: lightsteelblue; padding: 200px; margin-left: 17%;">
            
        </div>
        </div>
        
         <%@include file="Footer.jsp" %>

    </body>
</html>
