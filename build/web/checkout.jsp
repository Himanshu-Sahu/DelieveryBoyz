<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = (Connection)request.getServletContext().getAttribute("mycon");
    ArrayList list = (ArrayList)request.getSession().getAttribute("cart");
    String unm = (String)request.getSession().getAttribute("unm");
    String mob = (String)request.getSession().getAttribute("mobile");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Boyz</title>
        <link rel="stylesheet" type="text/css" href="mystyle8.css">
        <script type="text/javascript" src="Content/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="myjquery6.js"></script>
    </head> 
    <body>
        
        <jsp:include page="home.jsp"></jsp:include>
         <div class="side schedule">
                <div id="close"><strong>&#10006;</strong></div>
                <div id="day">
                <div id="datehead">When do you want to receive it?</div>
                <div class="datechoose">Choose a day</div>
                <div id="coldateday">
                    <div onclick="IntervalToday()"><span id="today">Today</span><span></span></div>
                     <div class="din" onclick="Interval()"><span class="day"></span><span class="date"></span></div>
                     <div class="din" onclick="Interval()"><span class="day"></span><span class="date"></span></div>
                     <div class="din" onclick="Interval()"><span class="day"></span><span class="date"></span></div>
                     <div class="din" onclick="Interval()"><span class="day"></span><span class="date"></span></div>
                     <div class="din" onclick="Interval()"><span class="day"></span><span class="date"></span></div>
                     <div class="din" onclick="Interval()"><span class="day"></span><span class="date"></span></div>
                </div>
                
                <div>
                    <div class="datechoose">Choose an interval</div>
                    <div>
                         <div class="part"><span class="interval early">Early Morning</span></div>
                         <div class="part"><span class="interval morn" >Morning</span></div>
                         <div class="part"><span class="interval after">Afternoon</span></div>
                         <div class="part"><span class="interval even">Evening</span></div>
                    </div>
                </div>
                <div id="time">
                    <div class="datechoose">Choose an hour</div>
                    <div>
                         <div class="parthour"><span class="hour"></span></div>
                         <div class="parthour"><span class="hour"></span></div>
                         <div class="parthour"><span class="hour"></span></div>
                         <div class="parthour"><span class="hour"></span></div>
                         <div class="parthour"><span class="hour"></span></div>
                         <div class="parthour"><span class="hour"></span></div>
                    </div>
                    
                </div>
                <div class="scheduler"><button>Schedule Order</button></div>
                </div>
            </div>
        <div id="container">
            <div id="information">
            <div id="checkout">Checkout</div>
            <div class="box_info">
                <div class="heading one">Delivery location</div>
                <div class="detail">Set your exact delivery address</div>
                <div>
                    <div class="detailhead">
                        <div class="detailsub">Flat/House no.</div>        
                        <div><input type="text">
                        <span class="botbord"></span>
                        <span class="botbord2" id="bot1"></span>
                        </div>
                    </div>
                    <div class="detailhead">
                        <div class="detailsub">Street name</div>
                        <div><input type="text">
                        <span class="botbord"></span>
                        <span class="botbord2" id="bot1"></span>
                        </div>
                    </div>
                    <div class="detailhead">
                        <div class="detailsub">Landmark</div>
                        <div><input type="text">
                        <span class="botbord"></span>
                        <span class="botbord2" id="bot1"></span>
                        </div>
                    </div>
                    <div>
                        <div  class="detailsub">Area</div>
                        <div  class="detailsub"><input type="text" value="<%=request.getSession().getAttribute("add")%>" style="background-color: white;color:#838c8d;" disabled>
                     <span class="botbord"></span>
                        <span class="botbord2" id="bot1"></span></div>
                    </div>
                </div>
                <div></div>
            </div>
            <div class="box_info">
                <div class="heading two">Delivery time</div>
                <div class="detail">Set your delivery time</div>
                <div class="sel">
                    <div class="button"><div class="top"></div>
                    <div class="bottom"></div><button class="asp">As soon as possible</button></div>
                    <div class="button" id="timeaps"><div class="top"></div>
                    <div class="bottom "></div><button class="aps">As per schedule</button></div>
                </div>
            </div>
            <div class="box_info">
                <div class="heading three">Contact info</div> 
                <div class="detail">Check your contact info</div>
                <div>
                    <div class="common"><%=unm%></div>
                    <div class="common">+91<%=mob%></div>
                </div>
                <div class="link">
                    <br><br>
                    <a href="profile.jsp"><button class="edit">Edit your information</button></a>
                </div>
            </div>
            <div class="box_info">
                <div class="heading four">Payment info</div>
                <div class="detail">Check your payment info</div>
                <div>
                    <div class="button"><div class="top"></div>
                    <div class="bottom"></div><button>Cash on delivery</button></div>
                    <div class="button"><div class="top"></div>
                    <div class="bottom"></div><button>Online payment</button></div>
                </div>
            </div>
        </div>
        <div id="summary">
            <div id="ucart">Your Cart</div>
            <div class="order list"><textarea rows="5" style="background-color: white;color:#838c8d;" disabled><%
                try{
                Iterator i = list.iterator();
                while(i.hasNext()){
                    out.print(i.next()+"\n");
                };
                }
                catch(Exception e){
                 out.print("There is some error in loading cart");
                }
            %></textarea></div>
            <div></div>
            <div class="detail">
                <div class="total symbol"><h2>Total</h2></div>
                <div class="total sum"></div>
                <div class="detail"></div>
            </div>
        </div>
        </div>
            <div class="side payment">
                
            </div>
           
            <jsp:include page="footer.jsp"></jsp:include>
            <script>   
                var daybox = document.getElementsByClassName("day");
                var datebox = document.getElementsByClassName("date");
                var today = new Date();
                var Day =  today.getDay()+1; 
                var Time = today.getTime();
                var Date = today.getDate()+1;
                
                var month = new Array();
                month[0] = "Jan";
                month[1] = "Feb";
                month[2] = "March";
                month[3] = "April";
                month[4] = "May";
                month[5] = "June";
                month[6] = "July";
                month[7] = "Aug";
                month[8] = "Sept";
                month[9] = "Oct";
                month[10] = "Nov";
                month[11] = "Dec";
                
                var i = 1,j = 0;
                
                for(i=0;i<6;i++){
                    daybox[i].innerHTML = Date+" "+month[today.getMonth()];
                    switch(Day){
                        case 0:
                            datebox[i].innerHTML = ' Sunday';
                            Day = Day + 1;
                            break;
                            
                        case 1:
                            datebox[i].innerHTML = ' Monday';
                            Day = Day + 1;
                            break;  
                            
                         case 2:
                            datebox[i].innerHTML = ' Tuesday';
                            Day = Day + 1;
                            break;
                    
                        case 3:
                            datebox[i].innerHTML = ' Wednesday';
                            Day = Day + 1;
                            break;
                            
                        case 4:
                            datebox[i].innerHTML = ' Thursday';
                            Day = Day + 1;
                            break;
                        
                        case 5:
                            datebox[i].innerHTML = ' Friday';
                            Day = Day + 1;
                            break;
                        
                        case 6:            
                            datebox[i].innerHTML = ' Saturday';
                            Day = Day + 1;
                            break;       
                        }
                        Date+=1;
                    if(Day%7===0){
                        Day = 0;
                        }
                }                
            </script>
    </body>
    
</html>

