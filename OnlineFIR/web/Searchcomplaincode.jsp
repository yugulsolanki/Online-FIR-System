<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList"  %>
<%
    

    String cid = request.getParameter("cid");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

PreparedStatement st = con.prepareStatement("select * from complaintab where cid=?");
st.setString(1, cid);
ResultSet rs = st.executeQuery();
String s1 = "";
String s2 = "";
String s3 = "";
String s4 = "";
String s5 = "";
String s6 = "";
String s7 = "";
String s8 = "";
String s9 = "";
String s10 = "";

if(rs.next()){
    s1 = rs.getString(1);
    s2 = rs.getString(2);
    s3 = rs.getString(3);
    s4 = rs.getString(4);
    s5 = rs.getString(5);
    s6 = rs.getString(6);
    s7 = rs.getString(7);
    s8 = rs.getString(8);
    s9 = rs.getString(9);
    s10 = rs.getString(10);
}
//response.sendRedirect("Viewonecomplain.jsp");
%>

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
        
        
        <!--searched complain-->
        <div style="margin-left: 28%; margin-top: -100px; background-color: lightcoral; border-radius: 15px; width: 500px; text-align: center;">
            <table>
                <tr>
                    <td>Complain id</td>
                    <td><%=s1%></td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td><%=s2%></td>
                </tr>
                <tr>
                    <td>Complain id</td>
                    <td><%=s3%></td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td><%=s4%></td>
                </tr>
                <tr>
                    <td>Complain id</td>
                    <td><%=s5%></td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td><%=s6%></td>
                </tr>
                <tr>
                    <td>Complain id</td>
                    <td><%=s7%></td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td><%=s8%></td>
                </tr>
                <tr>
                    <td>Complain id</td>
                    <td><%=s9%></td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td><%=s10%></td>
                </tr>
            </table>
        </div>
        
    </div>
    <%@include file="Footer.jsp" %>

    </body>
</html>
