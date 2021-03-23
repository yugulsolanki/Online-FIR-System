<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    int RESULT=0;
    String button = request.getParameter("btn");
    if(button!=null && button.equals("Login"))
    {
        
            String id = request.getParameter("userid");
            String pwd = request.getParameter("pass");
            String level = request.getParameter("post");
            
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

            if(level.equals("Admin")){
                PreparedStatement st = con.prepareStatement("select * from adminlogintab where userid=? and pass=?");
                st.setString(1,id);
                st.setString(2,pwd);
                ResultSet rs = st.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("Admin.jsp");
                    
                }
                else
                {
                    RESULT=1;
                }
            }
            if(level.equals("Police")){
                PreparedStatement st1=con.prepareStatement("select * from policelogintab where userid=? and password=?");
                st1.setString(1,id);
                st1.setString(2,pwd);
                ResultSet rs = st1.executeQuery();
                if(rs.next())
                {
                    //response.sendRedirect("Police.jsp");
                     %>
                    <jsp:forward page="Police.jsp"/>
                    <%
                }
                else
                {
                    RESULT=1;
                }
            }
            if(level.equals("User")){
                PreparedStatement st2=con.prepareStatement("select * from userlogintab where userid=? and password=?");
                st2.setString(1,id);
                st2.setString(2,pwd);
                ResultSet rs=st2.executeQuery();
                if(rs.next())
                {
                    //response.sendRedirect("User.jsp");
                %>
                <jsp:forward page="User.jsp"/>
                  <%
                }
                else
                {
                    RESULT = 1;
                }
            }
    }
%>

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
        <div style='background-color: lightblue; width:70%; height: 100%; margin-left: 15%;'>
            <div>
                <div align="center">
                    <%if(RESULT==1){%>
                        <font align="center" color="red">Invalid ID/password</font>
                    <%}%>
                </div>
                <form action="">
                    <table align="center" border="0" border-radius="20" font-size="20px">
                        <tr>
                            <td>Username</td>
                        </tr>
                        <tr>
                        <td><input type="text" name="userid"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                        </tr>
                        <tr>
                            <td><input type="password" name="pass"></td>
                        </tr>
                        <tr>
                            <td>Login As</td>       
                        </tr>
                        <tr>
                            <td><select name="post">
                                            <option>select</option>
                                            <option>Admin</option>
                                            <option>Police</option>
                                            <option>User</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" value="Login" name="btn"></td>
                        </tr>
                        <tr>
                            <td><a href="Changepass.jsp">Change Password</a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <!--footer-->
        <%@include file="Footer.jsp" %>
    </body>
</html>
