<?php require_once('header.php');?> 
<!--about_main开始--> 
<div class="main">
	<!--左则slide-->
	<?php require_once('slide.php');?> 
    <!--文章内容-->
    <div class="right">
    	<div class="submenu"><a href="">首页</a>-><a href="">新闻动态</a>-></div>
        <div class="article_content">
        	<?php
            $sql_articleshow="select * from article where id='".$_GET['id']."'";
			$result_articleshow=mysql_query($sql_articleshow);
			$row_articleshow=mysql_fetch_array($result_articleshow);
			?>
        	<div class="title"><?=$row_articleshow['title']?></div>
            <div class="from">来源：<?=$row_articleshow['comefrom']?>  发布日期：<?=$row_articleshow['pubdate']?></div>
            <div class="detail"><?=$row_articleshow['content']?></div>
        </div>
    </div>
</div>
<!--main结束--> 
<?php require_once('footer.php');?> 