<%@ page import="java.sql.*"%>
<%  
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into trackizer.user(username, password, email) values ("+"\""+ username + "\",\"" + password+ "\",\"" + email+"\")");
    if (i > 0) {
        response.sendRedirect("loginpage.jsp");
        
    } else {
        response.sendRedirect("../index.jsp");
    }
    con.close();
%>