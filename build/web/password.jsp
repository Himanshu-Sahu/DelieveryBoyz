<%@page import="java.sql.Connection"%>
<%
String error1 = "";
String color = "#D0021B";
String chn = (String)request.getAttribute("chn");
error1 = (String)session.getAttribute("msg");
color = (String)request.getAttribute("color");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="Content/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="myjquery4.js"></script>
        <title>Edit Profile</title>
        <link rel="stylesheet" type="text/css" href="mystyle4.css">
    </head>
    <body>
        <div id="header">  <jsp:include page="home.jsp"></jsp:include></div>
        <div id="update" style="background-color:<%=color%>;"><div id="close">&times;</div><%=error1%></div>
            <div>
                <div id="opta">
                    <div class="opt1" ><img src="Content/avatar.png" style="margin:2px 28px 0 0;height:20px;width:20px"/><a href="profile.jsp">Profile</a></div>
                    <div class="opt1"  ><img src="Content/biglock.png" style="margin:2px 28px 0 0;height:20px;width:20px"/><a href ="password.jsp">Password</a><i id="arrow"></i></div>
                </div>
               
                <div id="change">
            <h2 style="font-size: 18px;font-weight:500;font-family: GothamRounded-Book,sans-serif;">Password</h2>
            <form action="Change" method="post">
                <div> <input type="text" name="pass" placeholder="Existing Password"/>
            <div class="botbord"></div>
            <div class="botbord2" id="bot1"></div>
            </div>
            <div>
            <input type="text" name="new_pass" placeholder="New Password"/><br>
            <div class="botbord"></div>
            <div class="botbord2" id="bot2"></div>
            </div>
            <div> <input type="text" name="conf_pass" placeholder="Confirm Password"/><br>
            <div class="botbord"></div>
            <div class="botbord2" id="bot3"></div>           
            </div>
            <input type="submit" value="Update Password"/>
            </form>
                </div>
            </div>
                <jsp:include page="footer.jsp"></jsp:include>
                <script>var check1 = <%out.print(chn);%>;
               </script>
    </body>
</html>
