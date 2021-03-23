
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
            .tr{
                font-size: 23px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <!--header-->
        <div>
            <%@include file="Header.jsp" %>
            <nav style="float: left; width: 15%; height: 100%; padding: 20px;">
                <ul>
                    <li><a href="Home.jsp" class="side">View FIRs</a></li><br><br>
                    <li><a href="Viewfir.jsp" class="side">File FIR</a></li><br><br>
                    <li><a href="Viewcomplain.jsp" class="side">View Complains</a></li><br><br>
                    <li><a href="Changepass.jsp" class="side">Change Password</a></li><br><br>
                    <li><a href="Home.jsp" class="side">Logout</a></li><br><br>
                </ul>
            </nav>
          
        <!--searching complain-->
        <div style="margin-left: 80%; margin-top: 100px;">
           <form action="Searchcomplaincode.jsp">
               <table>
                   <tr><td><input type="text" placeholder="Enter complain id" name="cid" style="border-radius: 15px; width: 200px; height: 25px;">
                       </td></tr>
                   <tr style="text-align: center;"><td><input type="submit" value="Search" align="center"></td></tr>
               </table>
            </form>
        </div>
        
        
        <!--FIR form-->
        <div style="margin-left: 20%; margin-top: -100px; background-color: lightcoral; border-radius: 15px; width: 700px; text-align: center;">
            <table border="0">
              
                    <tr>
                        <td>Complain ID</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Full Name</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Contact no.</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Complain</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Suspect</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Additional details</td>
                        <td></td>
                    </tr>

            </table>

        </div>
        
    </div>
    <%@include file="Footer.jsp" %>

    </body>
</html>
