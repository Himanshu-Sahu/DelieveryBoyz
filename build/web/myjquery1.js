$(document).ready(function(){
    $("#entry1").click(function(){
        $(".modal").css("display","block");
        $(".modal-content1").css("display","block");
        $('html').css({height:"100%",overflow:"hidden"});
    }); 
    $("#entry2").click(function(){
        $(".modal").css("display","block");
        $(".modal-content2").css("display","block");
        $('html').css({height:"100%",overflow:"hidden"});
    });
     $(".modal").dblclick(function(){
        $('html').css({overflow:"auto",height:"auto"});
        $(".modal-content1").css("display","none");
        $(".modal-content2").css("display","none");
        $(".modal").css("display","none");
    });
    
    $("#new").click(function(){
        $(".modal-content1").css("display","none");
        $('html').css({overflow:"auto",height:"auto"});
        $(".modal").css("display","block");
        $(".modal-content2").css("display","block");
        $('html').css({height:"100%",overflow:"hidden"});       
    });
    
    $(".close").click(function(){
        $('html').css({overflow:"auto",height:"auto"});
        $(".modal-content1").css("display","none");
        $(".modal").css("display","none");
        $(".modal-content2").css("display","none");
        $('html','body').css({overflow:"auto",height:"auto"});
    });
    $("#scrolling").click(function(event){
        
            $('body','html').animate({
                scrollTop:0
            },1500);
              
    });
});

