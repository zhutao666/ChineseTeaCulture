<?php require_once('header.php');?>
<!--main开始--> 
<div class="main">
	<!--左则slide-->
	<?php require_once('slide.php');?>
    <!--文章标题列表-->
    <div class="right">
    	<div class="submenu"><a href="">首页</a>-><a href="">新闻动态</a></div>
        <div class="article_content">
<?php
//记录的总条数
$total_num=mysql_num_rows(mysql_query("select id from article"));
//每页记录数
$pagesize=7;
//总页数
$page_num=ceil($total_num/$pagesize);
//设置页数
$page=$_GET['page'];
if($page<1 || $page==''){
	$page=1;
	}
if($page>$page_num){
	$page=$page_num;
	}
//计算机记录的偏移量
$offset=$pagesize*($page-1);
//上一页、下一页
$prepage=($page<>1)?$page-1:$page;
$nextpage=($page<>$page_num)?$page+1:$page;
$result_articlelist=mysql_query("select * from article order by id desc limit $offset,$pagesize");
if($total_num>0){
while($row_articlelist=mysql_fetch_array($result_articlelist)){
			 ?>
        	 <div class="row">
             	<div class="title"><a href="article_show.php?id=<?=$row_articlelist['id']?>"><?=$row_articlelist['title']?></a></div>
                <div class="date"><?=$row_articlelist['pubdate']?></div>
             </div>
             <?php
				}
			 ?>
        </div>
        <div class="page">
        	<a><?=$page?>/<?=$page_num?></a>&nbsp;&nbsp;<a href="?page=1">|<</a>&nbsp;&nbsp;	<a href="?page=<?=$prepage?>"><<</a>&nbsp;&nbsp;
            <?php
            for($i=1;$i<=$page_num;$i++){
			?>
            <a href="?page=<?=$i?>"><?=$i?></a>
            <?php }?>
            &nbsp;&nbsp;<a href="?page=<?=$nextpage?>">>></a>&nbsp;&nbsp;<a href="?page=<?=$page_num?>"> >|</a> 
        </div>
        <?php
		}else{
			echo "暂无记录";
			}
		?>
    </div>
</div>
<!--main结束--> 
<?php require_once('footer.php');?>