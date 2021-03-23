
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
                
                <li><a href="Viewfir.jsp" class="side">View FIRs</a></li><br><br>
                <li><a href="Viewcomplain.jsp" class="side">View Complains</a></li><br><br>
                <li><a href="Updatepolice.jsp" class="side">Update Policemen</a></li><br><br>
                <li><a href="Home.jsp" class="side">Logout</a></li><br>
                
            </ul>
          </nav>
          
        <div style="width: 420px; background-color: lightsteelblue; padding: 200px; margin-left: 17%;">
            
        </div>
        </div>
         <%@include file="Footer.jsp" %>

    </body>
</html>
