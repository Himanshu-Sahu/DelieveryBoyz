var slideIndex = 1;
var request;

window.onscroll = function(){scrollFunction()};

  var slides = document.getElementsByClassName("item");
  var dots = document.getElementsByClassName("dot");
  var verify = document.getElementById("verify");
  verify.addEventListener("input",checkAvailable);
  verify.addEventListener("blur",clear);

   slides[slideIndex-1].style.display = "block"; 
   dots[slideIndex-1].className += " active";

  myVar = setInterval(function(){ myTimer()}, 3000);

  function plusSlide(n){
   slideIndex += n;
   if (n > slides.length) {slideIndex = 1}    
   if (n < 1) {slideIndex = slides.length}
   for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
   }
   for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
   }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}

  function myTimer(){
  var n=slideIndex;
  if (n > slides.length) {slideIndex = 1}   
  if (n < 1) {slideIndex = slides.length}
      
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
      }
  slides[slideIndex-1].style.display = "block";  
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" active", "");
      }
          dots[slideIndex-1].className += " active";
           slideIndex += 1;
 } 
 

  function myFunction() {
    myVar = setTimeout(showPage, 500);
}

  function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("content").style.display = "block";
}

  function checkAvailable(){
    request = new XMLHttpRequest();
    request.onreadystatechange = getResult;
    id = document.getElementById("verify").value;
    request.open("get","ShowUser?uid="+id,true);
    request.send(null);    
}

  function getResult(){
    if(request.readyState===4 && request.status===200){
       document.getElementById("check").innerHTML=request.responseText;}
    else
        document.getElementById("check").value="";    
}

  function clear(){
    document.getElementById("check").innerHTML="";
}

  function scrollFunction(){
    if(document.body.scrollTop > 80 || document.documentElement.scrollTop > 80)
            document.getElementById("scrolling").style.display = 'block';
    else
        document.getElementById("scrolling").style.display = 'none';
        
    if(document.body.scrollTop > 70 || document.documentElement.scrollTop > 70)    
        document.getElementById("name").style.display = 'none';
    else
        document.getElementById("name").style.display = 'block';
    
    if(document.body.scrollTop > 550 || document.documentElement.scrollTop > 550)
            document.getElementById("overlay").style.display = 'block';
    else
                document.getElementById("overlay").style.display = 'none';
    
   if(document.body.scrollTop > 200 || document.documentElement.scrollTop > 200)    
   {
       document.getElementById("moveLeft").style.display = 'block';
       document.getElementById("moveRight").style.display = 'block';
   }else{
        document.getElementById("moveLeft").style.display = 'none';
        document.getElementById("moveRight").style.display = 'none';
 
      }
  }