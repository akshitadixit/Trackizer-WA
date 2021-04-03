<%@ page import="java.sql.*" %>
    <% 
    String username=request.getParameter("username"); 
    String password=request.getParameter("password");
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trackizer", "root" , "root" ); Statement st=con.createStatement(); 
    %>

    <!DOCTYPE html>
    <html lang="en">
<head><title>Admin Panel</title></head>
<link rel="icon" type="image/png" href="../images/icons/user.png"/>
<link rel="stylesheet" href="../css/admin.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<body>
   <div id="menu-overlay"></div>
   <div id="menu-toggle" class="closed" data-title="Menu">
       <i class="fa fa-bars"></i>
       <i class="fa fa-times"></i>
     </div>
   <header id="main-header">
     <nav id="sidenav">
       <div id="sidenav-header">
         <div id="profile-picture">
            <img src="../images/admin-logo.png"/>
         </div>
         <a href="#" id="profile-link">Admin Panel</a>
       </div>
       
       <ul id="main-nav">
         <li class="active" id="content">
           <a href="#">
             <i class="fa fa-tachometer"></i>
             Dashboard
           </a>
         </li>
         <li>
           <a href="#tasks">
             <i class="fa fa-check-square-o"></i>
             Tasks
           </a>
         </li>
         <li>
           <a href="#">
             <i class="fa fa-user"></i>
             Contacts
           </a>
         </li>
         <li>
           <a href="#">
             <i class="fa fa-calendar"></i>
             Calendar
           </a>
         </li>
         <li>
           <a href="#">
             <i class="fa fa-life-ring"></i>
             FAQs
           </a>
         </li>
       </ul>
     </nav>
     <div id="header_logo">
       <span>TRACKIZER</span>
     </div>
   </header>
   <section id="content" class="nav-target">
     <nav id="tabs">
       <ul>
         <li class="active" data-target="knowledge">Users</li>
         <li data-target="activity">Retailers</li>
         <li data-target="friends">Orders</li>
       </ul>
     </nav>
     <div class="tab-target targeted" id="knowledge">
       <div style="overflow-x:visible;">
            <table class="customtable">
                <thead>
                    <!--heading -->
                    <tr>
                        <!--for row
                        <th>TIMESTAMP</th>-->
                        <!--column in bold-->
                        <th>REG. NO.</th>
                        <th>USERNAME</th>
                        <th>PASSWORD</th>
                        <th>E-MAIL</th>
                        <th>ORDERS</th>
                    </tr>
                </thead>
                <tbody>
                    <!--body of table-->
                    <% 
                        String sql= "select regno, username, password, email from user;"; 
                        ResultSet resultSet=st.executeQuery(sql);
                        while(resultSet.next())
                        { 
                    %>
                    <tr>
                        <td>
                            <%=resultSet.getString("regno") %>
                        </td>
                        <td>
                            <%=resultSet.getString("username")%>
                        </td>
                        <td>
                            <%=resultSet.getString("password") %>
                        </td>
                        <td>
                          <%=resultSet.getString("email") %>
                      </td>
                        <!---
                            sql = "select count(username) from orders where orders.username='"+un+"';";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {
                        --->
                        <td>
                            8
                        </td>
                    </tr>
                <% 
                    }
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
     <div class="tab-target" id="activity">
      <div style="overflow-x:visible;">
        <table class="customtable">
            <thead>
                <!--heading -->
                <tr>
                    <!--for row
                    <th>TIMESTAMP</th>-->
                    <!--column in bold-->
                    <th>REG. NO.</th>
                    <th>USERNAME</th>
                    <th>PASSWORD</th>
                    <th>E-MAIL</th>
                    <th>ORDERS</th>
                </tr>
            </thead>
            <tbody>
                <!--body of table-->
                <% 
                    sql= "select regno, username, password, email from retailer;"; 
                    resultSet=st.executeQuery(sql);
                    while(resultSet.next())
                    { 
                %>
                <tr>
                    <td>
                        <%=resultSet.getString("regno") %>
                    </td>
                    <td>
                        <%=resultSet.getString("username")%>
                    </td>
                    <td>
                        <%=resultSet.getString("password") %>
                    </td>
                    <td>
                      <%=resultSet.getString("email") %>
                  </td>
                    <!---
                        sql = "select count(username) from orders where orders.username='"+un+"';";
                        ResultSet rs=st.executeQuery(sql);
                        while(rs.next())
                        {
                    --->
                    <td>
                        8
                    </td>
                </tr>
            <% 
                }
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
     <div class="tab-target" id="friends">
        <div style="overflow-x:visible;">
            <table class="customtable">
                <thead>
                    <!--heading -->
                    <tr>
                        <!--for row-->
                        <th>TIMESTAMP</th>
                        <!--column in bold-->
                        <th>ORDER ID</th>
                        <th>USERNAME</th>
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
                        sql= "select ts, orderid, username, src, dest, bill, payment, retailer, id, status from orders ord, track tr where ord.orderid = tr.id;"; 
                        resultSet=st.executeQuery(sql);
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
                            <%=resultSet.getString("username") %>
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
    </section>

   <footer></footer>
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
   <script src="../js/admin.js"></script>
   </body>
   </html>