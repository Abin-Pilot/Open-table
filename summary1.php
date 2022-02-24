<?php 
    
    session_start();
    require "includes/functions.php";
    require "includes/db.php";
 // if(!isset($_SESSION['user'])) {
 //        header("location: logout.php");
 //    }
    
    $result = "";
    $pagenum = "";
    $per_page = 20;
        
        $count = $db->query("SELECT * FROM reservation");
        
        $pages = ceil((mysqli_num_rows($count)) / $per_page);
        
        if(isset($_GET['page'])) {
            
            $page = $_GET['page'];
            
        }else{
            
            $page = 1;
            
        }
                        
        $start = ($page - 1) * $per_page;
        $uid=$_SESSION['uid'];
        $reserve = $db->query("SELECT * FROM `items` WHERE `userid`='$uid' ");
        
        if($reserve->num_rows) {
            
            $result = "<table class='table table-hover'>
                        <thead>
                            <th>S/N</th>
                            <th>Item ID</th>
                            <th>Order ID</th>

                            <th>Food</th>
                            <th>Quantity</th>
                            <th>Date&time</th>

                        </thead>
                        <tbody>";
            
            $x = 1;
            
            while($row = $reserve->fetch_assoc()) {
                
               $item_id = $row['item_id'];
                $order_id = $row['order_id'];
                $food = $row['food'];
                $qty = $row['qty'];
                $date_o = $row['date_o'];
               //  if ($is_reserved==2){
               //      $status="cancelled";
               //  }
               // elseif ($is_reserved==0){
               //      $status="cancelled by hotel";
               //  }
               //  else
               //  {
               //          if($is_reserved==1)
               //              $ACTION="<a id=action_".$reserve_id." href='viewreservation.php?delete=".$reserve_id."' onclick='return check();'><i class='pe-7s-close-circle'></i></a>";
                        
                            
               //      //echo '<script type="text/javascript">checkActionStatus('.$reserve_id.');</script>';
               //  }


                
                
                $result .=  "<tr>
                                <td>$x</td>
                                <td>$item_id</td>
                                <td>$order_id</td>
                                <td>$food</td>
                                <td>$qty</td>
                                <td>$date_o</td>
                            </tr>";
                                                                
                                    
                $x++;
            }
            
            $result .= "</tbody>
                        </table>";
            
        }else{
            
            $result = "<p style='color:red; padding: 10px; background: #ffeeee;'>No Order available yet</p>";
            
        }
    
    if(isset($_GET['delete'])) {
        
        $delete = preg_replace("#[^0-9]#", "", $_GET['delete']);
        
        if($delete != "") {
            
            $sql = $db->query("UPDATE reservation set is_reserved=2 WHERE reserve_id='".$delete."'");
        
            if($sql) {
                
                echo "<script>alert('Successfully deleted')</script>";
                
            }else{
                
                echo "<script>alert('Operation Unsuccessful. Please try again')</script>";
                
            }
            
        }
        
        
    }
    
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Pescado Sea food Restaurant</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    
    
    <link href="assets/css/style.css" rel="stylesheet" />
    
    <script>
    
        function check() {
            
            return confirm("Are you sure you want to Cancel the Reservation,No refund is available for Cancellation");
            
        }
        
    </script>
    
</head>
<body>


<div class="wrapper">
   <!--  <div class="sidebar" data-color="#0000ffff" opacity=".5" data-image="assets/img/sidebar-5.jpg">
 -->
    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


   

    <!-- <div class="main-panel"> -->
        <nav class="navbar navbar-default navbar-fixed" style="background: #FF5722;">
            <!-- <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar" style="background: #fff;"></span>
                        <span class="icon-bar" style="background: #fff;"></span>
                        <span class="icon-bar" style="background: #fff;"></span>
                    </button>
                    <a class="navbar-brand" href="#" style="color: #fff;"></a>
                </div> -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="login-form-20/logout.php" style="color: #fff;">
                                LOG OUT
                            </a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="summary1.php" style="color: #fff;">
                                HISTORY
                            </a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="viewreservation.php" style="color: #fff;">
                                RESERVATIONS
                            </a>
                        </li>
                    </ul>
                     <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="reservation.php" style="color: #fff;">
                                BOOK TABLE
                            </a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="menu.php" style="color: #fff;">
                                ORDER
                            </a>
                        </li>
                    </ul>
                        
                    
                   
                    

                    
                </div>
           <!--  </div> -->
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Order History</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                                
                                <?php echo $result; ?>

                            </div>
                        </div>
                    </div>                    

                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                
                <p class="copyright pull-right">
                    &copy; 2016 <a href="index.php" style="color: #FF5722;">Pescado Sea food Restaurant</a>
                </p>
            </div>
        </footer>

   <!--  </div> -->
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Checkbox, Radio & Switch Plugins -->
    <script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>
    
    

</html>
