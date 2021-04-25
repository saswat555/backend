<!doctype html>
<html lang="en" class="md">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
      <link rel="apple-touch-icon" href="{{url('vendors/part-app-home/img/f7-icon-square.png')}}">
      <link rel="icon" href="{{url('vendors/part-app-home/img/f7-icon.png')}}">
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
                  <a href="index.php"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="" class="logo">
                  Rajnish G.</a>
               </div>
               <div class="right">
                  <a href="javascript:void(0)" class="menu-right">211</a>
               </div>
            </header>
            <div class="page-content">
               <nav class="tabber tabber-bottom">
                  <a href="success.php">
                    <center><button class="btn respond_but">Respond (58 credits)</button></center>
                  </a>
               </nav>
               <div class="tab-content h-100" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
                     <div class="content-sticky-footer">
                        <h2 class="lead_htwo">Service Details</h2>
                        <hr style="margin-top: 10px;">
                        <div class="row" >
                           <div class="col-12">
                              <div class="card-body" style="margin-top: -24px;">
                                 <div class="media">
                                    <a href="#" class="media-body">
                                       <p>Service Name</p>
                                       <h5 style="font-size: 14px;margin-top: 2px;">{{$booking->service_name}}</h5>
                                    </a>
                                 </div>
                              </div>
                              <div class="card-body" style="margin-top: -24px;">
                                 <div class="media">
                                    <a href="#" class="media-body">
                                       <p>Location</p>
                                       <h5 style="font-size: 14px;margin-top: 2px;">{{$booking->user_address}}</h5>
                                    </a>
                                 </div>
                              </div>
                              <div class="card-body" style="margin-top: -24px;">
                                 <div class="media">
                                    <a href="#" class="media-body">
                                       <p>Date & Time</p>
                                       <h5 style="font-size: 14px;margin-top: 2px;">{{$booking->booking_date}}</h5>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <hr style="margin-top: -3px;">
                        <h2 class="lead_htwo">Client Details</h2>
                        <hr style="margin-top: 14px;">
                        <div class="row" >
                           <div class="col-12">
                              <div class="card-body" style="margin-top: -24px;">
                                 <div class="media">
                                    <a href="#" class="media-body">
                                       <p>Client Name</p>
                                       <h5 style="font-size: 14px;margin-top: 2px;">{{$booking->user_name}}</h5>
                                    </a>
                                 </div>
                              </div>
                              <div class="card-body" style="margin-top: -24px;">
                                 <div class="media">
                                    <a href="#" class="media-body">
                                       <p>Phone Number</p>
                                       <h5 style="font-size: 14px;margin-top: 2px;">{{$booking->user_phone}}</h5>
                                    </a>
                                 </div>
                              </div>
                              <div class="card-body" style="margin-top: -24px;">
                                 <div class="media">
                                    <a href="#" class="media-body">
                                       <p>Customer Location</p>
                                       <h5 style="font-size: 14px;margin-top: 2px;">{{$booking->user_address}}</h5>
                                    </a>
                                 </div>
                              </div>
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
      <script src="{{url('vendors/part-app-home/vendor/bootstrap-4.1.3/js/bootstrap.min.js')}}"></script>
      <!-- Cookie jquery file -->
      <script src="{{url('vendors/part-app-home/vendor/cookie/jquery.cookie.js')}}"></script>
      <!-- Swiper carousel jquery file -->
      <script src="{{url('vendors/part-app-home/vendor/swiper/js/swiper.min.js')}}"></script>
      <!-- Application main common jquery file -->
      <script src="{{url('vendors/part-app-home/js/main.js')}}"></script>
      <!-- page specific script -->
    
   </body>
</html>