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
          @include('web.layout.sidebar')
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
                  <a href="credit_history.php"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="" class="logo">
                  Recharge Wallet</a>
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
                              <div class="card bor_2_bot">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mar3_mar3">
                                          <h5 style="font-size: 15px;"><img src="img/wal.png" height="17" style="padding-right: 7px;margin-top: -7px;">Current Balance <span style="float: right;">211 credits</span></h5>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <button class="btn butt_cre">Rs. 2000<br>
                              <span class="butt_span">200 credits</span>
                              </button>
                              <button class="btn butt_cre">Rs. 2000<br>
                              <span class="butt_span">200 credits</span>
                              </button>
                              <button class="btn butt_cre">Rs. 2000<br>
                              <span class="butt_span">200 credits</span>
                              </button>
                              <button class="btn butt_cre">Rs. 2000<br>
                              <span class="butt_span">200 credits</span>
                              </button>
                              <button class="btn butt_cre">Rs. 2000<br>
                              <span class="butt_span">200 credits</span>
                              </button>
                              <button class="btn butt_cre">Rs. 2000<br>
                              <span class="butt_span">200 credits</span>
                              </button>
                           </div>
                        </div>
                        <br>
                     </div>
                  </div>
                @include('web.layout.ongoing')
                   @include('web.layout.earning')
                   @include('web.layout.menu')
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
   </body>
</html>