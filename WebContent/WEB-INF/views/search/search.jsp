<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLIGHTS</title>
    <link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/1/14570d0f2b738b8dc8ef903949bce73c.svg">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/search.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./accets/login.css">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

</head>
<body>
    <div class="main">
        <div class="grid">
            <div class="nav_bav">
                <div class="nav_bar--header">
                    <div>        
                        <img src="./img/icon/bookler.svg" alt="">
                    </div>
                    <div class="nav_bar--menu">
                        <img src="./img/icon/Icon-menu-left.svg" alt="">
                    </div>
                </div>
                <div class="nav_bar--container">
                    <ul class="nav_bar--list">
                        <a href="http://localhost:8080/PTITHCM/" class="Home_link">
                            <li>
                                <div class="img"><img src="./img/icon/icon-navbar/Icon-Home-Fill.svg" alt="">
                                    </div>
                                <span>Home</span>
                            </li>
                        </a>
                        <a href="" class="Booking_link">
                            <li>
                                <div class="img"><img src="./img/icon/icon-navbar/Icon-Booking-Fill.svg" alt="">
                                    </div>
                                <span>Booking</span>
                            </li>
                        </a>
                        <a href="spt.htm" class="Support_link">
                            <li>
                                <div class="img"><img src="./img/icon/icon-navbar/Icon-Support-Fill.svg" alt="">
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
                            <img src="./img/icon/icon-navbar/Logo.svg" alt="">
                        </div>
                        <span class="nav_bar--btn--text">
                            <span>Get Premium</span>
                            <p>$39/m</p>
                        </span>
                        <div class="nav_bar--premium--icon">
                            <img src="./img/icon/icon-navbar/Icon-Fill-Arrow-Rigt.svg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
               <form action="searchTicket.htm" method="post">
                <div class="search_flights">
                    <div class="places">
                        <div class="from">
                            <div class="places__title">
                                <img src="./img/icon/icon-flight_search/Icon-Location-Placeholder.png" alt="" class="icon">
                                <p>FROM</p>
                            </div>
                                                <select name="departFrom">
				                                    <option>DAK LAK</option>
				                                    <option>NGHE AN</option>
				                                    <option>HA NOI</option>
				                                    <option>HAN QUOC</option>
				                                    <option>PHU QUOC</option>
				                                    <option>QUANG BINH</option>
				                                    <option>DA LAT</option>  
				                                    <option>DA NANG</option> 
				                                    <option>KHANH HOA</option> 
				                                    <option>CAN THO</option>
				                                    <option>KON TUM</option>
				                                    <option>HO CHI MINH</option>
				                                </select>
                                    
        
                        </div>

                        <div class="to">
                            <div class="places__title">
                                <img src="./img/icon/icon-flight_search/Icon-Location-Placeholder.png" alt="" class="icon">
                                <p>T0</p>
                            </div>
                                               <select name="destination">
				                                    <option>DAK LAK</option>
				                                    <option>NGHE AN</option>
				                                    <option>HA NOI</option>
				                                    <option>HAN QUOC</option>
				                                    <option>PHU QUOC</option>
				                                    <option>QUANG BINH</option>
				                                    <option>DA LAT</option>  
				                                    <option>DA NANG</option> 
				                                    <option>KHANH HOA</option> 
				                                    <option>CAN THO</option>
				                                    <option>KON TUM</option>
				                                    <option>HO CHI MINH</option>
				                                </select>
                        </div>
                        <div class="class">
                            <div class="places__title">
                                <img src="./img/icon/icon-flight_search/Icon-class-Seat.png" alt="" class="icon">
                                <p>CLASS</p>
                            </div>
                            <select name="typeTicket" >
                                <option>Business</option>
                                <option>Economy</option>
                            </select>
                        </div>
                    </div>
                    <div class="flight_date">
                        <div class="select_date">
                            <div class="places__title">
                                <div>
                                    <img src="./img/icon/icon-flight_search/Icon-calendar-fill.png" alt="">
                                </div>
                                <p>DEPARTURE</p>
                                <img src="./img/icon/icon-flight_search/Icon-Arrow-top.png" alt="">
                            </div>
                            <input type="date" value="${a}" min="${a}" name="abc">
                        </div>	
                        
                    </div>
                    <button type="submit" class="btn">SEARCH FLIGHT</button>
                </div>
               </form>

				<div class="over_wrap" style="padding-left: 60px; padding-bottom: 30px;">	
				  
				  		
					<div class="best_offer" style="margin-right: 55px;">
						<div class="list__best_offer">
							<!-- ====================ITEMS================== -->
							<c:forEach var = "a" items = "${ticketsss}">
							<div class="best_offer--items">
								<div class="best_offer--item-nameflight">
									<div class="setColor">${a.plane.airline}</div>
								</div>
								<h4 class="best_offer--item-name">${a.plane.departFrom}</h4>
								<p class="best_offer--GioKhoihanh">${a.plane.times}</p>
								<div class="decorator">
									<div class="decorator_round" style="background-color: black;">
											
									</div>
									<div class="decorator_line">
										<div class="decorator__Hanghangkhong">
											
										</div>
									</div>
									<div class="decorator_round"></div>
								</div>
								<h4 class="best_offer--item-name">${a.plane.destination }</h4>
								<p class="best_offer-cost">${a.prices }$</p>
								<p class="best_offer--date">${a.plane.flighttime}</p>
								<div class="best_offer-btn">
								<a href="${a.idticket}.htm">
									<p>Book Now</p>
								</a>
									
									<i class="ti-angle-double-right"></i>
								</div>
							</div>
							</c:forEach>


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




    <script src="./accets/login.js"></script>
 	<script src="http://localhost:8080/PTITHCM/accets/setColor.js"></script>
  

</body>
</html>