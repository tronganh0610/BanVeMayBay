<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail</title>
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/main.css">
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/retrieve.css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/fonts/themify-icons/themify-icons.css">
  <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   
</head>
<body>
    <div class="main">
       

        <div class="grid">
            <div class="nav_bav">
                <ul class="nav_bar--list">
                        <a href="" class="Home_link">
                            <li>
                                <div class="img"><img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Icon-Home-Fill.svg" alt="">
                                    </div>
                                <span>Home</span>
                            </li>
                        </a>
                        <a href="searchTicket.htm" class="Booking_link">
                            <li>
                                <div class="img"><img src="http://localhost:8080/PTITHCM/img/icon/icon-navbar/Icon-Booking-Fill.svg" alt="">
                                    </div>
                                <span>Booking</span>
                            </li>
                        </a>
                        <a href="customer/sp.htm" class="Support_link">
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
                <div class="container">
                    <div class="best_offer data">
                        <h3>Restoration of flight tickets</h3>
                        <form action="spt.htm" method="post">
                          <div class="form-row">
                            <div class="name">Your identity card number</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="idcard" max="99999999"/>
                                    
                                </div>
                            </div>
                        </div>
                        <button type ="submit"class="btn_add_tour">SUBMIT</button>
                        </form>

                        
                          <table class="table table-hover">
							  <thead class="thead-light">
							    <tr>
							      <th scope="col">ID</th>
							      <th scope="col">NAME</th>
							      <th scope="col">EMAIL</th>
							      <th scope="col">PHONE</th>
							      <th scope="col">ID TICKET</th>
							      <th scope="col">FLIGHTIME</th>
						
							    </tr>
							  </thead>
							  <tbody>
							    <tr>
                                <th scope="row">${detail.customer.idcard}</th>
                                <td>${detail.customer.fullname}</td>
                                <td>${detail.customer.email}</td>
                                <td>${detail.customer.telephone}</td>
                                <td>${detail.ticket.idticket}</td>
                                <td>${detail.ticket.plane.flighttime}</td>
							    </tr>
							  </tbody>
						</table>
  
                    </div>
                </div>
        </div>
    </div>

<script src="http://localhost:8080/PTITHCM/accets/admin_site.js"></script>
</body>
</html>