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
response.sendRedirect("Viewcomplain.jsp");
%>