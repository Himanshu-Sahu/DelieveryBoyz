<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="Content/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="Content/jquery.colorbox.js"></script>
        <link rel="stylesheet" type="text/css" href="mystyle7.css"/>
        <script type="text/javascript" src="myjquery5.js"></script>
        <title>Delivery Boyz</title>
    </head>
    <body>
 <jsp:include page="home.jsp"></jsp:include>
 <div></div>
 <div class="store_custom">
     <div class="store_custom_text">What do you want?</div>
     <textarea id="textarea" placeholder="What would you like to send? Please, take in consideration that our glovers use bikes. Check our conditions in terms of sizes and weight."></textarea>
 </div>
 
 <div id="order_action">
     <div id="side_confirm">
         <div id="side_confirm_text">You added product to your cart!</div>
         <div id="navigation">
             <div class="navigation_menu"><a href="Order.jsp"><button>Menu</button></a></div>
             <div class="navigation_menu" id="finish"><button>Finish</button></div>
         </div>
     </div>
 </div>

<div class="store_delivery_limits">
    <div class="store_delivery_limits_title">Delivery F.A.Q.</div>
        <div class="store_delivery_limits_item">
            <div class="store_delivery_limits_item_icon">
                     <div class="glv icon1"></div>          
            </div>
            <div class="store_delivery_limits_item_text">Delivery Boyz use motorbikes or bicycles and can bring up to 9kg of weight. They are strong, but not so much!</div>            
        </div>
        <div class="store_delivery_limits_item">
            <div class="store_delivery_limits_item_icon">
                <div class="glv icon2"></div>          
            </div>
            <div class="store_delivery_limits_item_text">Our box is yellow and cool, but only allows a maximum volume of 40x40x30cm!</div>     
        </div>
        <div class="store_delivery_limits_item">
            <div class="store_delivery_limits_item_icon">
                <div class="glv icon3"></div>               
            </div>
            <div class="store_delivery_limits_item_text">Even if we try to make any kind of orders, there are certain limits. No drugs and no animals. We'd love to be able to take your turtle or your snake, but for now we do not offer this type of service. We hope that in the future we can do so...</div>  
    </div>
</div>
<div class="store_custom_questions">
<div class="store_custom_questions_wrapper">
<div class="store_custom_questions_title">How do I do an order?</div>
<div class="store_custom_questions_answer">
    Ordering is very easy! You only have to: 
    <p>1. Choose a product of one of the categories…a difficult decision!</p>
    <p>2. Let us be surprised with your order if you ask for something else from the button “I want..”: a board game, for example.</p>
3. Or we can send or pick something up: keys, a bag, an envelope…
</div>
</div>
<div class="store_custom_questions_wrapper">
<div class="store_custom_questions_title">How do I make the payment?</div>
<div class="store_custom_questions_answer">
    The payment takes place through our application and only once the service is performed. The Delivery Boyz will ask you to sign the delivery and then proceed to charge you for the service and the purchase, if there is any. 
</div>    
</div>
<div class="store_custom_questions_wrapper">
<div class="store_custom_questions_title">When will my order arrive?</div>
<div class="store_custom_questions_answer">As long as you have an assigned Delivery Boyz you can follow it in real time and communicate with him for any questions. If you do not have a Delivery Boyz assigned, your order remains in the system pending allocation. If large delays are anticipated you will see it with a yellow message at the top of the app. In any case, if you would like to cancel your order and there is no Delivery Boyz assigned you can do it yourself from the current order at no cost.
</div>    
</div>
</div>
    
 <jsp:include page="footer.jsp"></jsp:include>    
    </body>
</html>
