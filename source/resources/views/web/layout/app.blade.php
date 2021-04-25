<!doctype html>
<html lang="en" class="md">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
      <link rel="apple-touch-icon" href="{{url('vendors/part-app-home/img/f7-icon-square.png')}}">
      <link rel="icon" href="img/f7-icon.png">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="{{url('vendors/part-app-home/vendor/bootstrap-4.1.3/css/bootstrap.min.css')}}">
      <!-- Material design icons CSS -->
      <link rel="stylesheet" href="{{url('vendors/part-app-home/vendor/materializeicon/material-icons.css')}}">
      <!-- swiper carousel CSS -->
      <link rel="stylesheet" href="{{url('vendors/part-app-home/vendor/swiper/css/swiper.min.css')}}">
      <!-- app CSS -->
      <link id="theme" rel="stylesheet" href="{{url('vendors/part-app-home/css/style.css')}}" type="text/css">
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
           @include('web.layout.header')
            <div class="page-content">
              @include('web.layout.nav')
               <div class="tab-content h-100" id="nav-tabContent">
                  
                 @include('web.layout.new')
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
      <script src="{{url('vendors/part-app-home/js/jquery-3.2.1.min.js')}}"></script>
      <script src="{{url('vendors/part-app-home/js/popper.min.js')}}"></script>
      <script src="{{url('vendors/part-app-home/vendor/bootstrap-4.1.3/js/bootstrap.min.js')}}"></script>
      <!-- Cookie jquery file -->
      <script src="{{url('vendors/part-app-home/vendor/cookie/jquery.cookie.js')}}"></script>
      <!-- Swiper carousel jquery file -->
      <script src="{{url('vendors/part-app-home/vendor/swiper/js/swiper.min.js')}}"></script>
      <!-- Application main common jquery file -->
      <script src="{{url('vendors/part-app-home/js/main.js')}}"></script>
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