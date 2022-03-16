<?php
session_start();
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{



?>

<!DOCTYPE html>
<html>
<head>
    <title>About</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
<?php include('includes/header.php');?>
    
<?php if($_SESSION['alogin']!="")
{
 include('includes/menubar.php');
}
 ?>
   
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">About Database Project of Student Registration System & Developer  </h1>
                    </div>
                </div>
                             
            <div class="row">
                <div class="col-md-6">
                     <p>
Student Registration System - Database Project is Developed for the Purpose of Registering Students for Each Academic Year & Semester Subjects in Smarter & Systematic Way. Project is Developed By G.P.V.Laksahan. Currently a Third Year (Batch 2015/2016) Computer Science (Special) Undergratudate of Faculty of Applied Sciences - South Eastern University of Sri Lanka. <br>Registration No : SEU/IS/15/PS/051 <br>Index No : PS 0790
<hr/> 

Student Registration System is Developed as a Database Project for the Third Year First Semester Computer Science Subject - CSM 31022 - Database Management System. Special Thanks & Credit to Mr.M.M.M.Mufassirin (Computer Science Lecturer - FAS -SEUSL). Also Credit to the Division of Computer Science - Department of Mathematical Sciences - Faculty of Applied Sciences - South Eastern University of Sri Lanka.

<hr/>

								Click Here to Contact Developer<br>
								<a href="https://web.facebook.com/VenuraLaksahan" target="_blank">Facebook</a><br>
								<a href="https://twitter.com/VenuraLaksahan" target="_blank">Twitter</a><br>
								<a href="https://www.instagram.com/venuralaksahan/" target="_blank">Instagram</a><br><br>
								
								- Developed By Gallage Prageeth Venura Laksahan © 2019 -
							
							</p>
                        
                </div>
                </form>
                <div class="col-md-6">
                    <div class="col-md-6">
					<div class="col-md-6">
					<div class="col-md-6">
					<div class="col-md-6">
					<div class="col-md-6">
					<div class="col-md-6">
                        <img src="assets/img/01.jpg" alt="Image" align="center">
						</div>
						</div>
						</div>
						</div>
                       </div>
                    </div>
                                    </div>

            </div>





        </div>
    </div>
    
  <?php include('includes/footer.php');?>
    
</body>
</html>
<?php } ?>
