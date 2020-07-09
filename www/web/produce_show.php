<?php require_once('header.php');?>
<!--about_main开始--> 
<div class="main">
	<!--左则slide-->
	<?php require_once('slide.php');?>
    <!--产品内容-->
    <div class="right">
    	<div class="submenu"><a href="">首页</a>-><a href="">产品展示</a>-></div>
        <div class="produce_show_content">
        	<?php
            $sql_produceshow="select * from produce where id='".$_GET['id']."'";
			$result_produceshow=mysql_query($sql_produceshow);
			$row_produceshow=mysql_fetch_array($result_produceshow);
			?>
        	<div class="title"><?=$row_produceshow['title']?></div>
            <div class="detail">
        		<?=$row_produceshow['content']?>
            </div>
        </div>
    </div>
</div>
<!--main结束--> 
<?php require_once('footer.php');?>