

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
                <link rel="stylesheet" type="text/css" href="mystyle6.css">
                <script type="text/javascript" src="myjquery5.js"></script>


    </head>
    <body>
        <jsp:include page="home.jsp"></jsp:include>
        <div><h1>Quality never goes out of style</h1></div>
        <div id="list">
            <ul>
                <li><div class="one"></div><div class="two"></div><a href="orderList.jsp"><div id="icon"><div><img src="Content/anything.webp" width="50" height="50" ></div><div>Anything</div></div></a></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/courier.webp" width="50" height="50"></div><div>Courier</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/pharmacy.webp" width="50" height="50"></div><div>Pharmacy</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/gift.webp" width="50" height="50"></div><div>Gifts</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/snacks.webp" width="50" height="50"></div><div>Snacks Juices</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/stationery.png" width="50" height="50"></div><div>Stationery</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/restaurant.webp" width="50" height="50"></div><div>Restaurants</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/sweet.webp" width="50" height="50"></div><div>Sweet Treats</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/market.webp" width="50" height="50"></div><div>Market</div></div></li>
                <li><div class="one"></div><div class="two"></div><div id="icon"><div><img src="Content/cloth.png" width="50" height="50"></div><div>Clothes</div></div></li>

            </ul>
        </div>
        <div>
            <div></div>
            <div></div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
