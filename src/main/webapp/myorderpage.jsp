<!DOCTYPE html>
<html lang="en">
    <head>    
      <meta charset="UTF-8">
      <title>My Orders</title>
      <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="cutomstyle.css" media="screen" type="text/css" />
    </head>
    <body>
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">
       <div class="row custom-nav">
          <div class="col-md-3 aa">
             <div class="h-left-con">
             </div>
          </div>
          <div class="col-md-7 aa">
             <div class="h-center-con">
                <div class="col-md-4">
                   <i class="fa fa-search"></i><input type="text" placeholder="Search" />
                </div>
             </div>
          </div>
          <div class="col-md-2 aa">
             <div class="h-right-con">
                <ul>
                   <li>
                      <i class="fa fa-th" style="color:#d9696a;"></i>
                   </li>
                   <li>
                      <i class="fa fa-bar-chart-o" style="color:#666;"></i>
                   </li>
                   <li>
                      <i class="fa fa-bell-o"></i>
                   </li>
                </ul>
             </div>
          </div>
       </div>
       <div class="row bottom-nav">
          <div class="col-md-12">
             <div class="nav-con">
                <ul>
                   <li>
                      <i class="fa fa-users"></i>
                      <h4>MEMBERS</h4>
                   </li>
                   <li>
                      <i class="fa fa-truck" ></i>
                      <h4>PRODUCT</h4>
                   </li>
                   <li>
                      <i class="fa fa-umbrella" ></i>
                      <h4>ORDER</h4>
                   </li>
                   <li>
                      <i class="fa fa-shopping-cart" ></i>
                      <h4>SHOPPING</h4>
                   </li>
                   <li>
                      <i class="fa fa-gears" ></i>
                      <h4>SETTING</h4>
                   </li>
                </ul>
             </div>
          </div>
       </div>
      <div class="row quick-bar">
        <div class="col-md-2">
            <input type="text"/> <div class="search-btn">Search</div>
        </div>
         <div class="col-md-2">
          
        </div> 
      </div>
       <div class="row content">
          <div class="col-md-12">
             <table class="table table-bordered no-more-tables">
                <thead>
                   <tr>
                      <th class="text-center" width="5%">TIMESTAMP</th>
                      <th class="text-center" width="12%">ORDER ID</th>
                      <th class="text-center" width="8%">SOURCE</th>
                      <th class="text-center" width="7%">DESTINATION</th>
                      <th class="text-center" width="7%">BILL</th>
                      <th class="text-center" width="4%">PAYMENT</th>
                      <th class="text-center" width="4%">STATUS</th>
                   </tr>
                </thead>
                <tbody>
                   <tr>
                      <td class="text-center">01/01/2020 13:00:54</td>
                      <td class="text-center">23456</td>
                      <td class="text-center">England</td>
                      <td class="text-center">India</td>
                      <td class="text-center">3452</td>
                      <td class="text-center">Done</td>
                      <td class="text-center"><a>Track</a>></td>
                   </tr>
                   <tr>
                      <td class="text-center">12/04/2021 04:23:09</td>
                      <td class="text-center">23456</td>
                      <td class="text-center">Pakistan</td>
                      <td class="text-center">Syria</td>
                      <td class="text-center">9568</td>
                      <td class="text-center">NA</td>
                      <td class="text-center"><a>Make payment</a></td>
                   </tr>
                </tbody>
             </table>
          </div>
       </div>
    </div>
    </body>    
</html>