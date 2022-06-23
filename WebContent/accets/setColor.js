var nameFlights = document.querySelectorAll(".best_offer--item-nameflight div");

setColor = document.querySelectorAll(".setColor");


for (var i = 0; i < nameFlights.length; i++){
    var a = nameFlights[i].innerHTML;
    if( a === "BAMBOO AIRWAYS"){
       console.log(setColor[i]);
       setColor[i].style.color = "#73b860";
    }else if( a === "VIETJET AIR"){
        setColor[i].style.color = "rgb(209 41 45)";
    }else if( a === "VIETNAM AIRLINE"){
        setColor[i].style.color = "blue";
    }
}