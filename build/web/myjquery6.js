    $(document).ready(function(){    
    $('input[type=text]').focusin(function(){
             $(this).siblings(".botbord").css("display","none");
      $(this).siblings(".botbord2").css("display","block");
      $('input[type=text]').css("outline","none");
   });
   $('input[type=text]').focusout(function(){
                    $(this).siblings(".botbord").css("display","block");
      $(".botbord2").css("display","none"); 
   });
   $("#close").click(function(){
              $(".side").css("display","none"); 
              $("#container").css("display","block"); 
       });
        $("#timeaps").click(function(){
          $(".side").css("display","block"); 
                    $("#container").css("display","none");         
       });
       
     
         $(".part").hover(function(){
             $(".part").addClass(".button");
         });
         
         $(".din").click(function(){
             $(".early").click(function(){
                        showTime(0);
                                   $("#time").css("display","block");
                });
         
         
             $(".morn").click(function(){
                        showTime(6);
                                   $("#time").css("display","block");
                });
         
         
             $(".after").click(function(){
                        showTime(12);
                                   $("#time").css("display","block");
                });
                
         
             $(".even").click(function(){
                        showTime(18);
                                   $("#time").css("display","block");
                });
          });
          
         $("#today").click(function(){
             $("#time").css("display","none");
             $(".early").click(function(){
                var t = check(6);
                if(t){
                       $("#time").css("display","block");
                       showTime(0);
                }
             });
             $(".morn").click(function(){
                var t = check(12);
                if(t){
                       $("#time").css("display","block");
                       showTime(0);
                   }
             });
             $(".after").click(function(){
                var t = check(6);
                if(t){
                       $("#time").css("display","block");
                       showTime(12);
                }
             });
             $(".even").click(function(){
                var t = check(24);
                if(t){
                       $("#time").css("display","block");
                       showTime(18);
                }
             });
             
         });
         
          function showTime(timeGet){
                    var hourbox = document.getElementsByClassName("hour");
                    if(timeGet<12){
                        var prefix="0";
                    }
                    else{
                        var prefix="";
                    }
                    for(i=0;i<6;i++){
                        hourbox[i].innerHTML=prefix+timeGet+"-";
                         if(timeGet>8){var prefix="";}
                        hourbox[i].innerHTML+=prefix+(timeGet=timeGet+1);
                     
                    }
                }
  });          
  var d = new Date();
            function check(i){    
                if(i>d.getHours())
                    return true;
                else
                    return false;
            }
                