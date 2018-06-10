$(document).ready(function(){
   $(".store_custom").keyup(function(){
       if(!($("#textarea").val())){
       $(".store_custom").css({backgroundColor: "#fec151"});
       $(".store_delivery_limits").animate({top : '20%'},200);
       $("#order_action").fadeOut(100);
       
   }
   else if($("#textarea").val()){
       $(".store_custom").css({backgroundColor: '#bfbfbf'});
       $("#order_action").slideDown(200);
       $(".store_delivery_limits").animate({top:'30%'},200);
   }
   });
   $("#finish").click(function(){
        window.location.assign("AddCart?order="+$("#textarea").val());
   });
});