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
            if(id.equals("")){
                %>
                <script>alert("ID is required.");</script>
                <% }if(pwd.equals("")){
                %>
                <script>alert("Password is required");</script>
                <%}if(level.equals("select")){
                  %>
                  <script>alert("Please select post");</script>
                <%
}
            
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

            if(level.equals("Admin")){
                PreparedStatement st = con.prepareStatement("select * from adminlogintab where userid=? and pass=?");
                st.setString(1,id);
                st.setString(2,pwd);
                ResultSet rs = st.executeQuery();
                if(rs.next())
                {
                    //response.sendRedirect("Admin.jsp");
                %>
                <jsp:forward page="Admin.jsp"/>
                  <%
                }
                else
                {
                    RESULT=1;
                }
            }
            if(level.equals("Police")){
                PreparedStatement st=con.prepareStatement("select * from policelogintab where userid=? and password=?");
                st.setString(1,id);
                st.setString(2,pwd);
                ResultSet rs=st.executeQuery();
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
                PreparedStatement st=con.prepareStatement("select * from userlogintab where userid=? and password=?");
                st.setString(1,id);
                st.setString(2,pwd);
                ResultSet rs=st.executeQuery();
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
        <div style='width:65%; height: 100%; margin-left: 8%; font-size: 25px;'>
            <div>
                <p>As per the CrPC (Criminal Procedure court) incidents are divided into two categories that is cognizable and non cognizable. For cognizable case police can register an FIR (First Information Report) and investigated further. This is govern by under section 154 CrPC.</p>
                <p></p><p></p>
                <p>Also incase of non cognizable incidences/offences police registers the information but advices the complainant to approach court/ other legal mechanism for remedy. FIR of cognizable offences is governed under section 154 CrPC whereas non cognizable reports are governed under section 155 of the CrPC. Procdure and important aspects of the First Information Report (FIR) of cognizable offences are mentioned below:</p>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">The complainant suppose to get the signed copy of the FIR at the police station at free of charge.</p></div>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">FIR is register as soon as without any delay after the incident.</p></div>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">Place & time of incident and about any other important avidance should be mentioned during the FIR registration process</p></div>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">The reason should be clearly mentioned if the FIR registration is delayed.</p></div>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">Any information other then written or oral in the Police Station is not considered as FIR, its just information.  Police does not carry any type of investigation on non cognizable offence report.</p></div>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">After the FIR registration police investigates the case collect evidences gets the statement of the witness and prepair Final report known as chargesheet and submit it before the Court for further process.</p></div>
                <div class=""><div style="height: 40px; width: 40px; border-radius: 20px; background-color: crimson;"></div><p style="margin-top: -35px; margin-left: 50px;">Incase of insufficient or no evidence in the complaint police submits a Final Report which is known as FR.</p></div>
         
            </div>
                <nav style='float: left;'>
                    <div style="margin-top: -900px; margin-left: 950px;">
                <div align="right">
                <%if(RESULT==1){%>
                    <font align="center" color="red">Invalid ID/password</font>
                <%}%>
                </div>
                <form action="">
        <table align="center" border-radius="20" font-size="20px">
            <tr style="color: crimson;">
                <td align='center'>Username</td>
            </tr>
            <tr>
                <td><input type="text" name="userid" style="border-radius: 15px; width: 200px; height: 25px;"></td>
            </tr>
            <tr style="color: crimson;">
                <td align='center'>Password</td>
            </tr>
            <tr>
                <td><input type="password" name="pass" style="border-radius: 15px; width: 200px; height: 25px;"></td>
            </tr>
            <tr style="color: crimson;">
                <td>Login As  
                    <select name="post" style="font-size: 17px;">
                                <option>select</option>
                                <option>Admin</option>
                                <option>Police</option>
                                <option>User</option>
                    </select></td>
            </tr>
     
            <tr>
                <td align='center'><input style='font-size: 18px; background-color: crimson;' type="submit" value="Login" name="btn"></td>
            </tr>
            
        </table>
                </form><hr>
                <div align="center"><a href="Newuser.jsp">New User</a></div>
            </div></nav>
            </div>
        </div>
        <!--footer-->
        <%@include file="Footer.jsp" %>
    </body>
</html>
