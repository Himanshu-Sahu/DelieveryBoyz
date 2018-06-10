<%
String name = (String)request.getSession().getAttribute("unm");
%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="Content/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="myjquery2.js"></script>
       <link rel="stylesheet" type="text/css" href="mystyle2.css">
       

    </head>
    <body>
        <div id="modalContent">
        <div id="modal">
        <header>
            <div id="company"><b><span id="name">Delivery Boyz...</span></b></div>
            <div id="menuIcon"><img src="Content/menu.png"/></div>
        </header>
        </DIV>
        
        <div id="sideMenu">
            <div id="perDet">
                <img src="Content/businessman.png" height="100px" width="100px" id="perImg"/> <br><br>
                <p style="text-align: center;margin-left: 10%;font-family: GothamRounded-Book,sans-serif;"><%=name%></p>
            </div>
            <div class="closebtn"><strong>&times;</strong></div>

            <div id="menuList">
           <a href="Home1.jsp">Home</a>
           <a href="profile.jsp">Profile</a>
           <a href="support.jsp">Support</a>
           <a href="contact.jsp">Contact</a>
           <a href="Logout">Logout</a>
            </div>
        </div>
        </div>
    </body>
</html>