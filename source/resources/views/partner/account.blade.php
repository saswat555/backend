<!doctype html>
<html lang="en" class="md">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
      <link rel="stylesheet" href="vendor/bootstrap-4.1.3/css/bootstrap.min.css">
      <link rel="stylesheet" href="vendor/materializeicon/material-icons.css">
      <link rel="stylesheet" href="vendor/swiper/css/swiper.min.css">
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
                  <a href="index.php"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="" class="logo">
                  Account Details</a>
               </div>
               <div class="right">
                  <a href="javascript:void(0)" class="menu-right" style="display: none;">211</a>
               </div>
            </header>
            <div class="page-content">
               <div class="tab-content h-100" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
                     <div class="content-sticky-footer" style="margin-top: 20px;">
                        <div class="row m-0" id="ban_dea" style="display: none;">
                           <h2 class="bank_main_h2">Bank Details</h2>
                           <hr style="margin-top: 10px;">
                           <div class="col-12" style="margin-top: 10px;">
                              <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">Name ( as registered in Bank ) </h5>
                                          <p class="sec_head">Please update your Account Name</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" id="exampleInputEmail1" class="bank_input" aria-describedby="emailHelp">   
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod" >
                                          <h5 style="font-size: 15px;">Bank Account Number </h5>
                                          <p class="sec_head">Please update your Bank Account Name</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" id="exampleInputEmail1" class="bank_input" aria-describedby="emailHelp">   
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card bank_div_bor" >
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod" >
                                          <h5 style="font-size: 15px;">Confirm bank Account Number </h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" id="exampleInputEmail1" class="bank_input" aria-describedby="emailHelp">   
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod" >
                                          <h5 style="font-size: 15px;">IFSC Code </h5>
                                          <p class="sec_head">Please update IFSC Code</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" id="exampleInputEmail1" class="bank_input" aria-describedby="emailHelp">   
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <center><button class="btn save_but"><i class="icon material-icons" >check</i> Save</button></center>
                           </div>
                        </div>
                        <div class="row m-0" id="acc_dea">
                           <div class="col-12">
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="lead_preview.php" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 18px;">GST Details </h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p>GST Number</p>
                                          <h5>6nn67676767v7577bg</h5>
                                          <p style="margin-top: 5px;">Name ( as registered in GST )</p>
                                          <h5>xyz telecom pvt .ltd</h5>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="lead_preview.php" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 18px;">PAN Details</h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p >Pan Card Number</p>
                                          <h5>65846848498</h5>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 18px;">Bank Account Details <span id="change_but" style="float: right;color: blue; ">Change</span></h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p style="color: #9FC474;">Approved</p>
                                          <h5 style="color: #9FC474;">Your bank details have been tested and approved</h5>
                                          <p style="margin-top: 7px;">Account number</p>
                                          <h5>6584684849849468</h5>
                                          <p style="margin-top: 7px;">Bank Name</p>
                                          <h5>HDFC BANK</h5>
                                          <p style="margin-top: 7px;">IFSC Code</p>
                                          <h5>HDFC9448IUI</h5>
                                          <p style="margin-top: 7px;">Name ( as registered in Bank )</p>
                                          <h5>Afaq ahmad</h5>
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
<script>
   $(document).ready(function(){
     $("#change_but").click(function(){
          $("#acc_dea").hide();
           $("#ban_dea").show();
          
     });
     
   });
</script>