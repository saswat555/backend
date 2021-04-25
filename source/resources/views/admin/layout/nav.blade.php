<!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        
        <!--<div style="text-align:center; background: #f55a4e; padding: 5px; color: #fff; font-size: 16px; width: 100%;">-->
        <!--    If you want to buy this product then contact <a href="www.tecmanic.com" style="font-weight: 700; color: #000;">tecmanic.com</a> or email <span style="font-weight: 700; color: #000;">support@tecmanic.com</span>-->
        <!--    (Beware of frauds selling this product without our permission)-->
        <!--</div>-->
            
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" href="{{route('adminHome')}}">
          <img src="{{url($app_image)}}" alt="logo" style="width: 35px;height: 35px;border-radius: 50%;" />&nbsp;
          {{$app_name}}
        </a>
        <a class="navbar-brand brand-logo-mini" href="{{route('adminHome')}}">
          <img src="{{url($app_image)}}" alt="logo" style="width: 35px;height: 35px;border-radius: 50%;" />
        </a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-menu"></span>
        </button>
        
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="dropdown-toggle-wrapper">
                <div class="inner">
                  <img class="img-xs rounded-circle" src="{{url($admin_image)}}" alt="Profile image">
                </div>
                <div class="inner">
                  <div class="inner">
                    <span class="profile-text font-weight-bold">{{$admin_name}}</span>
                    <small class="profile-text small">SuperAdmin</small>
                  </div>
                  <div class="inner">
                    <div class="icon-wrapper">
                      <i class="mdi mdi-chevron-down"></i>
                    </div>
                  </div>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
              <!--<a class="dropdown-item p-0">-->
              <!--  <div class="d-flex border-bottom">-->
              <!--    <div class="py-3 px-4 d-flex align-items-center justify-content-center">-->
              <!--      <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>-->
              <!--    </div>-->
              <!--    <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">-->
              <!--      <i class="mdi mdi-account-outline mr-0 text-gray"></i>-->
              <!--    </div>-->
              <!--    <div class="py-3 px-4 d-flex align-items-center justify-content-center">-->
              <!--      <i class="mdi mdi-alarm-check mr-0 text-gray"></i>-->
              <!--    </div>-->
              <!--  </div>-->
              <!--</a>-->
              <a class="dropdown-item mt-2" href="{{route('adminProfile')}}">
                Manage Accounts
              </a>
              <a class="dropdown-item" href="{{route('adminPassword')}}">
                Change Password
              </a>
              <a class="dropdown-item" href="{{route('adminlogout')}}">
                Sign Out
              </a>
            </div>
          </li>
          <!--<li class="nav-item dropdown">-->
          <!--  <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">-->
          <!--    <i class="mdi mdi-bell-outline"></i>-->
          <!--    <span class="count">4</span>-->
          <!--  </a>-->
          <!--  <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">-->
          <!--    <a class="dropdown-item">-->
          <!--      <p class="mb-0 font-weight-normal float-left">You have 4 new notifications-->
          <!--      </p>-->
          <!--      <span class="badge badge-pill badge-warning float-right">View all</span>-->
          <!--    </a>-->
          <!--    <div class="dropdown-divider"></div>-->
          <!--    <a class="dropdown-item preview-item">-->
          <!--      <div class="preview-thumbnail">-->
          <!--        <div class="preview-icon bg-success">-->
          <!--          <i class="mdi mdi-alert-circle-outline mx-0"></i>-->
          <!--        </div>-->
          <!--      </div>-->
          <!--      <div class="preview-item-content">-->
          <!--        <h6 class="preview-subject font-weight-medium text-dark">Application Error</h6>-->
          <!--        <p class="font-weight-light small-text">-->
          <!--          Just now-->
          <!--        </p>-->
          <!--      </div>-->
          <!--    </a>-->
          <!--    <div class="dropdown-divider"></div>-->
          <!--    <a class="dropdown-item preview-item">-->
          <!--      <div class="preview-thumbnail">-->
          <!--        <div class="preview-icon bg-warning">-->
          <!--          <i class="mdi mdi-comment-text-outline mx-0"></i>-->
          <!--        </div>-->
          <!--      </div>-->
          <!--      <div class="preview-item-content">-->
          <!--        <h6 class="preview-subject font-weight-medium text-dark">Settings</h6>-->
          <!--        <p class="font-weight-light small-text">-->
          <!--          Private message-->
          <!--        </p>-->
          <!--      </div>-->
          <!--    </a>-->
          <!--    <div class="dropdown-divider"></div>-->
          <!--    <a class="dropdown-item preview-item">-->
          <!--      <div class="preview-thumbnail">-->
          <!--        <div class="preview-icon bg-info">-->
          <!--          <i class="mdi mdi-email-outline mx-0"></i>-->
          <!--        </div>-->
          <!--      </div>-->
          <!--      <div class="preview-item-content">-->
          <!--        <h6 class="preview-subject font-weight-medium text-dark">New user registration</h6>-->
          <!--        <p class="font-weight-light small-text">-->
          <!--          2 days ago-->
          <!--        </p>-->
          <!--      </div>-->
          <!--    </a>-->
          <!--  </div>-->
          <!--</li>-->
          <!--<li class="nav-item dropdown">-->
          <!--  <a class="nav-link dropdown-toggle count-indicator" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">-->
          <!--    <i class="mdi mdi-email-outline"></i>-->
          <!--  </a>-->
          <!--  <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">-->
          <!--    <div class="dropdown-item">-->
          <!--      <p class="mb-0 font-weight-normal float-left">You have 7 unread mails-->
          <!--      </p>-->
          <!--      <span class="badge badge-info badge-pill float-right">View all</span>-->
          <!--    </div>-->
          <!--    <div class="dropdown-divider"></div>-->
          <!--    <a class="dropdown-item preview-item">-->
          <!--      <div class="preview-thumbnail">-->
          <!--        <img src="images/faces/face4.jpg" alt="image" class="profile-pic">-->
          <!--      </div>-->
          <!--      <div class="preview-item-content flex-grow">-->
          <!--        <h6 class="preview-subject ellipsis font-weight-medium text-dark">David Grey-->
          <!--          <span class="float-right font-weight-light small-text">1 Minutes ago</span>-->
          <!--        </h6>-->
          <!--        <p class="font-weight-light small-text">-->
          <!--          The meeting is cancelled-->
          <!--        </p>-->
          <!--      </div>-->
          <!--    </a>-->
          <!--    <div class="dropdown-divider"></div>-->
          <!--    <a class="dropdown-item preview-item">-->
          <!--      <div class="preview-thumbnail">-->
          <!--        <img src="images/faces/face2.jpg" alt="image" class="profile-pic">-->
          <!--      </div>-->
          <!--      <div class="preview-item-content flex-grow">-->
          <!--        <h6 class="preview-subject ellipsis font-weight-medium text-dark">Tim Cook-->
          <!--          <span class="float-right font-weight-light small-text">15 Minutes ago</span>-->
          <!--        </h6>-->
          <!--        <p class="font-weight-light small-text">-->
          <!--          New product launch-->
          <!--        </p>-->
          <!--      </div>-->
          <!--    </a>-->
          <!--    <div class="dropdown-divider"></div>-->
          <!--    <a class="dropdown-item preview-item">-->
          <!--      <div class="preview-thumbnail">-->
          <!--        <img src="images/faces/face3.jpg" alt="image" class="profile-pic">-->
          <!--      </div>-->
          <!--      <div class="preview-item-content flex-grow">-->
          <!--        <h6 class="preview-subject ellipsis font-weight-medium text-dark"> Johnson-->
          <!--          <span class="float-right font-weight-light small-text">18 Minutes ago</span>-->
          <!--        </h6>-->
          <!--        <p class="font-weight-light small-text">-->
          <!--          Upcoming board meeting-->
          <!--        </p>-->
          <!--      </div>-->
          <!--    </a>-->
          <!--  </div>-->
          <!--</li>-->
          <!--<li class="nav-item dropdown color-setting d-none d-md-block">-->
          <!--  <a class="nav-link count-indicator" href="#">-->
          <!--    <i class="mdi mdi-invert-colors"></i>-->
          <!--  </a>-->
          <!--</li>-->
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>