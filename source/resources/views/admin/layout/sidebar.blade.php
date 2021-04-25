
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas sidebar-dark" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <img src="{{url($admin_image)}}" alt="profile image">
            <p class="text-center font-weight-medium">{{$admin_name}}</p>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('adminHome')}}">
              <i class="menu-icon fa fa-dashboard"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="{{route('pay_req')}}">
              <i class="menu-icon fa fa-money"></i>
              <span class="menu-title">Withdrawal</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#setting-dropdown2" aria-expanded="false" aria-controls="setting-dropdown">
              <i class="menu-icon fa fa-calendar"></i>
              <span class="menu-title">Category</span>
            </a>
            <div class="collapse" id="setting-dropdown2">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('categorylist')}}">Add Category</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('sub_category')}}">Add Sub-Category</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('child_category')}}">Add Sub-child-Category</a>
                </li>
                </ul>
                </div>
          
            <li class="nav-item">
            <a class="nav-link" href="{{route('bookinglist')}}">
              <i class="menu-icon fa fa-ticket"></i>
              <span class="menu-title">Booking</span>
            </a>
          </li>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="{{route('service')}}">
              <i class="menu-icon fa fa-ticket"></i>
              <span class="menu-title">Partner Services</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="{{route('citylist')}}">
              <i class="menu-icon fa fa-building"></i>
              <span class="menu-title">City</span>
            </a>
          </li>
          
          
            <li class="nav-item">
            <a class="nav-link" href="{{route('cancelationlist')}}">
              <i class="menu-icon fa fa-remove"></i>
              <span class="menu-title">Cancellation</span>
            </a>
          </li>
          
         
          
          <li class="nav-item">
            <a class="nav-link" href="{{route('partner')}}">
              <i class="menu-icon fa fa-handshake-o"></i>
              <span class="menu-title">Partner</span>
            </a>
          </li>
                    <li class="nav-item">
            <a class="nav-link" href="{{route('add_onslist')}}">
              <i class="menu-icon icon-layers "></i>
              <span class="menu-title">Add-ons</span>
            </a>
          </li>
             <li class="nav-item">
            <a class="nav-link" href="{{route('membershiplist')}}">
              <i class="menu-icon fa fa-usd"></i>
              <span class="menu-title">Credits</span>
            </a>
          </li>
          
            
          
            <li class="nav-item">
            <a class="nav-link" href="{{route('bloglist')}}">
              <i class="menu-icon fa fa-cog"></i>
              <span class="menu-title">Service Blogs</span>
            </a>
          </li>

          <!---->
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#setting-dropdown10" aria-expanded="false" aria-controls="setting-dropdown">
              <i class="menu-icon fa fa-image"></i>
              <span class="menu-title">Banner</span>
            </a>
            <div class="collapse" id="setting-dropdown10">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('adminBanner')}}">Main Banner</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('lowerbannerindex')}}">Secondary Banner</a>
                </li>
               
                
                
              </ul>
            </div>
          </li>
          <!---->
          
          
            <li class="nav-item">
            <a class="nav-link" href="{{route('enquirylist')}}">
              <i class="menu-icon fa fa-question-circle"></i>
              <span class="menu-title">Enquiry</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="{{route('ratinglist')}}">
              <i class="menu-icon fa fa-star"></i>
              <span class="menu-title">User Review</span>
            </a>
          </li>
          
          
          <li class="nav-item">
            <a class="nav-link" href="{{route('complaintlist')}}">
              <i class="menu-icon fa fa-bullhorn"></i>
              <span class="menu-title">Complaint Center</span>
            </a>
          </li>
          
           <li class="nav-item">
            <a class="nav-link" href="{{route('coupon')}}">
              <i class="menu-icon fa fa-sticky-note"></i>
              <span class="menu-title">Coupon</span>
            </a>
          </li>
          

          
          
           <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#setting-dropdown6" aria-expanded="false" aria-controls="setting-dropdown">
              <i class="menu-icon fa fa-clock-o"></i>
              <span class="menu-title">Booking Setting</span>
            </a>
            <div class="collapse" id="setting-dropdown6">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('timeslot')}}">Booking Timing</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('messageedit')}}">Booking Message</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('mailedit')}}">Booking Mail</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('coinsgenerated')}}">Booking Coins for Part.</a>
                </li>
                
              </ul>
            </div>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#setting-dropdown1" aria-expanded="false" aria-controls="setting-dropdown1">
              <i class="menu-icon fa fa-yelp"></i>
              <span class="menu-title">Help Center</span>
            </a>
            <div class="collapse" id="setting-dropdown1">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('faqcategorylist')}}">FAQ Category</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('faqlist')}}">FAQ List</a> 
                </li>
                <!--<li class="nav-item">-->
                <!--  <a class="nav-link" href="">Add Sub-child-Category</a>-->
                <!--</li>-->
                <!--</ul>-->
                </div>
          </li>
          
          

           <li class="nav-item">
            <a class="nav-link" href="{{route('adminNotification')}}">
              <i class="menu-icon icon-envelope-open"></i>
              <span class="menu-title">Send Notification</span>
            </a>
          </li>
                    <li class="nav-item">
            <a class="nav-link" href="{{route('adminUser')}}">
              <i class="menu-icon icon-user"></i>
              <span class="menu-title">Users</span>
            </a>
          </li>
          
         <li class="nav-item">
            <a class="nav-link" href="{{route('aboutus')}}">
              <i class="menu-icon icon-user"></i>
              <span class="menu-title">About us</span>
            </a>
          </li>

          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#setting-dropdown5" aria-expanded="false" aria-controls="setting-dropdown">
              <i class="menu-icon icon-settings"></i>
              <span class="menu-title">Setting</span>
            </a>
            <div class="collapse" id="setting-dropdown5">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('adminWebLogo')}}">App Logo</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('adminWebName')}}">App Name</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('adminAppUpdate')}}">App Version</a>
                </li>
               
                <li class="nav-item">
                  <a class="nav-link" href="{{route('adminFcm')}}">FCM</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('adminOtp')}}">OTP Key</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('gmap')}}">Google Map Key</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route('termcondition')}}">
              <i class="menu-icon icon-info"></i>
              <span class="menu-title">Terms and Conditions</span>
            </a>
          </li>
        </ul>
      </nav>