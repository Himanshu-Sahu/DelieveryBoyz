

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="myjquery2.js"></script>
        <link rel="stylesheet" type="text/css" href="mystyle5.css">
        <title>Home</title>
         <script type="text/javascript">
             function check() {
  var xhttp = new XMLHttpRequest();
  var v=document.getElementById("add").value;
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("address").innerHTML = this.responseText;   
        }   
  };
  xhttp.open("GET", "CheckAddress?addr="+v, true);
  xhttp.send();
}

    function confirm(){
        var v = document.getElementById("add").value;
        var i = 0;
        var a;
        if(v == ""){
                    document.getElementById("add").style.border = "2px solid red";
                    }
        for( i=0;i<document.getElementsByTagName("option").length;i++){
         a = document.getElementsByTagName("option")[i].innerHTML;
        if(a == v){
            window.location.assign("SaveAddress?addr="+a);  
        return;
            }
    }
    if(a!=v)
                    document.getElementById("add").style.border = "2px solid red";
    }


        </script>
    </head>
    <body>
        <jsp:include page="home.jsp"></jsp:include>
        <div id="first">
        <div id="tagline"><p>Anything Anytime Anywhere.</p><p>Delivered in minutes.</p></div>
        <div id="addressCheck">
            <input type="text" value="Indore" disabled size =10 id="indore">
            <i> <input list="address" placeholder="Enter an area" name="addr" required id="add" size=50 onkeyup="check()"></i>
            <datalist id ="address">
            </datalist>
            <input type="button" value="GET STARTED!" onclick="confirm()">
        </div>
        </div>
        <div id="steps">Get your favorite food in 4 simple steps.<span id="magic" style="color:black;cursor:pointer">  See how  </span></div>
        <div id="stepsShow">
            <ul>
                <li class="step one">
                    <div>
                        <div><img src="Content/search.png " width = 81 height= 83 /></div>
                        <div class="title">1. Search</div>
                        <div class="description">Find Items that deliver to you by entering your address</div>
                    </div>
                </li>
                <li class="step two">
                    <div>
                        <div><img src="Content/list.png " width = 81 height= 83 /></div>
                        <div class="title">2. Choose</div>
                        <div class="description">Browse hundreds of menus to find the thing you like</div>
                    </div>
                </li>
                <li class="step three">
                    <div>
                        <div><img src="Content/pay.png " width = 81 height= 83 /></div>
                        <div class="title">3. Pay</div>
                        <div class="description">Pay fast &amp; secure online or on delivery</div>
                    </div>
                </li>
                <li class="step four">
                    <div>
                        <div><img src="Content/enjoy.png " width = 81 height= 83 /></div>
                        <div class="title">4. Enjoy</div>
                        <div class="description">Item delivered to your door</div>
                    </div>
                </li>
            </ul>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyA6bV0KiqnPLfTZrLSXZiTOwrChhJ8J7vo",
    authDomain: "delivery-boyz.firebaseapp.com",
    databaseURL: "https://delivery-boyz.firebaseio.com",
    projectId: "delivery-boyz",
    storageBucket: "",
    messagingSenderId: "697091805462"
  };
  firebase.initializeApp(config);
</script>