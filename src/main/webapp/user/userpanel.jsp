<%@ page import="java.sql.*" %>
    <% 
    String username=request.getParameter("username"); 
    String password=request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer", "root" , "root" ); Statement st=con.createStatement(); 
    %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>User Panel</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!--===============================================================================================-->
            <link rel="icon" type="image/png" href="../images/icons/user.png" />
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="../template/vendor/bootstrap/css/bootstrap.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="../template/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="../template/vendor/animate/animate.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="../template/vendor/css-hamburgers/hamburgers.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="../template/vendor/select2/select2.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="../css/util.css">
            <link rel="stylesheet" type="text/css" href="../css/main.css">
            <!--===============================================================================================-->
        </head>

        <body>

            <div class="limiter">
                <div class="container-login100">
                    <div class="wrap-login100">
                        <span class="login100-form-title">
                            USER PANEL
                        </span>
                        <div style="overflow-x:visible;">
                            <table id="customers">
                                <thead>
                                    <!--heading -->
                                    <tr>
                                        <!--for row-->
                                        <th>TIMESTAMP</th>
                                        <!--column in bold-->
                                        <th>ORDER ID</th>
                                        <th>SRC</th>
                                        <th>DEST</th>
                                        <th>BILL</th>
                                        <th>PAYMENT</th>
                                        <th>RETAILER</th>
                                        <th>STATUS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--body of table-->
                                    <% 
                                        String un=(String)session.getAttribute("username"); 
                                        String sql= "select ts, orderid, src, dest, bill, payment, retailer, id, status from orders ord, track tr where username = '"+un+"' and ord.orderid = tr.id;"; 
                                        ResultSet resultSet=st.executeQuery(sql);
                                        while(resultSet.next())
                                        { 
                                    %>
                                    <tr>
                                        <td>
                                            <%=resultSet.getString("ts") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("orderid") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("src") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("dest") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("bill") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("payment") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("retailer") %>
                                        </td>
                                        <td>
                                            <%=resultSet.getString("status") %>
                                        </td>
                                    </tr>
                                <% 
                                    }
                                    con.close();
                                %>
                                </tbody>
                                <tfoot>
                                    <!--last line of table-->
                                    <td colspan="3">
                                        <!--colspan for combining columns-->
                                        
                                    </td>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>




            <!--===============================================================================================-->
            <script src="../template/vendor/jquery/jquery-3.2.1.min.js"></script>
            <!--===============================================================================================-->
            <script src="../template/vendor/bootstrap/js/popper.js"></script>
            <script src="../template/vendor/bootstrap/js/bootstrap.min.js"></script>
            <!--===============================================================================================-->
            <script src="../template/vendor/select2/select2.min.js"></script>
            <!--===============================================================================================-->
            <script src="../template/vendor/tilt/tilt.jquery.min.js"></script>
            <script>
                $('.js-tilt').tilt({
                    scale: 1.1
                })
            </script>
            <!--===============================================================================================-->
            <script src="../js/main.js"></script>

        </body>

        </html>