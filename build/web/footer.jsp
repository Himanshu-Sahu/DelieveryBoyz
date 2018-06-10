
<html>
    <head>
        <style>
             *{
               box-sizing: border-box;
               overflow:auto;

            }
            
            .footer{
                min-height:250px;
                position:relative;
                padding:20px;
                background-color:#3f3f3f;
                min-width: 100%;
                width:100%;
                border-radius:5px;
                font-family: GothamRounded-Book,sans-serif;

            }
           #social{
               position:absolute;
               top:20px;
                text-align: left;
                float:left;
               padding-left:20px;

            }
            .navfooter{
                position: absolute;
                left:35%;
                bottom:30px;
                font-size: 15px;
                font-family: arial,sans-serif;
            }
            
            #info{
               position:absolute;
               line-height: 120%;
               top:20px;
               left:45%;
               color:#b6b6b6;
               line-height: 25px;
            }
            
           #info p:hover,#help p:hover{
                color: whitesmoke;
            }
         
            #help{
               position:absolute;
               line-height: 120%;
               top:20px;
               right:20px;
               text-align:left;
               color:#b6b6b6;
               line-height: 25px;
            }
            
            
            #info>p, #help>p{
                padding-left: 5px;
                transition: padding-left .4s;
            }
            #info>p:before, #help>p:before{
                content: "<";
                font-size: 10px;
                margin-right: 3px;
            }
           #info>p:hover, #help>p:hover{
                padding-left: 10px;
            }
            
            #social>a{
                font-size: 24px;
                color:#b6b6b6;
                padding-right: 10px;
            }
            
            #fb:hover{
                color:#3b5998;
            }
            #twit:hover{
                color:#00aced;
            }
            #insta:hover{
                color:#bc2a8d;
            }
            #google:hover{
                color:#dd4b39;
            }
            
            #company:hover{
                color:white;
                cursor: context-menu;
            }
            
            #head1{
                height:2px;
                width: 30%;
                background-color:#fb705d;
                margin-bottom: 7px;
            }
            #head2{
                height:2px;
                width: 30%;
                background-color:#eab715;;
                margin-bottom: 7px;
            }
            #head3{
                height:2px;
                width: 30%;
                background-color:#df54e4;
                margin-bottom: 7px;
            }
            
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="footer">
        <div id="social">
            <div id="head1"></div>
            <h2 style="color:whitesmoke;padding-bottom: 10px;">Connect With Us</h2>
            <a href="facebook.php"><i class="fa" id="fb">&#xf09a;</i></a>
            <a href="https://www.twitter.com"><i class="fa" id="twit">&#xf099;</i></a>
            <a href="https://www.instagram.com"><i class="fa" id="insta">&#xf16d;</i></a>
            <a href="https://plus.google.com"><i class="fa" id="google">&#xf0d5;</i></a>
        </div>
            <div id="info" style="cursor: pointer">
                <div id="head2"></div>
                <h2 style="color:whitesmoke;padding-bottom: 10px;">Get To Know Us</h2>
                <p> About us</p>
                <p> Careers</p>
                <p> Lucky</p>
                <p> Gatfy Cares</p>
                <p> Gift a Smile</p>
            </div>
            
            <div id="help" style="cursor: pointer">
                <div id="head3"></div>
                <h2 style="color:whitesmoke;padding-bottom: 10px;">Let Us Help You</h2>
                <p> Your Account</p>
                <p> Customer Reviews</p>
                <p> 100% Delivered</p>
                <p> Contact</p>
                <p> Help</p>
                
            </div>
            <div class ="navfooter">
            <span id="condition" style="color:#b6b6b6;;margin-right: 30px;">Condition of Use</span>
            <span id="copyright" style="color:#757575">© 2017-2018,<span id="company"> Gatfy.com</span>, Inc. or its affiliates</span>
            </div>
        </div>
    </body>
</html>
