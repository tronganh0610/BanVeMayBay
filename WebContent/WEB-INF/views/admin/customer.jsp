<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
 	<base href="${pageContext.servletContext.contextPath}/"> 
 	 <style>
 		.a12{
 			display:flex;
 		}
 		.a1{
 		padding:10px;
 		}
		
 	</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/adminsite.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/fonts/themify-icons/themify-icons.css">
  	<link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/2206/2206368.png">
</head>
<body>
    <div class="main">
        <div class="user_info">
           
                <div class="user_info--user user_info--user2">
                    
                        <img style="border-radius:50%" src="http://localhost:8080/PTITHCM/img/user/user-avas.png" alt="">
                    <c:forEach var = "s" items = "${staffs}">
                    	<span class="user_name">${s.name}</span>
                    </c:forEach>
                    <div class="arrow arrow2">
                        <img src="http://localhost:8080/PTITHCM/img/user/Icon-Arrow-Down.svg" alt="">
                    </div>
	                <div class="arrow arrow2 user--subnav">
	                    <ul style="margin-bottom: 0rem">
	                        <a href="admin/logout.htm">
	                            <li> 
	                                LOG OUT
	                            </li>
	                        </a>
	                    </ul>
	                </div>
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
                
                    
                        <a href="	" class="Tickets_link">
                            <li>
                                <div class="img" style="width: 20px">
                                    <img src="http://localhost:8080/PTITHCM/img/icon/icon-card/Icon-Stay-Villa.png" alt="">
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
                <div class="container">
                    <div class="best_offer data">
                          <table class="table table-hover">
							  <thead class="thead-light">
							    <tr>
							      <th scope="col">ID</th>
							      <th scope="col">NAME</th>
							      <th scope="col">EMAIL</th>
							      <th scope="col">PHONE</th>
							      <th scope="col">BIRTHDAY</th>
							      <th scope="col">NATIONALITY</th>
						
							    </tr>
							  </thead>
							  <tbody>
							   <c:forEach var = "a" items = "${cus}">
							    <tr>
                                <th scope="row">${a.idcard}</th>
                                <td>${a.fullname}</td>
                                <td>${a.email}</td>
                                <td>0${a.telephone}</td>
                                <td>${a.birthday }</td>
                                <td>${a.nationality}</td>
							    </tr>
							  </c:forEach>
							  </tbody>
						</table>
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
	                <!-- <div class="modal__header">
	                    <h3>LOGIN</h3>
	                    <span>Register</span>
	                </div> -->
		
	         
	    
	            </div>

	        </div>
	    	</div>

<script src="http://localhost:8080/PTITHCM/accets/admin_site.js"></script>

</body>
</html>