  <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>UPDATE</title>
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
     <base href="${pageContext.servletContext.contextPath}/"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="http://localhost:8080/PTITHCM/accets/preBookig.css">
    </head>
    <body>
        <div class="main">
            <div class="user_info">
            
                <div class="btn--cancel user_info--user user_info--user2">
                    
                        <i class="ti-shift-left-alt"></i>
                    <a href="index.htm">
                     	<span class="user_name ">Cancel</span>
                    </a>
                   
                    
                </div>
            </div>
            
            <div class="grid">
                <div class="over_wrap">
                    <div class="best_offer ">
                            
                                <!-- ====================ITEMS================== -->
                          <%--   <c:forEach var = "s" items = "${planelist}"> --%>
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
<%--                             </c:forEach> --%>
                                <!-- ============================================== -->
                            
                                
                    </div> 
                        
                    <div class="booking__container">
                        <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
                            <div class="wrapper wrapper--w790">
                                <div>
                                    <div class="card-body">
                                     	<form:form action="admin/update.htm" modelAttribute="planes" method="post">
                                          
                                            <div class="form-row">
                                                <div class="name">ID PLANE</div>
                                                <div class="value">
                                                    <div class="input-group">
                                                        <form:input class="input--style-5" type="text" path="idplane"/>
                                                        <label class="label--desc">ID PLANE</label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                           <div class="form-row m-b-55">
				                            	<div class="name">FROM</div>
				                            	<div class="value">
				                                <div class="row row-space">
				                                    <div class="col-2">
				                                        <div class="input-group-desc">
				                                            <div class="value">
				                                                    <div class="input-group">
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
								                                    <option>HO CHI MINH</option>
								                                    <option>KON TUM</option>
								                                </select>
				                                                        <label class="label--desc">FROM</label>
				                                                    </div>
				                                                </div>
				                                        </div>
				                                    </div>
				                                    <div class="col-2">
				                                        <div class="input-group-desc">
				                                            <div class="value">
				                                                    <div class="input-group">
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
								                                    <option>HO CHI MINH</option>
								                                    <option>CAN THO</option>
								                                    <option>KON TUM</option>
								                                </select>
				                                                   
				                                                        <label class="label--desc">TO</label>
				                                                    </div>
				                                                </div>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
                                            <div class="form-row">
                                                <div class="name">AIRPORT</div>
                                                <div class="value">
                                                    <div class="input-group">
                                                        <form:input class="input--style-5" type="text" path="airport"/>
                                                         <label class="label--desc">AIRPORT</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="name">AIRLINE</div>
                                                <div class="value">
                                                    <div class="input-group">
                                                 <select name="airline">
				                                    <option>VIETNAM AIRLINE</option>
				                                    <option>BAMBOO AIRWAY</option>
				                                    <option>VIETJET AIR</option>
				                               
				                                </select>
                                                         <label class="label--desc">AIRLINE</label>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="name">TIME</div>
                                                <div class="value">
                                                    <div class="input-group">
                                                        <form:input class="input--style-5" type="time" path="times"/>
                                                         <label class="label--desc">TIME</label>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="name">FLIGHT TIME</div>
                                                <div class="value">
                                                    <div class="input-group">
                                                        <input class="input--style-5" type="date" value="${planes.flighttime}" name="abc" min="${a}">
                                                     
                                                         <label class="label--desc">FLIGHT TIME</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                               <button type="submit" class="btn btn__Book" type="button">UPDATE</button>
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
        
        <!-- ... other HTML ... -->

    <!-- Load React. -->
    <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
    
    

    </body>
    </html>