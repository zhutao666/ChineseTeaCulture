<?php require_once('header.php');?>
<!--“新闻动态、关于我们、最新产品“形成的横向区域开始-->
<div class="container"> 
  <!--新闻动态-->
  <div class="news">
    <div class="n_top">
      <div class="cat_title">新闻动态</div>
      <div class="more"><a href="article_list.php">更多</a></div>
    </div>
    <div class="n_center"> <img src="images/news_thumbnail.jpg" width="111" height="90"> 
      <div>
      <?php
		$sql_settop="select * from article where posid='setindex,settop' order by id desc limit 0,1";
		$result_settop=mysql_query($sql_settop);
		$row_settop=mysql_fetch_array($result_settop);
	  ?>
      <span style="font-weight:bold;"><?=mb_substr($row_settop['title'],0,13,'utf-8')?></span><br /><?=mb_substr($row_settop['content'],0,107,'utf-8')?>...[<a href="article_show.php?id=<?=$row_settop['id']?>">详细</a>] 
      </div>
    </div>
    <div class="n_bottom">
    <?php
		$sql_article="select * from article where posid='setindex' order by id desc limit 0,5";
		$result_article=mysql_query($sql_article);
		while($row_article=mysql_fetch_array($result_article)){
    ?>
    	<a href="article_show.php?id=<?=$row_article['id']?>"><?=mb_substr($row_article['title'],0,22,'utf-8')?></a>
   <?php
		}
   ?>
   </div>
  </div>
  <!--关于我们-->
  <div class="about">
    <div class="a_top">
      <div class="cat_title">关于我们</div>
    </div>
    <div class="a_center"> <img src="images/about_img.jpg" width="381" height="148"> </div>
    <div class="a_bottom"> 
    <?php
    $sql_about="select * from single where id=10";
	$result_about=mysql_query($sql_about);
	$row_about=mysql_fetch_array($result_about);
	echo mb_substr($row_about['content'],0,160,'utf-8');
	?>
   ...[<a href="about.php?id=10">详细</a>] </div>
  </div>
  <!--最新产品-->
  <div class="produce">
    <div class="p_top">
      <div class="cat_title">最新产品</div>
      <div class="more"><a href="produce_list.php">更多</a></div>
    </div>
    <div class="p_bottom"> 
      <!--这里是产品缩略图轻播效果--> 
      <div id="slideBox" class="slideBox">
			<div class="bd">
				<ul>
<?php
$sql_produce="select * from produce where posid='setindex' order by id desc limit 0,5";
$result_produce=mysql_query($sql_produce);
while($row_produce=mysql_fetch_array($result_produce)){
?>
					<li><a href="produce_show.php?id=<?=$row_produce['id']?>" target="_blank"><img src="<?=$row_produce['thumbnail']?>" width="270" height="270" /></a></li>
<?
	}
?>
				</ul>
			</div>
		</div>
		<script type="text/javascript">
		jQuery(".slideBox").slide({mainCell:".bd ul",effect:"left",autoPlay:true});
		</script>
    </div>
  </div>
</div>
<!--“新闻动态、关于我们、最新产品“形成的横向区域结束-->
<?php require_once('footer.php');?>