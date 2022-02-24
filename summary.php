<?php 
	
	session_start();
	error_reporting(0);
	
	$order_id = $_SESSION['order_id'];
	$name = $_SESSION['name'];
	
	unset($_SESSION['order_id']);
	
	unset($_SESSION['name']);
	
	unset($_SESSION['cart_array']);
	
?>

<!Doctype html>

<html lang="en">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<meta name="description" content="" />

<meta name="keywords" content="" />

<head>
	
<title>MFORS</title>

<link rel="stylesheet" href="css/main.css" />

<script src="js/jquery.min.js" ></script>

<script src="js/myscript.js"></script>
	
</head>

<body>
	
<header>
	
	<div class="nav_toggle" onclick="toggle_class();">
		
		<span class="toggle_icon"></span>
		
	</div>
	
	<div onclick="remove_class()">
	
	<div class="main_nav">
		
		<h2>Pescado Sea food Restaurant</h2>
		
		<ul class="default_links">
			
			<li><a href="index.php">HOME</a></li>
			<li><a href="menu.php">ORDER</a></li>
			<li><a href="reservation.php">BOOK TABLE</a></li>
			<!-- <li><a href="reservation.php">RESREVATION</a></li> -->
			<!-- <li><a href="summary.php">SUMMARY</a></li> -->
			<li><a href="viewreservation.php">RESERVATIONS</a></li>
			
			<!-- <li><a href="gallery.php">GALLERY</a></li> -->
			<!-- <li><a href="basket.php">ORDER</a></li> -->
			<!-- <li><a href="../resto/login-form-20/login.php">LOGIN</a></li>
			<li><a href="../resto/signup-form-19/register.php">SIGN UP</a></li> -->
			<li><a href="login-form-20/logout.php">LOG OUT</a></li>
		</ul>
		
		<p class="clear"></p>
		
	</div>
	
	<p class="clear"></p>
	
	</div>
	
</header>

<div class="responive_nav">
	
	<div class="nav_section_img">
		
		<div class="nav_section_div">
			
			<h3>Pescado Sea food Restaurant</h3>
			
		</div>
		
	</div>
	
	<div class="nav_section">
		
		<ul>
			
			<li><a href="index.php"><span class="home">Home</span></a></li>
			<li><a href="menu.php"><span class="menu">Menu</span></a></li>
			<li><a href="reservation.php"><span class="reserve">Book Table</span></a></li>
			<li><a href="gallery.php"><span class="gallery">Gallery</span></a></li>
			<li><a href="basket.php"><span class="order">Order</span></a></li>
			
		</ul>
		
	</div>
	
</div>

<div class="parallax_basket" onclick="remove_class()">
	
	<div class="parallax_head_basket">
		
		<h2>Order</h2>
		<h3>Summary</h3>
		
	</div>
	
</div>

<div class="content remove_pad" onclick="remove_class()">
	
	<div class="inner_content on_parallax">
		
		<h2><span class="s_summary">Order Success</span></h2>
		
		<div class="order_holder">
			
			<p class="summary_p">Thank you for oredering food from pescado seafoods <?php echo $name; ?>. Your <span>Order number</span> is: <?php echo $order_id; ?>.on the way. Please note that your order number should be kept safe</p>
			
		</div>
		
		
		
	</div>
	
</div>

<div class="content" onclick="remove_class()">
	
	<div class="inner_content">
		
		<div class="contact">
			
			<div class="left">
				
				<h3>LOCATION</h3>
				<p>Fathima Nagar, Mahatma Nagar, Nellikunnu, , Kerala 680006, India Thrissur</p>
				<!-- <p>Kano State</p> -->
				
			</div>
			
			<div class="left">
				
				<h3>CONTACT</h3>
				<p>9072968843</p>
				<p>pescado@gmail.com</p>
				
			</div>
			
			<p class="left"></p>
			
			<div class="icon_holder">
				
				<a href="#"><img src="image/icons/Facebook.png" alt="image/icons/Facebook.png" /></a>
				<a href="#"><img src="image/icons/Google+.png" alt="image/icons/Google+.png"  /></a>
				<a href="#"><img src="image/icons/Twitter.png" alt="image/icons/Twitter.png"  /></a>
				
			</div>
			
		</div>
		
	</div>
	
</div>

<div class="footer_parallax" onclick="remove_class()">
	
	<div class="on_footer_parallax">
		
		<p>&copy; <?php echo strftime("%Y", time()); ?> <span>Pescado Seafood Restaurant</span>. All Rights Reserved</p>
		
	</div>
	
</div>

</body>

</html>