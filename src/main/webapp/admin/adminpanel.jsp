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
           <a href="adminpanel.jsp">
             <i class="fa fa-tachometer"></i>
             Dashboard
           </a>
         </li>
         <li>
           <a href="#calendar">
             <i class="fa fa-calendar"></i>
             Calendar
           </a>
         </li>
         <li>
           <a href="approveretailer.jsp">
             <i class="fa fa-life-ring"></i>
             Approve Retailers
           </a>
         </li>
         <li>
            <a href="#">
              <i class="fa fa-life-ring"></i>
              Customisation
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
         <li class="active" data-target="friends">Orders</li>
         <li data-target="knowledge">Users</li>
         <li data-target="activity">Retailers</li>
         <li data-target="appl">Retailer Applications</li>
        <li data-target="accs">Accounts and Billing</li>
       </ul>
     </nav>
     <div class="tab-target " id="knowledge">
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
     <div class="tab-target targeted" id="friends">
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
     <div class="tab-target" id="appl">
        <div style="overflow-x:visible;" style="margin-left: 20%;">
            <table class="customtable">
                <thead>
                    <!--heading -->
                    <tr>
                        <th>APPL. NO.</th>
                        <th>USERNAME</th>
                        <th>PASSWORD</th>
                        <th>E-MAIL</th>
                        <th>REASON</th>
                    </tr>
                </thead>
                <tbody>
                    <!--body of table-->
                    <% 
                        sql= "select appno, username, password, email, reason from trackizer.application;";
                        resultSet=st.executeQuery(sql);
                        while(resultSet.next())
                        { 
                    %>
                    <tr>
                        <td>
                            <%=resultSet.getString("appno") %>
                        </td>
                        <td>
                            <%=resultSet.getString("username") %>
                        </td>
                        <td>
                            <%=resultSet.getString("password") %>
                        </td>
                        <td>
                            <%=resultSet.getString("email") %>
                        </td>
                        <td>
                            <%=resultSet.getString("reason") %>
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
    <div class="tab-target" id="accs">
        <div style="overflow-x:visible;">
            <table class="customtable">
                <thead>
                    <!--heading -->
                    <tr>
                        <th>RETAILER</th>
                        <th>TOTAL AMOUNT</th>
                    </tr>
                </thead>
                <tbody>
                    <!--body of table-->
                    <%
                        sql= "select retailer, sum(bill) from orders group by retailer;";
                        resultSet=st.executeQuery(sql);
                        while(resultSet.next())
                        { 
                    %>
                    <tr>
                        <td>
                            <%=resultSet.getString("retailer") %>
                        </td>
                        <td>
                            <%=resultSet.getString("sum(bill)") %>
                        </td>
                    </tr>
                <% 
                    }
                %>
                    <tr>
                    <% 
                        sql= "select sum(bill) from orders;";
                        resultSet=st.executeQuery(sql);
                        while(resultSet.next())
                        { 
                    %>
                        <td>
                            <b>TOTAL</b>
                        </td>
                        <td>
                            <%=resultSet.getString(1)%>
                        </td>
                    </tr>
                    <% }
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

    <section id="calendar" class="nav-target" style="margin-left: 20%; margin-top: 20%;">

        <center><iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%234285F4&amp;ctz=Asia%2FKolkata&amp;src=NDM2X2J0MTlAaWlpdGthbHlhbmkuYWMuaW4&amp;src=YWRkcmVzc2Jvb2sjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&amp;src=aWlpdGthbHlhbmkuYWMuaW5fY2xhc3Nyb29tM2VjNjM1MmJAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=aWlpdGthbHlhbmkuYWMuaW5fY2xhc3Nyb29tZWQ4MjdhNjJAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=Y19jbGFzc3Jvb20zYWI3MTZjNEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&amp;src=aWlpdGthbHlhbmkuYWMuaW5fY2xhc3Nyb29tNWQ3MjYwZjFAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=Y19jbGFzc3Jvb21iNjBhZTZiZUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&amp;src=Y19jbGFzc3Jvb20wNzMxNzIxNUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&amp;src=Y19jbGFzc3Jvb20wMGFjZDAyOEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&amp;color=%23039BE5&amp;color=%2333B679&amp;color=%230047a8&amp;color=%237627bb&amp;color=%23202124&amp;color=%230047a8&amp;color=%23202124&amp;color=%238E24AA&amp;color=%23b80672&amp;showPrint=0&amp;title=Admin%20Calendar" style=border:solid 1px #777 width="800" height="600" frameborder="0" scrolling="no" margin-top: 10%></iframe></center>
      </section>

   <footer></footer>
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
   <script src="../js/admin.js"></script>
   <script src="../js/main.js"></script>
   </body>
   </html>