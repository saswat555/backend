<!doctype html>
<html lang="en" class="md">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
   
      <link rel="stylesheet" href="vendor/bootstrap-4.1.3/css/bootstrap.min.css">
      <!-- Material design icons CSS -->
      <link rel="stylesheet" href="vendor/materializeicon/material-icons.css">
      <!-- swiper carousel CSS -->
      <link rel="stylesheet" href="vendor/swiper/css/swiper.min.css">
      <!-- app CSS -->
      <link id="theme" rel="stylesheet" href="css/style.css" type="text/css">
      <title>partner app</title>
   </head>
   <body class="color-theme-yellow push-content-right theme-light">
      <div class="loader justify-content-center ">
         <div class="maxui-roller align-self-center">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
         </div>
      </div>
      <div class="wrapper">
         <!-- sidebar left start -->
         <?php include("sidebar.php");?>
         <!-- fullscreen menu ends -->
         <!-- page main start -->
         <div class="page">
            <form class="searchcontrol">
               <div class="input-group">
                  <div class="input-group-prepend">
                     <button type="button" class="input-group-text close-search"><i class="material-icons">keyboard_backspace</i></button>
                  </div>
                  <input type="email" class="form-control border-0" placeholder="Search..." aria-label="Username">
               </div>
            </form>
            <header class="row m-0 fixed-header no-shadow">
               <div style="margin-left: 15px;margin-top: 14px;">
                  <a href="index.php?a=12"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="" class="logo">
                  Earning Detail</a>
               </div>
               <div class="right">
                  <a href="javascript:void(0)" class="menu-right" style="display: none;">211</a>
               </div>
            </header>
            <div class="page-content">
               <div class="tab-content h-100" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
                     <div class="content-sticky-footer">
                        <div class="card text-center earn_main">
                           <div class="card-header back_credit">
                           </div>
                           <div class="card-body earn_body_pre">
                              <p class="earn_main">Monthly Earning</p>
                              <h3 style="margin-top: -14px;">&#8377;0</h3>
                              <hr style="margin-bottom: 6px;">
                              <p class="total_job">Total jobs
                                 <br>
                                 <span class="total_job2"><b>0</b></span>
                              </p>
                              <p class="earning_for">Earning for
                                 <br>
                                 <span class="mar_2020"><b>Mar 2020</b></span>
                              </p>
                           </div>
                           <div class="card-footer text-muted back_credit">
                           </div>
                        </div>
                        <br>
                     </div>
                  </div>
                  <?php include("ongoing.php");?>
                  <?php include("menu.php");?>
               </div>
            </div>
         </div>
         <!-- page main ends -->
      </div>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="js/jquery-3.2.1.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="vendor/bootstrap-4.1.3/js/bootstrap.min.js"></script>
      <!-- Cookie jquery file -->
      <script src="vendor/cookie/jquery.cookie.js"></script>
      <!-- Swiper carousel jquery file -->
      <script src="vendor/swiper/js/swiper.min.js"></script>
      <!-- Application main common jquery file -->
      <script src="js/main.js"></script>
      <!-- page specific script -->
     
   </body>
</html>