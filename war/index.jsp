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



 <body id="main">
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container" >
            <div class="navbar-header">
                <button type="button" class="navbar-toggle"
                data-toggle="collapse" 
                data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
 &nbsp;&nbsp;&nbsp;<a class="navbar-brand"><img src="img/Se.jpg" width="25" height="25" >
 <FONT COLOR =888888><font size="3"> ประจวบคีรีขันธ์ </FONT></a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.html">&nbsp;หน้าแรก</a></li>
                <li><a href="trip.jsp">&nbsp;สถานที่เที่ยว</a></li>
                <li><a>&nbsp;ที่พัก</a></li>
                <li><a>&nbsp;ร้านอาหาร</a></li>
                <li><a href="name.html">&nbsp;ผู้จัดทำ</a></li>
               
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
<br>
 <center>
         <img src="img/ko.jpg" width="1000" height="450" >
</center>
<font color>
<br>
<marquee behavior="scroll" scrolldelay="100"><div id="result"></div></marquee>
 <br><br>
<section>

  <div class="col-md-4">
  <font color = "333333"><h4>การเดินทาง</h4>
  <font color = "666666"><p>ประจวบคีรีขันธ์อยู่ห่างจากกรุงเทพฯ ประมาณ 280 กิโลเมตร นักท่องเที่ยวสามารถเดินทางสู่จังหวัดประจวบคีรีขันธ์ได้หลายวิธี ทั้งทางรถยนต์ส่วนตัว และรถไฟ</p>
  <font color = "333333"><b><h5>โดยรถไฟ</h5></b>
  <font color = "666666"><p>มีรถไฟออกจากสถานีหัวลำโพงทุกวัน โดยรถไฟสายใต้ทุกขบวนต้องผ่านประจวบคีรีขันธ์ และในวันเสาร์ อาทิตย์ รวมถึงวันหยุดนักขัตฤกษ์ การรถไฟแห่งประเทศไทยจัดขบวนรถนำเที่ยวสายชายทะเลสวนสนประดิพัทธ์ แบบเช้าไปเย็นกลับ และจากสถานีรถไฟธนบุรี มีขบวนรถธนบุรี-หลังสวน ผ่านประจวบคีรีขันธ์ ทุกวัน
  </p>
  <font color = "333333"><b><h5>โดยรถยนต์</h5></b>
  <font color = "666666"><p>จากกรุงเทพฯ สามารถเดินทางได้ 2 เส้นทาง คือ
<br>
&nbsp;&nbsp;1.ใช้ทางหลวงหมายเลข 35 (ธนบุรี-ปากท่อ) ผ่านจังหวัดสมุทรสาคร สมุทรสงคราม แล้วเลี้ยวซ้ายเข้าทางหลวงหมายเลข 4 (เพชรเกษม) ผ่านจังหวัดเพชรบุรี เข้าสู่จังหวัดประจวบคีรีขันธ์ รวมระยะทางประมาณ 280 กิโลเมตร ใช้เวลาเดินทางประมาณ 3 ชั่วโมงครึ่ง
<br>
&nbsp;&nbsp;2.ใช้ทางหลวงหมายเลข 4 (เพชรเกษม) ผ่านพุทธมณฑล นครปฐม ราชบุรี เพชรบุรี เข้าสู่จังหวัดประจวบคีรีขันธ์ รวมระยะทางประมาณ 320 กิโลเมตร ใช้เวลาเดินทางประมาณ 4 ชั่วโมง</p>
</div>
</div>

 <div class="col-md-4"> 
 <img src="img/m2.jpg" width="290" height="190">
  <font color = "333333"><h5>วิถีชีวิตชาวบ้านปากน้ำปราณ</h5>
  <font size ="1"></font><font color = "666666"><p>บริเวณ “ปากน้ำปราณ” คือ บริเวณช่วงที่แม่น้ำปราณบุรีไหลลงสู่ทะเล ชาวบ้านส่วนใหญ่ประกอบอาชีพประมง หมู่บ้านแห่งนี้จึงกลายเป็นศูนย์รวมอาหารทะเลจำหน่ายในราคาย่อมเยาว์ อาหารทะเลที่ขึ้นชื่อของที่นี่ คือ ปลาหมึกสด ปลาหมึกแดดเดียว ปลาหมึกแห้ง กะปิเคย กุ้งแห้ง ฯลฯ</p>
</div>

 <div class="col-md-4"> 
 <img src="img/ll.jpg" width="290" height="190" >
   <font color = "333333"><h5>ประเพณีตักบาตรเทโวเขาช่องกระจก</h5>
  <font size ="1"></font><font color = "666666"><p>จัดขึ้น ณ วัดธรรมมิการามวรวิหาร เชิงเขาช่องกระจก อำเภอเมืองประจวบคีรีขันธ์ ประมาณช่วงออกพรรษาของทุกปี ชมนิทรรศการพระเครื่องทำบุญตักบาตรเทโวในวันออกพรรษาแด่พระภิกษุจำนวน 200รูป ชมประเพณีชักพระขบวนแห่รถพุทธประวัติ นอกจากนั้นผู้เข้าร่วมงานสามารถชมภูมิทัศน์ของอ่าวประจวบฯ อ่าวน้อย และอ่าวมะนาวจากยอดภูเขากลางเมืองได้อีกด้วย

 </p>
</div>
</section> 
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

