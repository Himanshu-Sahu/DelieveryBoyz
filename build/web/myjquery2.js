$(document).ready(function(){
  $("#menuIcon").click(function(){
      $("#sideMenu").animate({width:300},500);
       $('html').css({height:"100%",overflow:"hidden"});
       
  }); 
   $(".closebtn").click(function(){
      $("#sideMenu").animate({width:0},500);
              $('html').css({overflow:"auto",height:"auto"});
  }); 
  $("body").focusin(function(){
      $("#sideMenu").animate({width:0},500);
                    $('html').css({overflow:"auto",height:"auto"});
    });
    $("#magic").click(function(){
        $("#stepsShow").slideToggle("slow");
$('#magic').toggleClass('rot');
    });
    
    $("")
    
    
});