$(document).ready(function(){
       

    if(check == "1"){
    $("#update").css("display","block"); 
    $("#update").fadeOut(5000);
      $("form").submit(function(){
      $("#update").fadeIn(1000);
       });
    }
    
   $('input[name="unm"],input[name="mob"],input[name="inst"]').focusin(function(){
             $(this).siblings(".botbord").css("display","none");
      $(this).siblings(".botbord2").css("display","block");
      $('input[type=text]').css("outline","none");
   });
   $('input[name="unm"],input[name="mob"],input[name="inst"]').focusout(function(){
                    $(this).siblings(".botbord").css("display","block");
      $(".botbord2").css("display","none"); 
   });
       
       $("#close").click(function(){
              $("#update").css("display","none"); 
       });
              
});

   

