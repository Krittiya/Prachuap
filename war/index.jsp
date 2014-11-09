<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
    <title> Prachuap Khiri Khan</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css"> 
    <script src="phonegap.js"></script> 
</head>



 <body id="main" background = "img/b1.jpg">
    <div class="navbar navbar-fixed-top navbar-inverse">
        <div class="container" >
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"
                data-toggle="collapse" 
                data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>


            <a class="navbar-brand"><FONT COLOR =00FFFF> Prachuap Khiri Khan </FONT></a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.html"><img src="img/home.png" width="25" height="25" >&nbsp;หน้าแรก</a></li>
                <li><a href="trip.jsp"><img src="img/map.png" width="25" height="25" >&nbsp;สถานที่เที่ยว</a></li>
                <li><a><img src="img/school.png" width="25" height="25" >&nbsp;ที่พัก</a></li>
                <li><a><img src="img/Res.png" width="25" height="25" >&nbsp;ร้านอาหาร</a></li>
                <li><a href="name.html"><img src="img/con6.png" width="25" height="25" >&nbsp;ผู้จัดทำ</a></li>
               
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <% String getusername_ses = (String)session.getAttribute("username_ses");
               String getfirstname_ses = (String)session.getAttribute("firstname_ses");
               String getlastname_ses = (String)session.getAttribute("lastname_ses");
               if(getusername_ses==null) { %>
               <li><a href="login.html">เข้าสู่ระบบ</a></li>
               <% } else { %>
               <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span><%=getfirstname_ses%> (ลงชื่อออก)</a></li>
                     <% } %>    
           </ul>
        </div>
    </div>
</div>

 <br><br>

 
<font color>
<marquee behavior="scroll" scrolldelay="100"><div id="result"></div></marquee>

 <br> <br>

<center>

         <img src="img/1.jpg" width="750" height="400" >
</center>

 <br><br><br>
 
<section>
<div class="row">
  <div class="col-md-7">
   <ul class="media-list">
    <li class="media">
      <a class="pull-left" href="#">
        <img class="media-object" src="img/map1.jpg">
      </a>
      <div class="media-body">
        <p><b>พื้นที่ :</b>  6,367.620  ตารางกิโลเมตร</p>
        <p><b>ประชากร :</b>  484,051 คน (2545)</p>
        <p><b>การปกครอง :</b> 8 อำเภอ 48 ตำบล 388 หมู่บ้าน</p>
        <div class="row">
          <div class="col-md-12">
            &nbsp;&nbsp;&nbsp;  1. อำเภอเมืองประจวบคีรีขันธ์<br>
            &nbsp;&nbsp;&nbsp;  2. อำเภอหัวหิน<br>
            &nbsp;&nbsp;&nbsp;  3. อำเภอกุยบุรี<br>
            &nbsp;&nbsp;&nbsp;  4. อำเภอทับสะแก<br>
            &nbsp;&nbsp;&nbsp;  5. อำเภอบางสะพาน<br>
            &nbsp;&nbsp;&nbsp;  6. อำเภอบางสะพานน้อย<br>
            &nbsp;&nbsp;&nbsp;  7. อำเภอปราณบุรี<br>
            &nbsp;&nbsp;&nbsp;  8. อำเภอสามร้อยยอด
          </div>
        </div>
      </div>
    </li>
  </ul>
</div>
<div class="col-md-5">
  <ul class="media-list">
    <li class="media">
      <a class="pull-left" href="#">
        <img class="media-object" src="img/t.jpg" alt="...">
      </a>
      <div class="media-body">
        <br>
        <h4>ตราประจำจังหวัด</h4>
        <p>เป็นรูปศาลามณฑป และมีภาพเกาะอยู่เบื้องหลัง</p>
      </div>
    </li>
  </ul>  
</div>
</div>
</section>
</section>
<footer>
  <hr>
  </footer>  '
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

