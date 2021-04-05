<%@ page import="java.sql.*"%>
<%  
    String username = request.getParameter("username");
    String src = request.getParameter("src");
    String dest = request.getParameter("dest");
    String bill = request.getParameter("bill");
    String payment = request.getParameter("payment");
    String retailer = request.getParameter("retailer");

    if (payment=="0") payment="NA";
    else payment="DONE";

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer","root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into trackizer.orders(username, src, dest, bill, payment, retailer) values ("+"\"" + username +"\""+ ","+"\""+ src + "\",\""+ dest + "\",\"" + bill + "\",\""+ payment+ "\",\""+ retailer+"\")");
    if (i > 0) {
        response.sendRedirect("userpanel.jsp");
        
    } else {
        response.sendRedirect("../index.jsp");
    }
    con.close();
%>