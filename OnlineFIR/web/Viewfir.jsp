<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList"  %>
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
        
        <%
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

PreparedStatement st = con.prepareStatement("select * from complaintab");
            
ResultSet rs = st.executeQuery();

ArrayList list1 = new ArrayList();
ArrayList list2 = new ArrayList();
ArrayList list3 = new ArrayList();
ArrayList list4 = new ArrayList();
ArrayList list5 = new ArrayList();
ArrayList list6 = new ArrayList();
ArrayList list7 = new ArrayList();
ArrayList list8 = new ArrayList();
ArrayList list9 = new ArrayList();
ArrayList list10 = new ArrayList();

while(rs.next()){
    list1.add(rs.getString(1));
    list2.add(rs.getString(2));
    list3.add(rs.getString(3));
    list4.add(rs.getString(4));
    list5.add(rs.getString(5));
    list6.add(rs.getString(6));
    list7.add(rs.getString(7));
    list8.add(rs.getString(8));
    list9.add(rs.getString(9));
    list10.add(rs.getString(10));
}
//response.sendRedirect("Viewcomplain.jsp");
%>
        
        <div style="margin-left: 20%; margin-top: -100px; background-color: lightcoral; border-radius: 15px; width: 700px; text-align: center;">
            <table>
                <tr>
                    <th>Complain ID</th>
                    <th>Full Name</th>
                    <th>Contact</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Subject</th>
                    <th>Complain</th>
                    <th>Suspect</th>
                    <th>Additional</th>
                    <th>Status</th>
                </tr>
                <%
                    for(int i=0;i<list1.size();i++)
                    {
                 %>
                 <tr>
                    
                    <td><%=list1.get(i)%></td>
                    <td><%=list2.get(i)%></td>
                    <td><%=list3.get(i)%></td>
                    <td><%=list4.get(i)%></td>
                    <td><%=list5.get(i)%></td>
                    <td><%=list6.get(i)%></td>
                    <td><%=list7.get(i)%></td>
                    <td><%=list8.get(i)%></td>
                    <td><%=list9.get(i)%></td>
                    <td><%=list10.get(i)%></td>
                    <td><a href="Acceptcomplaincode.jsp">Accept</a></td>
                </tr>
                <%}%>
            </table>
        </div>
        
        
    </div>
    <%@include file="Footer.jsp" %>

    </body>
</html>
