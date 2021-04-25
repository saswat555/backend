<!doctype html>
<html lang="en" class="md">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
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
            <header class="row m-0 fixed-header no-shadow">
               <div style="margin-left: 15px;margin-top: 14px;">
                  <a href="{{route('index')}}"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="{{route('index')}}" class="logo">
                  Contact Us</a>
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
                           <h2 class="contact_main_head">We want to hear from you.</h2>
                           <hr class="mar_gin10">
                           
                           <div class="col-12 mar_gin10">
                                <form action="{{route('contact')}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}
                              <div class="card contact_card">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 15px;">Full Name</h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" name="name" placeholder="Enter Your Name" class="bank_input" aria-describedby="emailHelp">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card contact_card">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 15px;">Email Id</h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="email"  name="email" placeholder="Enter Your Email Id" class="bank_input" aria-describedby="emailHelp">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card contact_card">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 15px;">Phone Number </h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but" >
                                          <input type="number"  name="number" placeholder="Enter Your Phone Number" class="bank_input" aria-describedby="emailHelp">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card contact_card" >
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 15px;">Profession</h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text"  name="profession" placeholder="Enter Your Profession" class="bank_input" aria-describedby="emailHelp">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card contact_card">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 15px;">Your Message</h5>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <textarea placeholder="Go ahead, we're listening..." name="message" id="exampleInputEmail1" class="bank_input" rows="3">
                                          </textarea>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <center><button type="submit" class="btn send_but_ton"><i class="icon material-icons" >check</i> Send Message</button></center>
                               </form>
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
      <script src="{{url('vendors/part-app-home/js/jquery-3.2.1.min.js')}}"></script>
      <script src="{{url('vendors/part-app-home/js/popper.min.js')}}"></script>
      <script src="vendor/bootstrap-4.1.3/js/bootstrap.min.js')}}"></script>
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
