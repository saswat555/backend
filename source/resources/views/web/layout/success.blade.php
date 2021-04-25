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
   <body onload="img22()" class="color-theme-yellow push-content-right theme-light">
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

           
         <link href="https://fonts.googleapis.com/css?family=Philosopher&display=swap" rel="stylesheet">  
            <div class="page-content">
               
               <div class="tab-content h-100" id="nav-tabContent">
                  <div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
                     <div class="content-sticky-footer">
                        <center style="font-family: 'Philosopher', sans-serif;">

                           <img src="{{url('vendors/part-app-home/img/check.png')}}" id="img_check" height="100" style="margin-top: 100px;display: none;">

                           <img src="{{url('vendors/part-app-home/img/check.gif')}}" id="gif45" height="100" style="margin-top: 100px;">

                      <h6 style="margin-top: 47px;color: #74B13D;letter-spacing: .5px;">Lead Buy successfully Done.</h6>

                      <h6>{{$bookings->user_name}}</h6>

                      <h6 style="color: #CE0115">+91 {{$bookings->user_phone}}</h6>

                      <p style="width: 80%;letter-spacing: .5px;">{{$bookings->user_address}}</p>

  <a href="{{route('index')}}" style="width: 40%;border:2px solid #74B13D;background-color: white;color: #74B13D;border-radius: 30px;height: 35px;font-size: 15px;outline: none;"> Start Job</a>


                        </center>



                        
                        <br>
                     </div>
                  </div>
                 
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
    <script type="text/javascript">
 
 function img22() {
 setTimeout(
            function() {
                $("#img_check").show();
                $("#gif45").hide();
            }, 1000);

}

</script>
   </body>
</html>


 