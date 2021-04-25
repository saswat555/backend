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
      <div class="loader justify-content-center" style="display:none;" >
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
                  Credits History</a>
               </div>
               <div class="right">
                  <a href="javascript:void(0)" class="menu-right" style="display: none;">211</a>
               </div>
            </header>
            <div class="page-content">
           
               <div class="tab-content h-100" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
                     <div class="content-sticky-footer">
                        <div class="card text-center" style="margin-top: 12px;">
                           <div class="card-header back_credit">
                           </div>
                           <div class="card-body credit_body">
                              <p style="font-size: 12px;margin-top: 17px;">Total Balance</p>
                              <h3 style="margin-top: -14px;">{{$partner->coins}} credits</h3>
                              <a href="{{--route('rechargewallet')--}}" class="btn btn-primary btn-sm credit_a">buy Credits</a>
                           </div>
                           <div class="card-footer text-muted back_credit">
                           </div>
                        </div>
                        <section id="tabs" class="project-tab">
                           <div class="container">
                              <div class="row">
                                 <div class="col-md-12">
                                    <nav>
                                       <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                          <a class="nav-item nav-link active" id="nav-all2-tab" data-toggle="tab" href="#nav-all2" role="tab" aria-controls="nav-all2" aria-selected="true" style="font-size: 12px;">All</a>
                                          <a class="nav-item nav-link" id="nav-recharge-tab" data-toggle="tab" href="#nav-recharge" role="tab" aria-controls="nav-recharge" aria-selected="false" style="font-size: 12px;">RECHARGE</a>
                                       </div>
                                    </nav>
                                    <div class="tab-content" id="nav-tabContent" style="background-color: #FAFAFA;">
                                       <div class="tab-pane fade show active" id="nav-all2" role="tabpanel" aria-labelledby="nav-all2-tab">
                                          <div class="row" style="margin-top: 15px;">
                                             <div class="col-12">
                                                  @if(count($booking)>0)
                                                   @foreach($booking as $bookings)
                                                    @foreach($users as $user)
                                                     @if($user->id==$bookings->id)
                                                <div class="card ">
                                                   <div class="card-body">
                                                      <div class="media">
                                                         <a href="{{route('leadpreview',[$bookings->booking_id])}}" class="media-body">
                                                            <p><span>{{$bookings->confirmed_on}}, {{$bookings->time_slot}}</span><span style="float: right;color: #CE0115;">Lead bought</span></p>
                                                            <h5 style="margin-top: 6px;">{{$user->user_name}} <span style="float: right;">{{$bookings->coins}} Credits</span></h5>
                                                            <p style="margin-top: 8px;"><span style="color: blue;">View Lead</span> 
                                                            <!--<span style="float: right;">remaining Credits: 211</span>-->
                                                            </p>
                                                         </a>
                                                      </div>
                                                   </div>
                                                </div>
                                                 @endif
                                                 @endforeach
                                                 @endforeach
                                                 @endif
                                             </div>
                                          </div>
                                       </div>
                                       <div class="tab-pane fade" id="nav-recharge" role="tabpanel" aria-labelledby="nav-recharge-tab">
                                          <div class="row" style="margin-top: 15px;">
                                             <div class="col-12">
                                                <div class="card ">
                                                   <div class="card-body">
                                                      <div class="media">
                                                         <a href="lead_preview.php" class="media-body">
                                                            <p><span>25 feb, 01:46</span><span style="float: right;color: green;">Payment Successful</span></p>
                                                            <h5 style="margin-top: 6px;">Purchashed online <span style="float: right;">200 Credits</span></h5>
                                                            <p style="margin-top: 8px;"><span >Rs. 2,000</span> </p>
                                                         </a>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="card ">
                                                   <div class="card-body">
                                                      <div class="media">
                                                         <a href="lead_preview.php" class="media-body">
                                                            <p><span>25 feb, 01:46</span><span style="float: right;color: #CE0115;">Payment Failed</span></p>
                                                            <h5 style="margin-top: 6px;">Purchashed online <span style="float: right;">200 Credits</span></h5>
                                                            <p style="margin-top: 8px;"><span >Rs. 2,000</span> </p>
                                                         </a>
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
                        </section>
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
      <script src="{url('vendors/part-app-home/js/jquery-3.2.1.min.js')}}"></script>
      <script src="{url('vendors/part-app-home/js/popper.min.js')}}"></script>
      <script src="{url('vendors/part-app-home/vendor/bootstrap-4.1.3/js/bootstrap.min.js')}}"></script>
      <!-- Cookie jquery file -->
      <script src="{url('vendors/part-app-home/vendor/cookie/jquery.cookie.js')}}"></script>
      <!-- Swiper carousel jquery file -->
      <script src="{url('vendors/part-app-home/vendor/swiper/js/swiper.min.js')}}"></script>
      <!-- Application main common jquery file -->
      <script src="{url('vendors/part-app-home/js/main.js')}}"></script>
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