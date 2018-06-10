<%
String upd;
String unm = (String)session.getAttribute("unm");
String mobile = (String)session.getAttribute("mobile");
String inst = (String)session.getAttribute("inst");
upd = (String)request.getAttribute("upd");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="Content/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="myjquery3.js"></script>
        <title>Edit Profile</title>
        <link rel="stylesheet" type="text/css" href="mystyle3.css">
    </head>
    <body>
        <div id="header">  <jsp:include page="home.jsp"></jsp:include></div>
        <div id="update"><div id="close">&times;</div>Profile Updated Successfully</div>
            <div>
                <div id="opta">
                    <div class="opt1" ><img src="Content/avatar.png" style="margin:2px 28px 0 0;height:20px;width:20px"><a href="profile.jsp">Profile</a><i id="arrow"></i></div>
                    <div class="opt1" ><img src="Content/biglock.png" style="margin:2px 28px 0 0;height:20px;width:20px"><a href ="password.jsp">Password</a></div>
                </div>
                <div id="change">
            <h2 style="font-size: 18px;font-weight:500;font-family: GothamRounded-Book,sans-serif;">Profile</h2>
            <form action="Update" method="POST" >
                <div> <input type="text" name="unm" value="<%=unm%>" placeholder="Your Name"/><br>
            <div class="botbord"></div>
            <div class="botbord2" id="bot1"></div>           
            </div>
            <div><input type="text" name="inst" value="<%=inst%>" placeholder="Your Institute Name"/><br>
            <div class="botbord"></div>
            <div class="botbord2" id="bot2"></div>
            </div>
            <div>
            <input type="text" name="mob" value="<%=mobile%>" placeholder="Your Mobile Number"/><br>
            <div class="botbord"></div>
            <div class="botbord2" id="bot3"></div>
            </div>
            <input type="submit" value="Save now"/>
            </form>
                </div>
            </div>
                <jsp:include page="footer.jsp"></jsp:include>
                <script>
                    var check = <%out.print(upd);%>;
               </script> 
    </body>
</html>
