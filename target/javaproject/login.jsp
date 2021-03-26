<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%
    String username = request.getParameter("username");   
    String password = request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from user where username=" + "\"" + username + "\" " + "and password=" + "\"" + password + "\"" );
    if (rs.next()) {
        session.setAttribute("username", username);
        response.sendRedirect("userpanel.jsp");
    } else {
        out.println("Invalid password <a href='loginpage.jsp'>try again</a>");
    }
%>