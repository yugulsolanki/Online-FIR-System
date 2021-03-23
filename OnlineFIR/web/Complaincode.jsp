<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    
    try{
    String fname = request.getParameter("fname");
    String contact = request.getParameter("contact");
    String address = request.getParameter("add");
    String email = request.getParameter("email");
    String subject = request.getParameter("sub");
    String complain = request.getParameter("complain");
    String suspect = request.getParameter("suspect");
    String additional = request.getParameter("additional");
    //file 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

    PreparedStatement st = con.prepareStatement("insert into complaintab values(?,?,?,?,?,?,?,?,?,?) ");
    st.setString(1, "1");
    st.setString(2, fname);
    st.setString(3, contact);
    st.setString(4, address);
    st.setString(5, email);
    st.setString(6, subject);
    st.setString(7, complain);
    st.setString(8, suspect);
    st.setString(9, additional);
    st.setString(10, "Pending");
    
st.executeUpdate();
response.sendRedirect("complain.jsp");
        
    }catch(Exception ex){
        ex.printStackTrace();
    }
%>