

var Booking = document.querySelectorAll(".best_offer-btn"); 

for (let i = 0; i < Booking.length; i++) {
    Booking[i].onclick = function(){
        location.replace("http://127.0.0.1:5500/preBooking.html");
    }
  }