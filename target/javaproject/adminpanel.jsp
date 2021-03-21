
<html>

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
                   <em class="fa fa-search"></i><input type="text" placeholder="Search" />
                </div>
             </div>
          </div>
          <div class="col-md-2 aa">
             <div class="h-right-con">
                <ul>
                   <li>
                      <em class="fa fa-th" style="color:#d9696a;"></em>
                   </li>
                   <li>
                      <em class="fa fa-bar-chart-o" style="color:#666;"></em>
                   </li>
                   <li>
                      <em class="fa fa-bell-o"></em>
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
                      <em class="fa fa-users"></em>
                      <h4>MEMBERS</h4>
                   </li>
                   <li>
                      <em class="fa fa-truck" ></em>
                      <h4>PRODUCT</h4>
                   </li>
                   <li>
                      <em class="fa fa-umbrella" ></em>
                      <h4>ORDER</h4>
                   </li>
                   <li>
                      <em class="fa fa-shopping-cart" ></em>
                      <h4>SHOPPING</h4>
                   </li>
                   <li>
                      <em class="fa fa-gears" ></em>
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
                      <th class="text-center" width="5%">ISLEM TARİHİ</th>
                      <th class="text-center" width="12%">BAŞLANGIC VE BITIS TARİHİ</th>
                      <th class="text-center" width="8%">ÜYELİK TİPİ</th>
                      <th class="text-center" width="7%">ÖDENEN MİKTAR</th>
                      <th class="text-center" width="7%">KALAN MİKTAR</th>
                      <th class="text-center" width="4%">Graph</th>
                   </tr>
                </thead>
                <tbody>
                   <tr>
                      <td class="text-center">January</td>
                      <td class="text-center">$ 50,000.00</td>
                      <td class="text-center">$ 50,000.00</td>
                      <td class="text-center">$ 50,000.00</td>
                      <td class="text-center">
                         <div class="sparklines" sparktype="bar" sparkbarcolor="#0aa699" values="4,5,6,3,6,4,1"></div>
                      </td>
                      <td class="text-center">
                         <div class="sparklines" sparktype="bar" sparkbarcolor="#0aa699" values="4,5,6,3,6,4,1"></div>
                      </td>
                   </tr>
                   <tr>
                      <td class="text-center">January</td>
                      <td class="text-center">$ 50,000.00</td>
                      <td class="text-center">$ 50,000.00</td>
                      <td class="text-center">$ 50,000.00</td>
                      <td class="text-center">
                         <div class="sparklines" sparktype="bar" sparkbarcolor="#0aa699" values="4,5,6,3,6,4,1"></div>
                      </td>
                      <td class="text-center">
                         <div class="sparklines" sparktype="bar" sparkbarcolor="#0aa699" values="4,5,6,3,6,4,1"></div>
                      </td>
                   </tr>
                </tbody>
             </table>
          </div>
       </div>
    </div>
    
    </body>
    
    </html>