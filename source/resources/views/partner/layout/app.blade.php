<!doctype html>
<html lang="en" class="md">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
      <!-- plugins:css -->
  <link rel="stylesheet" href="{{url('vendors/bootstrap-4.1.3/css/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{url('vendors/circle-progress/circle-progress.min.js')}}">
  <link rel="stylesheet" href="{{url('vendorscookie/jquery.cookie.js')}}">
  <link rel="stylesheet" href="{{url('vendors/highlightjs/default.min.css')}}">
  <link rel="stylesheet" href="{{url('vendors/highlightjs/highlight.min.js')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/codepoints')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/material-icons.css')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-Regular.eot')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-Regular.ijmap')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-Regular.svg')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-Regular.ttf')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-Regular.woff')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-Regular.woff2')}}">
  <link rel="stylesheet" href="{{url('vendors/materializeicon/MaterialIcons-README.md')}}">
  <link rel="stylesheet" href="{{url('vendors/sparklines/jquery.sparkline.min.js')}}">
  <link rel="stylesheet" href="{{url('vendors/swiper/css/swiper.css')}}" />
  <link rel="stylesheet" href="{{url('vendors/swiper/css/swiper.min.css')}}" />
  <link rel="stylesheet" href="{{url('vendors/swiper/js/swiper.esm.bundle.js')}}" />
  <link rel="stylesheet" href="{{url('vendors/swiper/js/swiper.esm.js')}}" />
  <link rel="stylesheet" href="{{url('vendors/swiper/js/swiper.js')}}" />
  <link rel="stylesheet" href="{{url('vendors/swiper/js/swiper.min.js')}}" />
  <link rel="stylesheet" href="{{url('vendors/swiper/js/swiper.min.js.map')}}" />
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.rtl.min.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.rtl.md.min.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.ios.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.ios.min.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.md.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.md.min.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.min.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.rtl.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.rtl.ios.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.rtl.ios.min.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/framework7.rtl.md.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/app.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/clock.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/tags.css')}}">
  <link rel="stylesheet" href="{{url('partnercss/css/style.css')}}">
  <link rel="shortcut icon" href="" />
      <!-- app CSS -->
      <link id="theme" rel="stylesheet" href="partnercss/css/style.css" type="text/css">
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
         
     @include('partner.layout.sidebar')
    
         <!-- fullscreen menu ends -->
         
          <div class="page">
            <form class="searchcontrol">
               <div class="input-group">
                  <div class="input-group-prepend">
                     <button type="button" class="input-group-text close-search"><i class="material-icons">keyboard_backspace</i></button>
                  </div>
                  <input type="email" class="form-control border-0" placeholder="Search..." aria-label="Username">
               </div>
            </form>
            @include('partner.layout.header')
            <div class="page-content">
              @include('partner.layout.nav')
         
            </div>
         </div>
         
         
         
         
         
         
         
         
         <!-- page main start -->
      @yield('content')
         <!-- page main ends -->
      </div>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
       <script src="{{url('vendors/js/bootstrap.min.js')}}"></script>
  <script src="{{url('vendors/js/vendor.bundle.tags.js')}}"></script>
  <script src="{{url('vendors/js/vendor.bundle.addons.js')}}"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="{{url('js/app.js')}}"></script>
  <script src="{{url('js/autocomplete-languages.json')}}"></script>
  <script src="{{url('js/framework7.js')}}"></script>
  <script src="{{url('js/framework7.min.js')}}"></script>
  <script src="{{url('js/jquery-3.2.1.min.js')}}"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="{{url('js/jquery-3.3.1.min.js')}}"></script>
  <script src="{{url('js/jquery.sparkline.min.js')}}"></script>
  <script src="{{url('js/main.js')}}"></script>
  <script src="{{url('js/popper.min.js')}}"></script>
  <script src="{{url('js/routes.js')}}"></script>
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
<?php
   if (isset($_GET['a'])) {
     $cat_id = $_GET['a'];
   if ($cat_id="12") {
   
   ?>
<script type="text/javascript">
   $("#nav-cart-tab").addClass('active').siblings().removeClass('active');
     $("#nav-cart").addClass('show').siblings().removeClass('show');
    $("#nav-cart").addClass('active').siblings().removeClass('active');
</script>
<?php
   }
   
   }
   ?>