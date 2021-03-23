<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>


<%
    

    String username = request.getParameter("userid");
    String oldpwd = request.getParameter("oldpass");
    String newpwd = request.getParameter("newpass");
    String cnewpwd = request.getParameter("cnewpass");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");


    PreparedStatement st = con.prepareStatement("select * from adminlogintab where userid=? and pass=?");
    st.setString(1, username);
    st.setString(2,oldpwd);
    ResultSet rs = st.executeQuery();
    if(rs.next()){
        if(newpwd.equals(cnewpwd)){
            PreparedStatement st2 = con.prepareStatement("update adminlogintab set pass=? where userid=?");
            st2.setString(1, newpwd);
            st2.setString(2, username);
            st2.executeUpdate();
       
            //response.sendRedirect("Login.jsp");%>
            <jsp:forward page="Login.jsp"/><%
        }
        else{
            System.out.println("New password does not match.");
        }
    }
    else{
        System.out.println("Invalid Id/Password");
    }
    
%>