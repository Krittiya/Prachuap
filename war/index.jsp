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
                <li class="active"><a href="index.html">&nbsp;หน้าแรก</a></li>
                <li><a href="trip.jsp">&nbsp;สถานที่เที่ยว</a></li>
                <li><a href="hostel.jsp">&nbsp;ที่พัก</a></li>
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
</nav>
<br><br><br>
         <img src="img/pp3.jpg" width="1100" height="370" >        
<br><br>
<font color>
<marquee behavior="scroll" scrolldelay="100"><div id="result"></div></marquee>
</font>
 <br><br>
 
 <style type="text/css">
		
			*{ padding:0px; margin:0px; }
			body{ background:#D5DEE7; }
			a{ color:#C8DCE5;}
			h3{ margin: 10px 10px 10px 10px; color:#363636; font:18pt Arial, sans-serif; letter-spacing:-1px; font-weight: bold;  }
			
			.boxgrid{ 
				width: 260px; 
				height: 220px; 
				margin:10px; 
				float:left; 
				background:; 
				border: solid 1px #363636; 
				overflow: hidden; 
				position: relative; 
			}
				.boxgrid img{ 
					position: absolute; 
					top: 0; 
					left: 0; 
					border: 0; 
				}
				.boxgrid p{ 
					padding: 0 10px; 
					color:#afafaf; 
					font-weight:bold; 
					font:10pt "Lucida Grande", Arial, sans-serif; 
				}
				
 				.captionfull .boxcaption {
 					top: 260;
 					left: 0;
 				}
 				.caption .boxcaption {
 					top: 220;
 					left: 0;
 				}
				
			h3 a{}
				
		</style>
		
		
		<script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.1.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				//To switch directions up/down and left/right just place a "-" in front of the top/left attribute
				//Vertical Sliding
				$('.boxgrid.slidedown').hover(function(){
					$(".cover", this).stop().animate({top:'-260px'},{queue:false,duration:300});
				}, function() {
					$(".cover", this).stop().animate({top:'0px'},{queue:false,duration:300});
				});
				//Horizontal Sliding
				$('.boxgrid.slideright').hover(function(){
					$(".cover", this).stop().animate({left:'325px'},{queue:false,duration:300});
				}, function() {
					$(".cover", this).stop().animate({left:'0px'},{queue:false,duration:300});
				});
				//Diagnal Sliding
				$('.boxgrid.thecombo').hover(function(){
					$(".cover", this).stop().animate({top:'260px', left:'325px'},{queue:false,duration:300});
				}, function() {
					$(".cover", this).stop().animate({top:'0px', left:'0px'},{queue:false,duration:300});
				});
				//Partial Sliding (Only show some of background)
				$('.boxgrid.peek').hover(function(){
					$(".cover", this).stop().animate({top:'90px'},{queue:false,duration:160});
				}, function() {
					$(".cover", this).stop().animate({top:'0px'},{queue:false,duration:160});
				});
				//Full Caption Sliding (Hidden to Visible)
				$('.boxgrid.captionfull').hover(function(){
					$(".cover", this).stop().animate({top:'160px'},{queue:false,duration:160});
				}, function() {
					$(".cover", this).stop().animate({top:'260px'},{queue:false,duration:160});
				});
				//Caption Sliding (Partially Hidden to Visible)
				$('.boxgrid.caption').hover(function(){
					$(".cover", this).stop().animate({top:'160px'},{queue:false,duration:160});
				}, function() {
					$(".cover", this).stop().animate({top:'220px'},{queue:false,duration:160});
				});
			});
		</script>
		<div class="row" >
    <div class="col-md-4">
			<div class="boxgrid slidedown">
				<img class="cover" src="img/s1.jpg"/>
					<center><font color = "003399"><font size ="5"><b>สถานนีรถไฟหัวหิน</b></font></font></center>
					<br>
					<font color = "003399"><font size ="3.5">&nbsp;&nbsp;&nbsp;วันเปิดทำการ&nbsp;&nbsp;&nbsp;&nbsp;: ทุกวัน<br>&nbsp;&nbsp;&nbsp;เวลาเปิดทำการ&nbsp;: 24 Hour<br><br>&nbsp;&nbsp;เป็นพลับพลาจตุรมุขสร้างขึ้นในสมัยพระบาทสมเด็จพระมงกุฎเกล้าเจ้าอยู่หัว</font></font>
			</div>
	</div>
	<div class="col-md-8">
	<br>
	<center><font color = "222222"><b><h3>การเดินทาง</h3></b></font></center>
			<font color = "222222"><b><h4>รถยนต์</h4></b></font>
<font color = "333333"><font size ="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;จากกรุงเทพฯ สามารถเดินทางได้ 2 เส้นทาง คือ เส้นทางแรกใช้เส้นทางสายธนบุรี-ปากท่อ (ทางหลวงหมายเลข 35) ผ่านจังหวัดสมุทรสาคร สมุทรสงครามแล้วเลี้ยวซ้ายเข้าถนนเพชรเกษม (ทางหลวงหมายเลข 4) ผ่านจังหวัดเพชรบุรี เข้าสู่ตัวจังหวัดประจวบคีรีขันธ์ รวมระยะทางประมาณ 280 กิโลเมตร ใช้เวลาเดินทางประมาณ 3 ชั่วโมงครึ่ง
เส้นทางที่สองใช้เส้นทางสายเพชรเกษม ทางหลวงหมายเลข 4 ผ่านพุทธมณฑล นครปฐม ราชบุรี เพชรบุรี เข้าสู่จังหวัดประจวบคีรีขันธ์ รวมระยะทางประมาณ 320 กิโลเมตร ใช้เวลาเดินทางประมาณ 4 ชั่วโมง</font></font>

	</div>
	   </div>
	    		
	    <div class="row" >
    <div class="col-md-4">
			<div class="boxgrid slidedown">
				<img class="cover" src="img/s2.jpg"/>
					<center><font color = "003399"><font size ="5"><b>วัดห้วยมงคล</b></font></font></center>
					<br>
					<font color = "003399"><font size ="3.5">&nbsp;&nbsp;&nbsp;&nbsp;"วัดห้วยมงคล" นั้นแต่เดิมใช้ชื่อว่า "วัดห้วยคต" ตั้งอยู่ในชุมชนบ้านห้วยคต ต.ทับใต้ อ.หัวหิน จ.ประจวบคีรีขันธ์ ต่อมาพระบาทสมเด็จพระเจ้าอยู่หัว ทรงพระราชทานนามใหม่จาก ห้วยคต เป็น ห้วยมงคล</font></font>
			</div>
	</div>
	<div class="col-md-8">
	<br>
			<font color = "222222"><b><h4>รถไฟ</h4></b></font>
<font color = "333333"><font size ="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;จากสถานีรถไฟหัวลำโพงมีบริการขบวนรถไฟสายใต้ผ่านหัวหิน ปราณบุรีและประจวบคีรีขันธ์ ทุกวัน รถไฟท้องถิ่นมีขบวนรถกรุงเทพฯ-หัวหิน ออกจากกรุงเทพฯ 09.25 น. ถึงหัวหิน 13.45 น. และวันเสาร์-อาทิตย์และวันหยุดนักขัตฤกษ์ มีขบวนรถนำเที่ยวสวนสนประดิพัทธ์แบบเช้าไปเย็นกลับ หรือ จากสถานีรถไฟธนบุรี มีขบวนรถไฟธนบุรี-หลังสวน ออกเวลา 07.20 น. ถึงหัวหิน 11.52 น. สอบถามเพิ่มเติมได้ที่ หน่วยบริการเดินทาง การรถไฟแห่งประเทศไทย โทร. 1690, 0 2220 4334 หรือ www.railway.co.th</font></font>
	</div>
	    </div>		
	    
	   <div class="row" >
    <div class="col-md-4">
			<div class="boxgrid slidedown">
				<img class="cover" src="img/s3.jpg"/>
					<center><font color = "003399"><font size ="5"><b>เขาช่องกระจก</b></font></font></center>
					<br>
					<font color = "003399"><font size ="3.5">&nbsp;&nbsp;&nbsp;&nbsp;เขาช่องกระจก เป็นภูเขาขนาดย่อมสูง 245 เมตร เหนือระดับน้ำทะเล ตั้งอยู่ริมอ่าวประจวบฯ ในบริเวณ วัดธรรมิการามวรวิหาร ยอดเขามีช่องทะลุโปร่งคล้ายกรอบกระจก ทางขึ้นเป็นบันไดคอนกรีต จำนวน 396 ขั้น</font></font>
			</div>
	</div>
	<div class="col-md-8">
	<br>
			<font color = "222222"><b><h4>รถโดยสารประจำทาง</h4></b></font>
<font color = "333333"><font size ="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;จากสถานีขนส่งสายใต้ ถนนบรมราชชนนี บริษัท ขนส่ง จำกัด มีบริการรถโดยสารประจำทางสายกรุงเทพฯ-ประจวบคีรีขันธ์ กรุงเทพฯ-หัวหิน กรุงเทพฯ-ปราณบุรี และกรุงเทพฯ-บางสะพาน เป็นประจำทุกวัน บริษัทที่ให้บริการเดินรถเส้นทางสายกรุงเทพฯ-ประจวบคีรีขันธ์ บริษัทหัวหิน-ปราณทัวร์ โทร. 0 2884 6191-2 (ตั้งแต่เวลา 04.00–22.20 น.), บริษัทพุดตานทัวร์ โทร. 0 2435 5302 , 0 2435 7414 (ประจวบ)โทร. 0 3261 1411 (ตั้งแต่เวลา 06.00–01.00 น.), บริษัทบางสะพานทัวร์ โทร. 0 2435 5105, 0 2884 8895 บางสะพาน โทร. 0 3269 1267 บ้านกรูด โทร.0 3269 5074 (รถออกเวลา 07.30 น. รถบ้านกรูดออกเวลา 12.30 น. (วันเสาร์เพิ่มรอบ 07.30 น.) ติดต่อสอบถามรายละเอียดเพิ่มเติมได้ที่สถานีขนส่งสายใต้ โทร. 0 2435 1199, 0 2434 7192, 0 2435 5605 หรือ www.transport.co.th</font></font>
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

