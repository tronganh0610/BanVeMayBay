<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLIGHTS</title>
        <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/ticked.css">
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/1/14570d0f2b738b8dc8ef903949bce73c.svg">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/searchFlight.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/login.css">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

</head>
<body>
    <div class="main">
        <div class="grid">
            <div class="nav_bav">
                <div class="nav_bar--header">
                    <div>        
                        <img src="http://localhost:8080/PTITHCM/img/icon/bookler.svg" alt="">
                    </div>
                    <div class="nav_bar--menu">
                        <img src="http://localhost:8080/PTITHCM/img/icon/Icon-menu-left.svg" alt="">
                    </div>
                </div>
                <div class="nav_bar--container">
                    <ul class="nav_bar--list">
                        <a href="http://localhost:8080/PTITHCM/" class="Home_link">
                            <li>
                                <div class="img"><img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Icon-Home-Fill.svg" alt="">
                                    </div>
                                <span>Home</span>
                            </li>
                        </a>
                        <a href="" class="Booking_link">
                            <li>
                                <div class="img"><img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Icon-Booking-Fill.svg" alt="">
                                    </div>
                                <span>Booking</span>
                            </li>
                        </a>
                        <a href="" class="Support_link">
                            <li>
                                <div class="img"><img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Icon-Support-Fill.svg" alt="">
                                    </div>
                                <span>Support</span>
                            </li>
                        </a>
                        <a href="http://localhost:8080/PTITHCM/admin/login.htm" class="admin_site--link">
                            <li>
                                <div class="img">
                                    <i class="fas fa-user"></i>
                                    </div>
                                <span>Admin</span>
                            </li>
                        </a>
                        
                    </ul>
                </div>
                <div class="nav_bar--premium">
                    <div class="nav_bar--btn">
                        <div class="nav_bar--premium--img">
                            <img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Logo.svg" alt="">
                        </div>
                        <span class="nav_bar--btn--text">
                            <span>Get Premium</span>
                            <p>$39/m</p>
                        </span>
                        <div class="nav_bar--premium--icon">
                            <img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Icon-Fill-Arrow-Rigt.svg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">

				<div class="over_wrap" style="padding-top: 120px;
    padding-left: 60px;
    padding-bottom: 30px;
    padding-right: 40px;">	
				  
	<form action="detail.htm" method="post">		  		
		<div class="modal__inner">
                <div class="ticked__header">
                      <span>${ticket.plane.airline}</span>
                      <div class="tickedFrom_to">
                          <p>From: ${ticket.plane.departFrom}</p>
                          <p>To: ${ticket.plane.destination}</p>
                      </div>
                </div>

                <div class="ticked__body">
                    <div class="ticked_infor">
                        <div class="infor_passenger">
                            <div class="name">
                                <span>NAME:</span>
                                <p>${cus.fullname }</p>
                            </div>
                            <div class="BoardingTime">
                                <span>Boarding Time:</span>
                                <p>${ticket.plane.times}</p>
                            </div>
                        </div>
                        <div class="infor_flight">
                            <div class="date">
                                <span>DATE</span>
                                <p>${ticket.plane.flighttime}</p>
                            </div>
                            <div class="FlightCode">
                                <span>FLIGHT</span>
                                <p>${ticket.idticket}</p>
                            </div>
                            <div class="gate">
                                <span>PRICE</span>
                                <p>${ticket.prices}</p>
                            </div>

                        </div>
                    </div>
                    <div class="QR_Code">
                        <img src="http://localhost:8080/PTITHCM/img/momo.jpg" alt="">
                    </div>
                </div>

                <div class="ticked__footer">
                   
                </div>
              <button style="position: absolute ;bottom: 0;right: 20px;" class="btn" type ="submit">CONTINUE</button>

            </div>
</form>

						</div>
					</div>
				

				</div>

			</div>
        </div>
    </div>
    <!-- ================ MODAL ================ -->
    <div class="modal">
        <div class="modal__overlay">
            <i class="ti-close close__login"></i>
        </div>
        <div class="modal__body">
            <div class="modal__inner">
                <div class="modal__header">
                    <h3>LOGIN</h3>
                    <span>Register</span>
                </div>

                <div class="modal__form">
                    <div class="modal__form__group">
                        <input type="text" class="modal__form__input" placeholder="Username">
                    </div>
                    <div class="modal__form__group">
                        <input type="password" class="modal__form__input" placeholder="Password">
                    </div>
                </div>

                <div class="modal__form__controls">
                    <button class="btn-login">LOGIN</button>
                </div>

                <div class="modal__help">
                    <a href="#" class="forgot_password">Forgot Password</a>
                    <a href="#" class="need_help">Help?</a>
                </div>

                

            </div>
        </div>
    </div>

<!-- React js -->
<div id="like_button_container">

</div>

    <script src="http://localhost:8080/PTITHCM/accets/login.js"></script>
    <!-- ... other HTML ... -->

  <!-- Load React. -->
  <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
  <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
  <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>

  <!-- Load our React component. -->
  <script src="like_button.js"></script>
  

</body>
</html>