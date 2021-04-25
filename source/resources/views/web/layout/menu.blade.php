<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
<header class="row m-0 shadow bg_white2">
   <div class="left">
      <a href="index.php" class="menu-left"><i class="material-icons" style="color: black">person</i></a>
   </div>
   <div class="col center">
      <a href="" class="logo menu_profile">
      Profile</a>
   </div>
</header>
<div class="content-sticky-footer ">
   <div class="row mx-0 position-relative">
      <div class="col my-4">
         <a href="#" class="media user-column">
            <div class="w-100">
               <figure class="avatar avatar-120"><img src="{{url($partner->partner_image)}}" alt=""> </figure>
               
            </div>
            <br>
            <div class="media-body align-self-center ">
               <h4 class="text-black">{{$partner->partner_name}}</h4>
               <h6 >
                  <i class="material-icons menu_star">stars</i>
                  <i class="material-icons menu_star">stars</i>
                  <i class="material-icons menu_star">stars</i>
                  <i class="material-icons menu_star">stars</i>
                  <i class="material-icons" style="font-size: 18px;">stars</i>
               </h6>
               <h6 class="text-black web_gray">
                 {{$partner->partner_profesion}}
               </h6>
            </div>
         </a>
      </div>
   </div>
   <div class="row m-0" style="margin-top: -29px;">
      <div class="col-12">
         <div class="card ">
            <div class="card-body">
               <div class="media">
                  <a href="lead_preview.php" class="media-body mar3_mar3">
                     <h5 style="font-size: 18px;">My Rating</h5>
                  </a>
               </div>
            </div>
            <div class="card-footer pt-0">
               <div class="media mar9_mar9">
                  <a href="lead_preview.php" class="media-body">
                     <p>My Latest 50 Ratings</p>
                     <h5>4.17</h5>
                  </a>
               </div>
            </div>
         </div>
         <div class="card ">
            <div class="card-body">
               <div class="media">
                  <a href="lead_preview.php" class="media-body mar3_mar3">
                     <h5 style="font-size: 18px;">About Me</h5>
                  </a>
               </div>
            </div>
            <div class="card-footer pt-0">
               <div class="media mar9_mar9">
                  <a href="lead_preview.php" class="media-body">
                     <p>Business Name</p>
                     <h5></h5>
                     <p style="margin-top: 5px;">Website Link</p>
                     <h5></h5>
                  </a>
               </div>
            </div>
         </div>
         <div class="card ">
            <div class="card-body">
               <div class="media">
                  <a href="lead_preview.php" class="media-body mar3_mar3">
                     <h5 style="font-size: 18px;">Profession</h5>
                  </a>
               </div>
            </div>
            <div class="card-footer pt-0">
               <div class="media mar9_mar9">
                  <a href="lead_preview.php" class="media-body">
                     <p>{{$partner->partner_profesion}}</p>
                  </a>
               </div>
            </div>
         </div>
         <div class="card ">
            <div class="card-body">
               <div class="media">
                  <a href="lead_preview.php" class="media-body mar3_mar3">
                     <h5 style="font-size: 18px;">Contact details</h5>
                  </a>
               </div>
            </div>
            <div class="card-footer pt-0">
               <div class="media mar9_mar9">
                  <a href="lead_preview.php" class="media-body">
                     <p>Phone</p>
                     <h5>+91 {{$partner->partner_phone}}</h5>
                     <p style="margin-top: 5px;">Email</p>
                     <h5>{{$partner->partner_email}}</h5>
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>