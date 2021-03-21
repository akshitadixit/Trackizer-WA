<!DOCTYPE html>
<html lang="en">
    <head>    
      <meta charset="UTF-8">
      <title>Admin Panel</title>
      <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="adminstyle.css" media="screen" type="text/css" />
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
            <input type="text" placeholder="Üye adı, Numarası"/> <div class="search-btn">Ara</div>
        </div>
         <div class="col-md-2">
          
        </div> 
      </div>
       <div class="row content">
          <div class="col-md-12">
             <table class="table table-bordered no-more-tables">
                <thead>
                   <tr>
                      <th class="text-center" width="5%">REG. NO.</th>
                      <th class="text-center" width="12%">USERNAME</th>
                      <th class="text-center" width="8%">ORDER NO.</th>
                      <th class="text-center" width="7%">DATE</th>
                      <th class="text-center" width="7%">STATUS</th>
                      <th class="text-center" width="4%">ACTIONS</th>
                   </tr>
                </thead>
                <tbody>
                   <tr>
                      <td class="text-center">43847</td>
                      <td class="text-center">User1</td>
                      <td class="text-center">p48tfh84</td>
                      <td class="text-center">01/01/2020</td>
                      <td class="text-center">Dispatched</td>
                      <td class="text-center">.....</td>
                   </tr>
                   <tr>
                    <td class="text-center">68375</td>
                    <td class="text-center">User2</td>
                    <td class="text-center">d8h329ryb</td>
                    <td class="text-center">12/02/1987</td>
                    <td class="text-center">Reached checkpt. 1</td>
                    <td class="text-center">.....</td>
                   </tr>
                </tbody>
             </table>
          </div>
       </div>
    </div>
    </body>    
</html>