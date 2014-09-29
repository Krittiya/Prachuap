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
                <li class="active"><a href="index1.html"><img src="img/home.png" width="25" height="25" >&nbsp;หน้าแรก</a></li>
                <li><a><img src="img/hol.png" width="25" height="25" >&nbsp;สถานที่เที่ยว</a></li>
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
               <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=getfirstname_ses%> (ลงชื่อออก)</a></li>
                     <% } %>    
           </ul>
        </div>
    </div>
</div>

 <br> <br>
<center>

         <img src="img/1.jpg" width="750" height="400" >
  
</center>
    <marquee>
 <br>
                   
      <left><font face = "Angsana New"><font size ="5"><font color = "009999">คำขวัญประจำจังหวัด &nbsp; เมืองทองเนื้อเก้า &nbsp;  มะพร้าวสัปปะรด</font></font></font></left>  
      <left><font face = "Angsana New"><font size ="5"><font color = "009999"> &nbsp;สวยสดหาดเขาถ่ำ &nbsp; งามล้ำน้ำใจ</font></font></font></left>
                   
    </marquee>
<div>
  <center>

    <li><a><img src="img/t.gif" width="100" height="100" ><br><font face = "Angsana New"><font size ="5">ตราประจำจังหวัด</br><font face = "Angsana New"><font size ="5"><font color = "333333">เป็นรูปศาลามณฑป และมีภาพเกาะอยู่เบื้องหลัง</a></li>
  </center>
    <div class="col-md-4">
  <ul class="media-list">
    <li class="media">
      <a class="pull-left" href="#">

        <h3 align="left"><img src="img/map1.jpg" width="275" height="300"></font></font></b></h3>
            </div>
    </li>
  </ul>
        <h3 align="left"><b><font face = "Angsana New"><font size ="5"></font><font color = "333333">พื้นที่ : <font color = "009999"></b>6,367.620  ตารางกิโลเมตร</font></font></h3>
        <h3 align="left"><b><font face = "Angsana New"><font size ="5"></font><font color = "333333">ประชากร : <font color = "009999"></b>484,051 คน (2545)</font></font></h3>
        <h3 align="left"><b><font face = "Angsana New"><font size ="5"></font><font color = "333333">การปกครอง : <font color = "009999"></b>8 อำเภอ 48 ตำบล 388 หมู่บ้าน </font></font></h3>
        <h3 align="left"><b><font face = "Angsana New"><font size ="5"></font><font color = "333333"><font color = "009999"></b>1.อำเภอเมืองประจวบคีรีขันธ
      <br>
      2.อำเภอกุยบุรี
      <br>
      3.อำเภอทับสะแก
      <br>
      4.อำเภอบางสะพาน
      <br>
      5.อำเภอบางสะพานน้อย
      <br>
      6.อำเภอปราณบุรี
      <br>
      8.อำเภอสามร้อยยอด  </font></font></h3>


</div>
</section>
</section>
<footer>
  <hr>
  </footer>  
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function (){
    $(".tool").tooltip();
});
</script>
</body>
</html>
