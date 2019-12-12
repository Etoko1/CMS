<?php include "functions/function.php";

?>


<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>A news Platform</title>
<link rel="stylesheet" href="styles/style.css" media="all" /> 
</head>

<body>
<?PHP //include("counter.php"); ?> 
<!--Main Container start-->
<div class="container">
    
    <div class="header"><!--Header starts-->
    	<a href="index.php"><img id="logo" src="images/flower-1283602_640.jpg" style="width:1000px;height:110px;" /></a>
    </div>
    <!--Header end-->
    
    <!--Navagation Bar start-->
    <?php include("includes/navbar.php"); ?>
    <!--Navagation Bar Ends-->
    <div class="content_wrapper">
    <!--Content Area start-->
  <?php include("includes/post_content.php"); ?>
    <!--Content area Ends-->
    
   <!--Sidebar starts-->
     <?php include("includes/sidebar.php"); ?>
    <!--Sidebar ends-->
    
    </div>
    
    <!--Footer starts-->
    <div class="footer_area">
   <h1 style="padding:20px; text-align:center"><?php echo copyright(2018);?> Christopher Glikpo</h1>
    </div><!--Footer ends-->




</div>
</body>

</html>