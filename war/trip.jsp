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
                <li><a href="index.jsp">&nbsp;หน้าแรก</a></li>
                <li class="active"><a href="trip.jsp">&nbsp;สถานที่เที่ยว</a></li>
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
               <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=getfirstname_ses%> (ลงชื่อออก)</a></li>
                     <% } %>    
           </ul>
        </div>
    </div>
</div>
</body>
<br>
<body>

<div class="col-lg-12">
			<legend><h4><b>สถานที่ท่องเที่ยว</b></h4></legend>
			</div>
			<div class="row">
				<div class="col-md-12">
 </div>
 </div>
<section>
<br>
<div id="datalist"></div>
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
</div>
</body>
</html>

<script>
		$(document).ready(function() {
							var data = '{"trip":['
									+ '{"img":"Plern.jpg","head":"เพลินวาน","detail":" สถานที่ท่องเที่ยวย้อนยุคแนวๆ เสมือนพิพิธภัณฑ์หมู่บ้านย้อนยุคที่มีชีวิตอยู่ โดยมีทั้งร้านอาหาร ร้านกาแฟ ร้านเสื้อผ้า ร้านขายขนม และร้านเหล้าในสมัยก่อนรูปแบบของหมู่บ้านนี้จะเป็นร้านค้าที่ทำจากไม้ ให้ความรู้สึกเหมือนอยู่ในช่วงปี 2499 อีกครั้งซึ่งเพลินวานเป็นสถานที่ที่เน้นการขายอารมณ์และความรู้สึกมากกว่าตัวผลิตภัณฑ์" },'
									+ '{"img":"water.jpg","head":"อุทยานแห่งชาติน้ำตกห้วยยาง","detail":" ธรรมชาติแห่งสายธาร ริมเขาตะนาวศรี อุทยานแห่งนี้อยู่ใน อ.ทับสะแก ตั้งอยู่ในบริเวณเทือกเขาตะนาวศรีโดยมียอดเขาหลวงเป็นยอดเขาสูงสุด ในอุทยานยังคงความอุดมสมบูรณ์ด้วยพันธุ์พืชต่างๆ ในส่วนของน้ำตกห้วยยางนั้นมีทั้งหมด 9 ชั้น น้ำตกชั้นล่างๆ จะมีขนาดเล็กธารน้ำไหลลงมาตามโขดหินสูงประมาณ 2-5 ม. สามารถลงเล่นน้ำได้ ส่วนน้ำตกชั้นที่ 5 จะเป็นจุดชมวิวที่งดงาม โดยสายน้ำจะตกจากผาสูงประมาณ 15 ม. นอกจากนั้น บริเวณทางแยกที่ชั้น 4 จะเป็นทางเดินไปยังจุดชมวิวซึ่งสามารถมองเห็นทัศนียภาพได้ไกลถึงชายทะเล " },'
									+ '{"img":"P3.jpg","head":"พระที่นั่งคูหาคฤหาสน์ (ถ้ำพระยานคร) ","detail":" พระที่นั่งบนพื้นดิน งามดั่งเทวดาเนรมิต” พระที่นั่งคูหาคฤหาสน์ ตั้งอยู่ภายในถ้ำพระยานคร หาดแหลมศาลา ในเขตอุทยานแห่งชาติเขาสามร้อยยอด อ.กุยบุรี สร้างขึ้นในปี 2433 เพื่อเป็นที่ประทับในคราวเสด็จประพาสต้นของรัชกาลที่ 5 มีลักษณะเป็นพลับพลาจัตุรมุขเปิดโล่งทำด้วยไม้สักประดับด้วยช่อฟ้าใบระกา เมื่อพระอาทิตย์สาดแสงผ่านปล่องถ้ำ แสงนั้นจะส่องกระทบองค์พระที่นั่งดูงดงามเรืองรองเป็นที่น่าประทับใจยิ่งนัก " },'
									+ '{"img":"P4.jpg","head":"เกาะทะลุ","detail":" เกาะในฝัน ที่มีมากกว่าการเที่ยวทะเล เกาะทะลุเป็นเกาะส่วนตัวใน อ.บางสะพานน้อย เป็นเกาะที่นักท่องเที่ยวสามารถมาทำกิจกรรมได้หลากหลาย อาทิ เล่นน้ำชายหาดหรือดำน้ำดูปะการังในทะเลสวยใส พายเรือคายัค หมกทรายเพื่อสุขภาพ เล่นเรือใบ และอีกหนึ่งไฮไลท์ประจำเกาะนั้นก็คือ การนั่งเรือไปชมโตรกผาสีแดงที่มีช่องทะลุขนาดใหญ่จนเป็นที่มาของชื่อเกาะทะลุ หากใครที่ชื่นชอบการท่องเที่ยวควบคู่กับการทำกิจกรรมไปด้วยแล้ว เกาะทะลุก็เป็นอีกหนึ่งเกาะที่น่าสนใจอยู่ไม่น้อย" },'
									+ '{"img":"P5.jpg","head":"พระมหาธาตุเจดีย์ภักดีประกาศ","detail":" ค้นหาความหมายของเลข 5 และ 9 บนยอดเขาธงชัย พระมหาธาตุเจดีย์ภักดีประกาศ ตั้งอยู่ที่ อ.บางสะพาน สร้างขึ้นเพื่อเฉลิมพระเกียรติและถวายเป็นพระราชกุศลในวโรกาสที่พระบาทสมเด็จพระเจ้าอยู่หัวครองราชย์ครบ 50 ปี สร้างตามสถาปัตยกรรมไทย และเป็นผลงานชิ้นสุดท้ายของ ม.ร.ว.มิตรารุณ เกษมศรี ศิลปินแห่งชาติ ชื่อของพระมหาธาตุเจดีย์นั้นมีความหมายว่า เป็นเจดีย์ที่ผู้จงรักภักดีสร้างถวาย เป็นอาคารสูง 5 ชั้นประกอบด้วยหมู่พระเจดีย์ 9 องค์ องค์กลางซึ่งสูงที่สุดประดิษฐานพระบรมสารีริกธาตุและพระพุทธรูปทองคำแท้ บริเวณระเบียงแต่ละชั้นยังสามารถชมวิวทะเลที่งดงามได้ด้วย " }]}';

							var jsonobj = eval("(" + data + ")");
							for (var i = 0; i < jsonobj.trip.length; i++) {
								$("#datalist").append("<ul class=\"media-list\"><li class=\"media\"><div class=\"row\"><div class=\"col-lg-3\"><a class=\"media-left\" href=\"#\"><img src=\"img/"+jsonobj.trip[i].img+"\" alt=\"\"widht=\"150\"  HEIGHT=\"150\"></a></div><div class=\"col-lg-9\"><div class=\"media-body\"><h4 class=\"media-heading\">"+jsonobj.trip[i].head+"</h4><p>"+jsonobj.trip[i].detail+"</p></div></div></div></li></ul>");
								
							}
						});
</script>

