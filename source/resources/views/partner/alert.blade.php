<!doctype html>
<html lang="en" class="md">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
      <link rel="apple-touch-icon" href="img/f7-icon-square.png">
      <link rel="icon" href="img/f7-icon.png">
      <!-- Bootstrap CSS -->
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
               <div class="left">
                  <a href="index.php" class="menu-left"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="" class="logo">
                  Alerts (5)</a>
               </div>
               <div class="right">
                  <a href="javascript:void(0)" class="menu-right" style="display: none;">211</a>
               </div>
            </header>
            <div class="page-content">
               <div class="tab-content h-100" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
                     <div class="content-sticky-footer" style="margin-top: 20px;">
                        <div class="row m-0">
                           <div class="col-12">
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body alert_a">
                                          <p class="alert_p">IMPORTANT</p>
                                          <p class="alertPtwo">No compulsion to do jobs  <span class="alert_pthree">Today</span></p>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <div class="card " style="background-color: #E5F1FF;">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body alert_a">
                                          <p class="alert_p">IMPORTANT</p>
                                          <p class="alertPtwo">No compulsion to do jobs <span class="alert_green">Yesterday</span></p>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <div class="card " style="background-color: #E5F1FF;">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body alert_a">
                                          <p class="alert_p">IMPORTANT</p>
                                          <p class="alertPtwo">No compulsion to do jobs <span class="alert_green">Yesterday</span></p>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <div class="card " style="background-color: #E5F1FF;">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body alert_a">
                                          <p class="alert_p">IMPORTANT</p>
                                          <p class="alertPtwo">No compulsion to do jobs <span class="alert_green">Yesterday</span></p>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <div class="card " style="background-color: #E5F1FF;">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body alert_a">
                                          <p class="alert_p">IMPORTANT</p>
                                          <p class="alertPtwo">No compulsion to do jobs <span class="alert_green">Yesterday</span></p>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <br>
                     </div>
                  </div>
                  <?php include("ongoing.php");?>
                  <?php include("earning.php");?>
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
      <script>
         $(window).on('load', function() {
         
             /*Swiper carousel */
             $('.nav-tabs a[href="#nav-cart"]').click(function() {
                 setTimeout(function() {
                     var mySwiper4 = new Swiper('.carstcarousel', {
                         slidesPerView: 1,
                         spaceBetween: 0,
                         pagination: {
                             el: '.swiper-pagination',
                             clickable: true,
                         }
                     });
                 }, 800)
         
             });
             /*Swiper carousel */
             $('.nav-tabs a[href="#nav-profile"]').click(function() {
                 setTimeout(function() {
                     var mySwiper5 = new Swiper('.userprofilehome', {
                         slidesPerView: 2,
                         spaceBetween: 0,
                         pagination: {
                             el: '.swiper-pagination',
                             clickable: true,
                         }
                     });
                 }, 800)
         
             });
             /*Swiper carousel */
             var mySwiper3 = new Swiper('.mostviewed', {
                 slidesPerView: 2,
                 spaceBetween: 0,
                 pagination: {
                     el: '.swiper-pagination',
                     clickable: true,
                 }
             });
         
             /*Swiper carousel */
             var mySwiper2 = new Swiper('.categories', {
                 slidesPerView: 'auto',
                 spaceBetween: 0,
                 pagination: {
                     el: '.swiper-pagination',
                     clickable: true,
                 }
             });
             /*Swiper carousel */
             var mySwiper1 = new Swiper('.homepage-restaurant', {
                 slidesPerView: 1,
                 spaceBetween: 15,
                 pagination: {
                     el: '.swiper-pagination',
                     clickable: true,
                 }
             });
             /* tooltip */
             $(function() {
                 $('[data-toggle="tooltip"]').tooltip()
             });
         });
         
      </script>
   </body>
</html>