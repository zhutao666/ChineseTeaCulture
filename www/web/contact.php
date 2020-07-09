<?php require_once('header.php');?>
<!--about_main开始--> 
<div class="main">
	<!--左则slide-->
	<?php require_once('slide.php');?>
    <!--联系我们-->
    <div class="right">
    	<div class="submenu"><a href="">首页</a>-><a href="">联系我们</a></div>
        <div class="contact_content">
        	<div class="contact_img"><img src="images/contact.jpg"></div>
            <div class="detail">
            <?php
            $sql_about="select * from single where id=11";
			$result_about=mysql_query($sql_about);
			$row_about=mysql_fetch_array($result_about);
			echo $row_about['content'];
			?>
          </div>
        </div>
    </div>
</div>
<!--main结束--> 
<?php require_once('footer.php');?>