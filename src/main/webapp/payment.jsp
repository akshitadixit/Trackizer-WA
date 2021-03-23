<%@ page import="java.sql.*"%>
<%  
    String bill = request.getParameter("bill");
    String payment = request.getParameter("payment");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into trackizer.orders(bill, payment) values ("+"\"" + bill +"\""+ ","+"\""+ payment+"\")");
    if (i > 0) {
        response.sendRedirect("user-panel.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
    con.close();
%>