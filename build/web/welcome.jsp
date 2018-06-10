<!DOCTYPE html>
<html lang="en">
    <head>
        
        <title>Delivery Boyz...</title>
        
          <script type="text/javascript" src="Content/jquery-3.1.1.js"></script>         
          <script type="text/javascript" src="myjquery1.js"></script>
          <link rel="stylesheet" type="text/css" href="mystyle1.css">
          <meta name="viewport" content="width=device-initial, initial scale=1.0">
          
    </head>
    
    <body onload="myFunction()">
        
        <div id="loader">
        </div>
        <div id="content" style="background-color:#d9d9d9;">
        <div id="poster" name="section">

            <div id="user">
                <span id="entry1">Login</span>
                <span id="entry2">Sign up</span>
            </div>
            <div id="name">We Deliver What YOU Need!!!</div>
           <div class="modal animate">
           <div class="modal-content1" style='position:relative'>
           <div class="close" >&times;</div>
           <form action="Login" method="post" style='margin-top:25px' >
           <h2 style="text-align:center">Login </h2>
           <input type="text" name="uid1" required placeholder="Enter User ID"  class="showUser"/>                       
           <input type="password" name="pass1" required placeholder="Enter password" id="passlog" pattern="[a-Z0-9]{4}"/>       
           <input type="submit" value="Login" style='cursor: pointer'/> 
           <p style="color:grey;text-align: center">New to DBoyz ? <span id="new" style="color:rgb(0, 80, 255);cursor:pointer;"><u>Create Account</u></span></p>
           </form> 
           </div>
            
           <div class="modal-content2" style='position:relative;overflow: hidden'>
           <div class="close" >&times;</div>
           <form action="Signup" method="get" style='margin-top:25px'>
           <h2 style="text-align:center">Create DBoyz... Account</h2>
           <input type="text" name="unm" required placeholder="Enter your name" id="unm"/>            
           <input type="text" name="mob" required placeholder="Enter Mobile No." id="mob" pattern='[0-9]{10}' title="ten digit"/>   
           <input type="text" name="inst" required placeholder="Enter Institute Name" id="college"/>  
           <input type="text" name="uid2" required placeholder="Enter User Id" class="showUser" id="verify"/><span id="check"></span>            
           <input type="password" name="pass2" required placeholder="Enter password" id ="passsign" pattern="[a-Z0-9]{4}"/>       
           <input type="submit" value="Create Account" style='cursor: pointer'/>     
           </form>
           </div>
           </div>
        </div>
            
            
            <div class="container" style="background-color: #f2f2f2;border-radius: 5px;overflow: hidden">
                <h1 style="text-align: center;" id="moveLeft"><strong>About Company Page</strong></h1><br>
                 <h2 style="text-align: center" id="moveRight">Your Choice Our Service</h2>
                <div style="column-count:3;column-gap: 50px;text-align: justify;margin:20px 0;">
                    <span style="line-height:30px;font-size:20px;color:#838c8d; font-family: GothamRounded-Book,sans-serif;">
                        Delivery Boyz is supply chain company delivering all the types of things available in market to customer their at door step.
                        Established in 2017, DBoyz as Gatfy's in-house supply chain arm bring many innovations such as Cash on Delivery, In-a-hour guarantee (Indore),.
                        DBoyz delivers on a consistent excellence in consumer experience by delivering reliably and managing variability at scale.With a renewed mission of transforming core supply chain through technology,
                        DBoyz is now offering Delivery on just ONE phone call</span>   <br>               
                    <button onclick="" style="padding:10px; text-align: center;margin-left:100px;background-color: #007bb6;border:none;border-radius: 5px;">Get in Touch...</button>
                  </div>
            </div>

  <div class="container2" style="background-color: #00a3cc;border-radius: 5px">
      <div id="overlay"><img src="Content/vision.png" alt="vision"/></div>
        <div  id = "test" style="font-size: 30px;text-align: center">       
        <h2>Our Values</h2>
        <br>
        <p><strong>VISION:</strong><p>To Deliver products and services to the customer</P><p> is our first choice. </p>
      </div>
 </div>
            
 <div class="container-fluid" style="text-align:center;padding:50px;background-color:#f2f2f2;border-radius: 5px">
  <h2>SERVICES</h2>
  <h4>What we deliver</h4>
  <br>
  <div class="row" style="column-count:3;column-rule: 2px dotted black;">
    <div>
      <span class="glyphicon"><img src="Content/food.png" style="width: 50px;height: 50px" alt="food"/></span>
      <h4>FOOD</h4>
      <p>Food of all Mess, Restaurants, Food Chains, Cakes, Pastries and ALL types of Fast Food..</p>
    </div>
    <div>
      <span class="glyphicon"><img src="Content/drink.png" style="width: 50px;height: 50px" alt="drink"/></span>
      <h4>DRINKS</h4>
      <p>Cold Drinks, Soda, Lassi, Beers, Whisky and any other you want..</p>
    </div>
    <div>
      <span class="glyphicon"><img src="Content/infinity.png" style="width: 50px;height: 50px" alt="infinity"/></span>
      <h4>YOUR NEED</h4>
      <p>From Cigrattes to Pan every day today thing you need to full your stomach at any time..</p>
    </div>
  </div>
 </div>
            
 <div class="reviews" style="background-color:#00a3cc;border-radius: 5px">
  <h2>What our customers say</h2>
  <div>
  <a class="prev" onclick="plusSlide(-1)">&#10094;</a>
  <a class="next" onclick="plusSlide(1)">&#10095;</a>
  </div>
  <div style="padding-top:50px;"> 
    <div class="item fade">
        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Harsh Atre, Student, DAVV</span></h4>
    </div>
    <div class="item fade">
        <h4>"One word... WOW!!"<br><span style="font-style:normal;">Siddhant Jain, Student, ISM Dhanbad</span></h4>
    </div>
    <div class="item fade">
      <h4>"Could I... BE any more happy with this company?"<br><span style="font-style:normal;">Geetesh Tiwari, Student, SGSITS</span></h4>
    </div>
  </div>  
  <div style="text-align:center;padding-top:30px;">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
  </div>
       
         <a  id="scrolling" href="#section">Top</a>    
         <jsp:include page="footer.jsp"></jsp:include>
        </div>
            
      <script src="myscript1.js"></script>
    </body>
</html>
