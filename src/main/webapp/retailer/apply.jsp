<%@ page import="java.sql.*"%>
<%  
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String reason = request.getParameter("reason");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into trackizer.application(username, password, email, reason) values ("+"\""+ username + "\",\"" + password+ "\",\"" + email+ "\",\"" + reason+"\")");
    if (i > 0) {
        response.sendRedirect("info.jsp");
        
    } else {
        response.sendRedirect("../index.jsp");
    }
    con.close();
%>