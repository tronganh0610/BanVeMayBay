<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PreBooking</title>
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/FormBooking.css">
    <link href="http://localhost:8080/PTITHCM/accets/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="http://localhost:8080/PTITHCM/accets/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/1/14570d0f2b738b8dc8ef903949bce73c.svg">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/a.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">

<link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/login.css">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/preBookig.css">
</head>
<body>
    <div class="main">
        <div class="user_info">
           
            <div class="btn--cancel user_info--user user_info--user2">
                
                    <i class="ti-shift-left-alt"></i>
    <a href="searchTicket.htm">
    	<span class="user_name ">Cancel</span>
    </a>               

                
            </div>
        </div>
        
        <div class="grid">
            <div class="over_wrap">
                <div class="best_offer ">
                        
                            <!-- ====================ITEMS================== -->
                            <div class="best_offer--item">
                               
                                        <div class="decorator__Hanghangkhong">
                                            <div class="setColor2">
                                                ${ticketss.plane.airline }
                                            </div>
                                        </div>
                                    
                                <h4 class="best_offer--item-name">
                                    ${ticketss.plane.departFrom}
                                </h4>
                                <p class="best_offer--GioKhoihanh">
                                    ${ticketss.plane.times }
                                </p>
                                <div class="decorator">
                                    <div class="decorator_round" style="background-color: black;">

                                    </div>
                                    <div class="decorator_line">
                                        
                                    	</div>
                                    <div class="decorator_round">
										
                                    </div>
                                </div>
                                <h4 class="best_offer--item-name">
                                     ${ticketss.plane.destination }
                                </h4>
                                <p class="best_offer-cost">${ticketss.prices}$</p>
                                <p class="best_offer--date">${ticketss.plane.flighttime }</p>
                            </div>
                            <!-- ============================================== -->
                        
                            
                </div> 
                    
                <div class="booking__container">
                    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
                        <div class="wrapper wrapper--w790">
                            <div>
                                <div class="card-body">
                                    <form:form action="${ticketss.idticket}.htm"  modelAttribute="customer" method="post">
                                        <div class="form-row">
                                            <div class="name">Name</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="text" path="fullname"/>
                                                    <label class="label--desc">Full Name</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Email</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="email" path="email"/>
                                                    <label class="label--desc">Email</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Phone Number</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="number" path="telephone"/>
                                                    <label class="label--desc">Phone Number</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Identity card number</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input class="input--style-5" type="number" name="ids" max="99999999"/>
                                                    <label class="label--desc">CMND/CCCD</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Nationality</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <form:input class="input--style-5" type="text" path="nationality"/>
                                                    <label class="label--desc">Nationality</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="name">Date of birth</div>
                                            <div class="value">
                                                <div class="input-group">
                                                    <input class="input--style-5" type="date" name="abcd">
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row p-t-20">
                                            <label class="label label--block">Do you agree with the price <span>${ticketss.prices }$</span>?</label>
                                            <div class="p-t-15">
                                                <label class="radio-container m-r-55">Instant payment with MoMo
                                                    <input type="radio" checked="checked" name="exist">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <label>
                                                    <img style="width: 170px" src="http://localhost:8080/PTITHCM/img/momo.png" alt="QR CODE">
                                                </label>
                                            </div>
                                        </div>
                                        <div>
                                            <button class="btn btn__Book" type="submit">Continue</button>
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



    <script src="http://localhost:8080/PTITHCM/accets/FormBooking.js"></script>
     <script src="http://localhost:8080/PTITHCM/accets/setColor.js"></script>
    
   
  

</body>
</html>