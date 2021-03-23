<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>


<%
        String Rid = request.getParameter("newids");
        String Rpwd = request.getParameter("newpassword");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

            PreparedStatement st = con.prepareStatement("insert into userlogintab values (?,?)");
            st.setString(1,Rid);
            st.setString(2,Rpwd);

            st.executeUpdate();
        response.sendRedirect("Home.jsp");
%>
