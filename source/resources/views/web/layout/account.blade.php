<!doctype html>
<html lang="en" class="md">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, shrink-to-fit=no, viewport-fit=cover">
      <link rel="stylesheet" href="{{url('vendors/part-app-home/vendor/bootstrap-4.1.3/css/bootstrap.min.css')}}">
      <link rel="stylesheet" href="{{url('vendors/part-app-home/vendor/materializeicon/material-icons.css')}}">
      <link rel="stylesheet" href="{{url('vendors/part-app-home/vendor/swiper/css/swiper.min.css')}}">
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
            <header class="row m-0 fixed-header no-shadow" style="background-color: black;">
               <div style="margin-left: 15px;margin-top: 14px;">
                  <a href="{{route('index')}}"><i class="material-icons">arrow_back</i></a>
               </div>
               <div class="col center">
                  <a href="{{route('index')}}" class="logo">
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
                           <form action="{{route('addbankdetail')}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}
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
                                          <input type="text" name="acc_name" @if($partner_bank) value="{{$partner_bank->holder_name}}" @endif class="bank_input" aria-describedby="emailHelp">  
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
                                          <input type="text" name="acc_no" @if($partner_bank) value="{{$partner_bank->acc_no}}" @endif  class="bank_input" aria-describedby="emailHelp">  
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
                                          <input type="text" name="ifsc" @if($partner_bank) value="{{$partner_bank->ifsc_code}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <center><button type="submit" class="btn save_but"><i class="icon material-icons" >check</i> Save</button></center>
                           </div>
                        </div>
                         </form>






                    <form action="{{route('addpancard')}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}
                      <div class="row m-0" id="ban_pan" style="display: none;">
                           <h2 class="bank_main_h2">PAN Details</h2>
                           <hr style="margin-top: 10px;">
                           <div class="col-12" style="margin-top: 10px;">
                             
                               <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">PAN Card Number </h5>
                                          <p class="sec_head">Please update your Pan card number</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" name="pancard"  @if($partner_documentation) value="{{$partner_documentation->identify_proof}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                               <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">Voter ID </h5>
                                          <p class="sec_head">Please update your Voter card number</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                         
                                          <input type="text" name="voter"  @if($partner_documentation) value="{{$partner_documentation->voter_card_number}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                               <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">Gender </h5>
                                          <p class="sec_head">Male/female/Other</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                       
                                          <input type="text" name="gender"  @if($partner_documentation) value="{{$partner_documentation->gender}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                               <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">Date of Birth </h5>
                                          <p class="sec_head">Please update your DOB</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                         
                                          <input type="text" name="dob"  @if($partner_documentation) value="{{$partner_documentation->d_o_b}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                                 <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">Care Of </h5>
                                          <p class="sec_head">Please update your C.O</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          
                                          <input type="text" name="co"  @if($partner_documentation) value="{{$partner_documentation->c_o}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <center><button type="submit" class="btn save_but"><i class="icon material-icons" >check</i> Save</button></center>
                           </div>
                        </div>
                        </form>
                        
                        <form action="{{route('addgst')}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}
                        <div class="row m-0" id="ban_gst" style="display: none;">
                           <h2 class="bank_main_h2">GST Details</h2>
                           <hr style="margin-top: 10px;">
                           <div class="col-12" style="margin-top: 10px;">
                              <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">GST Number </h5>
                                          <p class="sec_head">Please update your GST number</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" name="gst_no"  @if($partner_gst) value="{{$partner_gst->gst_no}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="card bank_div_bor">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body mod_bod">
                                          <h5 style="font-size: 15px;">Name (as registered in GST) </h5>
                                          <p class="sec_head">Please update your Account number</p>
                                       </a>
                                    </div>
                                 </div>
                                 <div class="card-footer pt-0">
                                    <div class="media">
                                       <div class="form-group bank_but">
                                          <input type="text" name="gst_name"  @if($partner_gst) value="{{$partner_gst->gst_name}}" @endif class="bank_input" aria-describedby="emailHelp">  
                                       </div>
                                    </div>
                                 </div>
                              </div>
                             
                              <center><button type="submit" class="btn save_but"><i class="icon material-icons" >check</i> Save</button></center>
                           </div>
                        </div>
                       </form>
                      
                        <div class="row m-0" id="acc_dea">
                           <div class="col-12">
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 18px;">GST Details <span id="change_gst" style="float: right;color: blue;cursor:pointer ">Change</span></h5>
                                       </a>
                                    </div>
                                 </div>
                                 @if($partner_gst)
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p>GST Number</p>
                                          <h5>{{$partner_gst->gst_no}}</h5>
                                          <p style="margin-top: 5px;">Name ( as registered in GST )</p>
                                          <h5>{{$partner_gst->gst_name}}</h5>
                                       </a>
                                    </div>
                                 </div>
                                
                                 @else
                                  <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p>Please Fill Out All Information</p>
                                        
                                       </a>
                                    </div>
                                 </div>
                                  @endif
                              </div>
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 18px;">PAN Details <span id="change_pan" style="float: right;color: blue;cursor:pointer; ">Change</span></h5>
                                       </a>
                                    </div>
                                 </div>
                                  @if($partner_documentation)
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p >Pan Card Number</p>
                                          <h5>{{$partner_documentation->identify_proof}}</h5>
                                           <p style="margin-top: 5px;">Voter Card Number</p>
                                          <h5>{{$partner_documentation->voter_card_number}}</h5>
                                           <p style="margin-top: 10px;">Gender</p>
                                          <h5>{{$partner_documentation->gender}}</h5>
                                           <p style="margin-top: 15px;">Date of Birth</p>
                                          <h5>{{$partner_documentation->d_o_b}}</h5>
                                           <p style="margin-top: 20px;">Care of</p>
                                          <h5>{{$partner_documentation->c_o}}</h5>
                                       </a>
                                    </div>
                                 </div>
                               @else
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p >Please Fill Out All Information</p>
                                         
                                       </a>
                                    </div>
                                 </div>
                                   @endif
                              </div>
                              <div class="card ">
                                 <div class="card-body">
                                    <div class="media">
                                       <a href="#" class="media-body" style="margin-top: 3px;margin-bottom: 3px;">
                                          <h5 style="font-size: 18px;">Bank Account Details <span id="change_but" style="float: right;color: blue; ">Change</span></h5>
                                       </a>
                                    </div>
                                 </div>
                                  @if($partner_bank)
                                 <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                       <a href="lead_preview.php" class="media-body">
                                          <p style="color: #9FC474;">Approved</p>
                                          <h5 style="color: #9FC474;">Your bank details have been tested and approved</h5>
                                          <p style="margin-top: 7px;">Name ( as registered in Bank )</p>
                                          <h5>{{$partner_bank->holder_name}}</h5>
                                          <p style="margin-top: 7px;">Account number</p>
                                          <h5>{{$partner_bank->acc_no}}</h5>
                                         
                                          <p style="margin-top: 7px;">IFSC Code</p>
                                          <h5>{{$partner_bank->ifsc_code}}</h5>
                                        
                                       </a>
                                    </div>
                                 </div>
                                 @else
                                   <div class="card-footer pt-0">
                                    <div class="media" style="margin-top: 9px;margin-bottom: 9px;">
                                          <p style="margin-top: 7px;">Please Fill Out All Information</p>
                                          
                                      
                                    </div>
                                 </div>
                                 @endif
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

      $("#change_pan").click(function(){
          $("#acc_dea").hide();
           $("#ban_pan").show();
         
     });

      $("#change_gst").click(function(){
          $("#acc_dea").hide();
           $("#ban_gst").show();
         
     });
     
   });
</script>

