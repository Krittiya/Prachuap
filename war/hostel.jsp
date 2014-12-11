<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head><title> Prachuap Khiri Khan</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css"> 
    <script src="phonegap.js"></script> 
</head>



<body id="main">  
    <nav class="navbar navbar-inverse navbar-fixed-top " role="navigation">
        <div class="container" >
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"
                data-toggle="collapse" 
                data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
 &nbsp;&nbsp;&nbsp;<a class="navbar-brand"><img src="img/Se.jpg" width="30" height="30" >
 <FONT COLOR =EEEEEE><font size="3.5"> ประจวบคีรีขันธ์ </FONT></a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">&nbsp;หน้าแรก</a></li>
                <li><a href="trip.jsp">&nbsp;สถานที่เที่ยว</a></li>
                <li class="active"><a href="hostel.jsp">&nbsp;ที่พัก</a></li>
                <li><a href="name.html">&nbsp;ผู้จัดทำ</a></li>
               
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <% String getusername_ses = (String)session.getAttribute("username_ses");
               String getfirstname_ses = (String)session.getAttribute("firstname_ses");
               String getlastname_ses = (String)session.getAttribute("lastname_ses");
               if(getusername_ses==null) { %>
               <li><a href="login.html">เข้าสู่ระบบ</a></li>
               <% } else { %>
               <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=getfirstname_ses%> (ลงชื่อออก)</a></li>
                     <% } %>    
           </ul>
        </div>
    </div>
</nav>
<br><br><br>
         <img src="img/pp3.jpg" width="1100" height="370" > 
<br><br>
<font color = "444444"><h3><b>ที่พักยอดนิยมที่ ประจวบคีรีขันธ์</b></h3></font>
<br>
<div class="row" >
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">ดอลฟิน เบย์ รีสอร์ท (Dolphin Bay Resort)</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/dolphin-bay-resort/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho1.jpg" alt="">
 </a><br>
  <font color="000000">227 หมู่ 4, ตำบลสามร้อยยอด , สามร้อยยอด, ประจวบคีรีขันธ์, ประเทศไทย</font></div>
  
  </div>
   </div>
  
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">บ้านกรูดอาร์คาเดีย รีสอร์ทแอนด์สปา (Baan Grood...</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/baan-grood-arcadia-resort-spa/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho2.jpg" alt="">
 </a><br>
 <font color="000000">333/2 หมู่ 3, ต.ธงชัย, อ.บางสะพาน , หาดบ้านกรูด, หาดบ้านกรูด, ประจวบคีรีขันธ์, ประเทศไทย </font></div>
 </div>
    </div>
    
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">กุยบุรี โฮเต็ล แอนด์ รีสอร์ท (Kuiburi Hotel&Resort)</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/kuiburi-hotel-resort/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho3.jpg" alt="">
</a><br>
 <font color="000000">18/3 ม.5 ต.บ่อนอก, อำเภอเมือง, กุยบุรี, ประจวบคีรีขันธ์, ประเทศไทย </font></div>
    </div>
    </div>
</div>



<div class="row" >
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">สิรารัญ รีสอร์ท (Sirarun Resort) </font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/sirarun-resort/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho4.jpg" alt="">
 </a><br>
  <font color="000000">85 หมู่9 อ่างทอง, ทับสะแก, ประจวบคีรีขันธ์, ประเทศไทย</font></div>
  
  </div>
   </div>
   
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">วาฏิกา รีโซวิลล่า กุยบุรี (Vartika Resovilla kuiburi)</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/vartika-resovilla-kuiburi/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho5.jpg" alt="">
 </a><br>
  <font color="000000">65 หมู่ 5 บ่อนอก, กุยบุรี, กุยบุรี, ประจวบคีรีขันธ์, ประเทศไทย</font></div>
  
  </div>
   </div>
   
   <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">โรงแรมประจวบบีช (Prachuap Beach Hotel)</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/prachuap-beach-hotel/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho6.jpg" alt="">
 </a><br>
  <font color="000000">123 ถ.สู้ศึก, ประจวบคีรีขันธ์ ซิตี้เซ็นเตอร์, ประจวบคีรีขันธ์, ประเทศไทย</font></div>
  
  </div>
   </div>  
</div>   

<div class="row" >
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">ซันไชน์ พาราไดซ์ รีสอร์ท (Sunshine Paradise Resort) </font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/sunshine-paradise-resort/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho7.jpg" alt="">
 </a><br>
  <font color="000000">95 ม.9 ตำบลอ่างทอง อำเภอทับสะแก, ทับสะแก, ประจวบคีรีขันธ์, ประเทศไทย</font></div>
  
  </div>
   </div>
   
    <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">เทวัญดารา บีชวิลล่า กุยบุรี (Dhevan Dara Beach Villa - Kui Buri)</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/dhevan-dara-beach-villa-kui-buri/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho8.jpg" alt="">
 </a><br>
  <font color="000000">78 Moo 5, Bo-nok , Muang, กุยบุรี, ประจวบคีรีขันธ์, ประเทศไทย</font></div>
  
  </div>
   </div>
   
   <div class="col-md-4">
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading" style="min-height: 80; max-height: 80;"><font color="000000">เบย์วิว บีช รีสอร์ท บ้านกรูด (Bayview Beach Resort Baan Grood)</font></div>
  <div class="panel-body">
     <a href="http://www.agoda.com/th-th/bayview-beach-resort-baan-grood/hotel/prachuap-khiri-khan-th.html?asq=jGXBHFvRg5Z51Emf%2fbXG4w%3d%3d"><img class="img-responsive img-portfolio img-hover" src="img/ho9.jpg" alt="">
 </a><br>
  <font color="000000">13 หมู่ 9 ต.ธงชัย อ.บางสะพาน , หาดบ้านกรูด, ประจวบคีรีขันธ์, ประเทศไทย 77190 </font></div>
  
  </div>
   </div>  
</div>    
   
<footer>
  <hr>
  <font color = "444444"><p>&copy; Computer Science @ The University of the Thai Chamber of Commerce</p></font>          
</footer>

<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function (){
    $(".tool").tooltip();
    var xmlhttp = new XMLHttpRequest();//สร้าง object
    xmlhttp.onreadystatechange=function(){ //จับ event พอเกิด event ให้เรียก functionไม่มีชื่อ
    if(xmlhttp.readyState==4 && xmlhttp.status==200){
    document.getElementById("result").innerHTML = xmlhttp.responseText;//ใช่ domเข้าถึง <div>ผ่าน ID=resultโดยต้องการเปลี่ยนค่าที่ <div>
    }
    }
    var url = "loadtext.jsp";
    //เปิด connection
    xmlhttp.open("GET",url,true);
    xmlhttp.send();
});
</script>
</body>
</html>
