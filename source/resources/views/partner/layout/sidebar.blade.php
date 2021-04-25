<div class="sidebar sidebar-left">
   <div class="profile-link">
      <a href="#" class="media">
         <div class="w-auto h-100">
            <figure class="avatar avatar-40"><img src="img/user1.png" alt=""> </figure>
         </div>
         <div class="media-body">
            <h5>John Doe <span class="status-online bg-success"></span></h5>
            <p>India</p>
         </div>
      </a>
   </div>
   <nav class="navbar">
      <ul class="navbar-nav">
         <li class="nav-item">
            <a href="index.php" class="sidebar-close">
               <div class="item-title">
                  <i class="material-icons">home</i> Home
               </div>
            </a>
         </li>
         <li class="nav-item">
            <a href="#" class="sidebar-close" id="side_person">
               <div class="item-title">
                  <i class="material-icons">person</i> User Profile
               </div>
            </a>
         </li>
         <li class="nav-item">
            <a href="credit_history.php" class="sidebar-close" >
               <div class="item-title">
                  <img src="img/sa2.png" height="15" style="margin-right: 13px;margin-left: 2px;"> Credit Balance
               </div>
            </a>
         </li>
         <li class="nav-item">
            <a href="#" class="sidebar-close" id="side_cre_bal">
               <div class="item-title">
                  <i class="material-icons">list</i> Jobs history
               </div>
            </a>
         </li>
         <li class="nav-item">
            <a href="account.php" class="sidebar-close">
               <div class="item-title">
                  <i class="material-icons">account_balance</i> GST,PAN and Bank details
               </div>
            </a>
         </li>
         <li class="nav-item">
            <a href="term.php" class="sidebar-close">
               <div class="item-title">
                  <i class="material-icons">assignment</i> Terms of Use
               </div>
            </a>
         </li>
         <li class="nav-item">
            <a href="contact.php" class="sidebar-close">
               <div class="item-title">
                  <i class="material-icons">contact_phone</i> Contact Us
               </div>
            </a>
         </li>
      </ul>
   </nav>
   <div class="profile-link text-center">
      <a href="{{route('partnerloggout')}}" class="btn btn-outline-white btn-block px-3">Logout</a>
   </div>
</div>
<!-- sidebar left ends -->
<!-- sidebar right start -->
<div class="sidebar sidebar-right" style="display: none;">
   <header class="row m-0 fixed-header no-shadow">
      <div class="left">
         <a href="javascript:void(0)" class="menu-left-close"><i class="material-icons">keyboard_backspace</i></a>
      </div>
      <div class="col center">
         <a href="" class="logo">Best Rated</a>
      </div>
   </header>
   <div class="page-content text-white ">
      <div class="row mx-0 mt-3">
         <div class="col">
            <div class="card bg-none border-0 shadow-none">
               <div class="card-body userlist_large">
                  <div class="media">
                     <figure class="avatar avatar-120 rounded-circle my-2">
                        <img src="img/user1.png" alt="user image">
                     </figure>
                     <div class="media-body">
                        <h4 class="mt-0 text-white">Max Johnsons</h4>
                        <p class="text-white">VP, Maxartkiller Co. Ltd., India</p>
                        <h5 class="text-warning my-2">
                           <i class="material-icons">star</i>
                           <i class="material-icons">star</i>
                           <i class="material-icons">star</i>
                           <i class="material-icons">star</i>
                        </h5>
                        <div class="mb-0">MobileUX is HTML template based on Bootstrap 4.1 framework. This html template can be used in various business domains like Manufacturing, inventory, IT, administration etc.</div>
                        <br>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- sidebar right ends -->
<!-- fullscreen menu start -->
<div class="modal fade popup-fullmenu" id="fullscreenmenu" tabindex="-1" role="dialog" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content fullscreen-menu">
         <div class="modal-header">
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <a href="/profile/" class="block user-fullmenu popup-close">
               <figure>
                  <img src="img/user1.png" alt="">
               </figure>
               <div class="media-content">
                  <h6>John Doe<br><small>India</small></h6>
               </div>
            </a>
            <br>
            <div class="row mx-0">
               <div class="col">
                  <div class="menulist">
                     <ul>
                        <li>
                           <a href="index.html" class="popup-close">
                              <div class="item-title">
                                 <i class="icon material-icons">home</i> Home
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="projects.html" class="popup-close">
                              <div class="item-title">
                                 <i class="icon material-icons">search</i> Result
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="project-detail.html" class="popup-close">
                              <div class="item-title">
                                 <i class="icon material-icons md-only">filter_none</i> Details
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="user-profile.html" class="popup-close">
                              <div class="item-title">
                                 <i class="icon material-icons md-only">person</i> Profile
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="aboutus.html" class="popup-close">
                              <div class="item-title">
                                 <i class="icon material-icons md-only">domain</i> About
                              </div>
                           </a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
            <br>
            <div class="row mx-0">
               <div class="col">
                  <a href="#" class="rounded btn btn-outline-white text-white popup-close">Logout</a>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
   $(document).ready(function(){
     $("#side_person").click(function(){
          $("#nav-profile-tab").addClass('active').siblings().removeClass('active');
          $("#nav-profile").addClass('show').siblings().removeClass('show');
         $("#nav-profile").addClass('active').siblings().removeClass('active');
     });
     
   });
</script>
<script>
   $(document).ready(function(){
     $("#side_cre_bal").click(function(){
          $("#nav-favorite-tab").addClass('active').siblings().removeClass('active');
          $("#nav-favorite").addClass('show').siblings().removeClass('show');
         $("#nav-favorite").addClass('active').siblings().removeClass('active');
     });
     
   });
</script>