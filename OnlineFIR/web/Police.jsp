
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
                    <li><a href="Viewfir.jsp" class="side">View FIRs</a></li><br><br>
                    <li><a href="Police.jsp" class="side">File FIR</a></li><br><br>
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
        <div style="margin-left: 28%; margin-top: -100px; background-color: lightcoral; border-radius: 15px; width: 500px; text-align: center;">
            <form action="Fircode.jsp">
                <table align="center" border="0" border-radius="20" font-size="20px">
                    <tr class="tr">
                        <td>Full Name</td>
                        <td><input type="text" name="fname" style="border-radius: 15px; width: 200px; height: 23px;"></td>
                    </tr>
                    <tr class="tr">
                        <td>Contact Number</td>
                        <td><input type="text" name="contact" style="border-radius: 15px; width: 200px; height: 23px;"></td>
                    </tr>
                    <tr class="tr">
                        <td>Address</td>
                        <td><input type="text" name="add" style="border-radius: 15px; width: 200px; height: 23px;"></td>
                    </tr>
                    <tr class="tr">
                        <td>Email-id</td>
                        <td><input type="text" name="email" style="border-radius: 15px; width: 200px; height: 23px;"></td>
                    </tr>
                    <tr class="tr">
                        <td>Subject</td>
                                <td>><select name="sub">
                                        <option>select</option>
                                        <option>burglary</option>
                                        <option>threads</option>
                                        <option>murder</option>
                                        <option>other</option>
                            </select></td>
                    </tr>
                    <tr class="tr">
                        <td>Complain</td>
                        <td><textarea type="text" name="complain" style="border-radius: 15px;"></textarea></td>
                    </tr>
                    <tr class="tr">
                        <td>Name of Suspect</td>
                        <td><input type="text" name="suspect" style="border-radius: 15px; width: 200px; height: 23px;"></td>
                    </tr>
                    <tr class="tr">
                        <td>Addition detail</td>
                        <td><textarea type="text" name="additional" style="border-radius: 15px;"></textarea></td>
                    </tr>
                    <tr class="tr">
                        <td><input type="submit" value="Submit" style="border-radius: 15px; font-size: 20px;"></td>
                        <td><input type="reset" style="border-radius: 15px; font-size: 20px;"></td>
                    </tr>

                </table>
            </form>
        </div>
        
    </div>
    <%@include file="Footer.jsp" %>

    </body>
</html>
