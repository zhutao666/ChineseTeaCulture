<?php
session_start();
require_once('session.php');
require_once('inc/conn.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<body>
<?php
	if ($_POST['qqnum']==""){
		echo "<script>alert('QQ号码不能为空！');history.go(-1)</script>";
		exit;
		}
$sql="insert into qq (title,qqnum,truename) values ('".$_POST['title']."','".$_POST['qqnum']."','".$_POST['truename']."')";
mysql_query($sql);
echo "<script>alert('添加成功！');window.location.href='qq_list.php';</script>";
mysql_close($conn);
?>
</body>
</html>
