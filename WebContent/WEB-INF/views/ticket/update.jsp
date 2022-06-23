<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Ticket</title>
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/FormBooking.css">
    <link href="http://localhost:8080/PTITHCM/accets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="http://localhost:8080/PTITHCM/accets/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/1/14570d0f2b738b8dc8ef903949bce73c.svg">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="http://localhost:8080/PTITHCM/fonts/themify-icons/themify-icons.css">
<link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/login.css">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/preBookig.css">
<link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/addTicket.css">
<style>
    input[type=number]::-webkit-inner-spin-button, 
    input[type=number]::-webkit-outer-spin-button { 
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        margin: 0; 
    }
</style>
</head>
<body>
    <div class="main">
        <div class="user_info">
           
            <div class="btn--cancel user_info--user user_info--user2">
                
                    <i class="ti-shift-left-alt"></i>
                   
                <span class="user_name ">Cancel</span>
                
            </div>
        </div>
        
        <div class="grid">
            <div class="nav_bav">
                <ul class="nav_bar--list">
                        <li>
                            <div class="img">
                                <i class="fas fa-user"></i>
                                </div>
                                <a href="/PTITHCM/admin/index.htm">
                                  <span>Admin</span>
                                </a>
                          
                        </li>	
                        <a href="" class="Tickets_link">
                            <li>
                                <div class="img">
                                    <img style="width: 20px" src="http://localhost:8080/PTITHCM/img/icon/icon-card/Icon-Stay-Villa.png" alt="">
                                    </div>
                                <span>HOME</span>
                            </li>
                        </a>
                       <a href="admin/ticket.htm" class="Tickets_link">
                            <li>
                                <div class="img" style="width: 20px">
                                    <img src="http://localhost:8080/PTITHCM/img/icon/icon-flight_search/Icon-Options-3Dots.png" alt="">
                                </div>
                                <span>Ticket List</span>
                            </li>
                        </a>
              			<a href="admin/customer.htm" class="Tickets_link">
                            <li>
                                <div class="img" style="width: 20px">
                                    <img src="http://localhost:8080/PTITHCM/img/icon/icon-flight_search/Icon-Options-3Dots.png" alt="">
                                </div>
                                <span>Customer</span>
                            </li>
                        </a>
                    </ul>
            </div>
            <div class="over_wrap">
                <div class="best_offer ">
                        
                            <!-- ====================ITEMS================== -->
                            <div class="best_offer--item">
                                <div style="color: #73b860"  class="">
                                     ${planes.airline }
                                </div>
                                <h4 class="best_offer--item-name">
                                    ${planes.departFrom}
                                </h4>
                                <p class="best_offer--GioKhoihanh">
                                     
                                </p>
                                <div class="decorator">
                                    <div class="decorator_round" style="background-color: black;">

                                    </div>
                                    <div class="decorator_line">
                                        <div class="decorator__Hanghangkhong">
                     
                                        </div>
                                    </div>
                                    <div class="decorator_round">

                                    </div>
                                </div>
                                <h4 class="best_offer--item-name">
                                     ${planes.destination}
                                </h4>
                                <p class="best_offer-cost">${planes.times}</p>
                                <p class="best_offer--date">${planes.flighttime}	</p>
                            </div>
                            <!-- ============================================== -->
                        
                            
                </div> 
                    
                <div class="booking__container">
                    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
                        <div class="wrapper wrapper--w790">
                            <div>
                                <div class="card-body">
                                    <form:form action="updateTicket.htm"  modelAttribute="ticketss" method="post" >
                                        
                                        <div class="form-row">
                                            <div class="name">ID</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="text" 	path="idticket" required="required"/>
                                                    <label class="label--desc">ID Ticket</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row p-t-20">
                                            <label class="label label--block name">Type Ticket</label>
                                            <div class="">
                                                <label class="radio-container m-r-55">Economy
                                                    <input type="radio" checked="checked" name="typeTicket" value="0">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <label class="radio-container m-r-55">Business
                                                    <input type="radio" checked="checked" name="typeTicket" value="1">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Price</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="number" min="25" max="10000" path="prices" require="required"/>
                                                    <label class="label--desc">Price Ticket</label>
                                                </div>
                                            </div>
                                        </div>
                                      
                                        <div class="form-row">
                                            <div class="name">DISCOUNT</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="number" min="0" max="99" path="discount" required="required"/>
                                                    <label class="label--desc">DISCOUNT</label>
                                                </div>
                                            </div>
                                        </div>
                                        <h4 id="baoloi" style="color: red"></h4>
                                        <div>
                                            <button type="submit" class="btn btn-primary mb-3">UPDATE</button>
                                        </div>
                                        
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>

<!-- React js -->

    <script src="http://localhost:8080/PTITHCM/accets/FormBooking.js"></script>
    <script>
       
        </script>
    <!-- ... other HTML ... -->

  <!-- Load React. -->
  <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
  
  

</body>
</html>