<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList"  %>
<%
    
    String id = request.getParameter("userid");
    String pwd = request.getParameter("pass");
    String level = request.getParameter("post");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

PreparedStatement st = con.prepareStatement("select * from complaintab");
            
ResultSet rs = st.executeQuery();




%>