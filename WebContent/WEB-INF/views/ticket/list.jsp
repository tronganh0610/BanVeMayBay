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
	.best_offer--items{
		    display: flex;
		    justify-content: flex-start;
		    height: 75.5px;
		    width: 1010px;
		    font-size: 18px;
		    font-weight: 700;
		    line-height: 52px;
	}
	.best_offer--item-name {
    width: 216px;
    align-items: center;
    text-align: center;
    display: flex;
    justify-content: space-around;
}
	.best_offer--date {
    width: 230px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
 	</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TICKET</title>
    
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/adminsite.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/fonts/themify-icons/themify-icons.css">
  	<link id="ctl00_favicon" rel="shortcut icon" type="image/x-icon" href="https://cdn-icons-png.flaticon.com/512/2206/2206368.png">
</head>
<body>
    <div class="main">

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
                                <div class="img" style="width: 20px">
                                    <img src="http://localhost:8080/PTITHCM/img/icon/icon-card/Icon-Stay-Villa.png" alt="">
                                </div>
                                <span>HOME</span>
                            </li>
                        </a>
                        <a href="admin/index.htm" class="Tickets_link">
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
                                        <div class="best_offer ">
                            
                                <!-- ====================ITEMS================== -->
                          <%--   <c:forEach var = "s" items = "${planelist}"> --%>
                          <table class="table table-hover">
							  <thead class="thead-light">
							    <tr>
							      <th scope="col">ID PLANE</th>
							      <th scope="col">ID </th>
							      <th scope="col">TYPE</th>
							      <th scope="col">PRICES</th>
							      <th scope="col">STATUS</th>
							      <th scope="col">DISCOUNT</th>
							    </tr>
							  </thead>
							  <tbody>
   					   <c:forEach var = "b" items = "${tickets}">
							    <tr>
							    <th scope="row">${b.plane.idplane}</th>
                                <th scope="row">${b.idticket}</th>
                             <c:choose>
								<c:when test="${b.typeticket ==true}">
									<td>BUSINESS CLASS</td>
								</c:when>
								<c:when test="${b.typeticket ==false}">
									<td>ECONOMY CLASS</td>
								</c:when>
							</c:choose>
                                <td>${b.prices}$</td>
                            <c:choose>
								<c:when test="${b.stt ==true}">
									<td>UNSOLD</td>
								</c:when>
								<c:when test="${b.stt ==false}">
									<td>SOLD</td>
								</c:when>
							</c:choose>
								<th>${b.discount}%</th>
       
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