<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover">
      <meta name="apple-mobile-web-app-capable" content="yes">
      <meta name="apple-mobile-web-app-status-bar-style" content="default">
      <meta name="theme-color" content="#2196f3">
      <meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: gap:">
      <title>Login</title>
      <link rel="stylesheet" href="css1/framework7.min.css">
      <!-- Custom style  -->    
      <link rel="stylesheet" href="css1/app.css">
      <style type="text/css">
         #bn::placeholder {
         color: gray;  
         }
      </style>
   </head>
   <body >
      <div id="partner" class="sidebar-fill color-theme-yellow">
         <div class="statusbar"></div>
         <div class="view view-main view-init ios-edges" data-url="/">
            <div class="page">
               <div class="background color-dark"><img src="img/wall.jpg" alt="" style="  "></div>
               <div class="page-content login-page" >
                  <center>
                     <div class="block">
                        <img src="img/homeservice-app.png" alt="" class="login-logo">
                        <h1 class="login-title" style="font-size: 32px;line-height: 40px;"><small style="font-size: 20px;">Welcome to,</small><br>Partner App</h1>
                     </div>
                  </center>
                  <div class="tabscontainer" style="margin-top: 30px;">
                     <div class="toolbar tabbar">
                        <div class="toolbar-inner">
                           <a href="#tab-1" class="tab-link tab-link-active">Log in</a>
                           <a href="#tab-2" class="tab-link">Sign Up</a>
                        </div>
                     </div>
                                        @if (count($errors) > 0)
                      @if($errors->any())
                        <div class="alert alert-primary" role="alert">
                          {{$errors->first()}}
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                          </button>
                        </div>
                      @endif
                  @endif
                    <form action="{{route('adminLoginCheck')}}" method="post" autocomplete="off">
                        {{csrf_field()}} 
                     <div class="tabs-animated-wrap" >
                        <div class="tabs">
                           <div id="tab-1" class="page-content tab tab-active">
                              <div class="row">
                                 <div class="col">
                                    <div class="list no-hairlines-md inputs-logins">
                                       <ul>
                                          <li class="item-content item-inplut">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">person</i>
                                                <i class="icon material-icons md-only" style="color: black">person</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="text" id="bn" name="email" placeholder="Email">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                          <li class="item-content item-input" style="">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">lock</i>
                                                <i class="icon material-icons md-only" style="color: black">lock</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="password" name="password" placeholder="Your password" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="row" style="margin-top: 15px;">
                                 <div class="col-100"><button type="submit" class="col col-50 button signinbuttn md-elevation-6" style="background:#13D761;color: white;">Sign In</button>
                                 </div>
                              </div>
                              <br>
                              <a href="" class="button color-white col">Forgot password?</a>
                              <br>
                           </div>
                              </form>
                           <div id="tab-2" class="page-content tab div_1">
                              <div class="row">
                                 <div class="col">
                                    <div class="list no-hairlines-md inputs-logins">
                                       <ul>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">person</i>
                                                <i class="icon material-icons md-only" style="color: black">person</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="password" placeholder="Username" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">mail_outline</i>
                                                <i class="icon material-icons md-only" style="color: black">mail_outline</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="password" placeholder="Email Id" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">phone</i>
                                                <i class="icon material-icons md-only" style="color: black">phone</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="text" placeholder="Phone Number" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">person</i>
                                                <i class="icon material-icons md-only" style="color: black">person</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="text" placeholder="Profession" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="row" style="margin-top: 15px;">
                                 <div class="col-100"><a href=""  class="col col-50 button signinbuttn md-elevation-6" id="next" style="background:#13D761;color: white;">next</a></div>
                              </div>
                           </div>
                           <div id="tab-2" class="page-content tab div_2" style="display: none;">
                              <div class="row">
                                 <div class="col">
                                    <div class="list no-hairlines-md inputs-logins">
                                       <ul>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">location_city</i>
                                                <i class="icon material-icons md-only" style="color: black">location_city</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <select id="cars" name="cars" style="width: 100%;color: gray">
                                                      <option value="volvo">Category</option>
                                                      <option value="volvo">Volvo</option>
                                                      <option value="saab">Saab</option>
                                                      <option value="fiat">Fiat</option>
                                                      <option value="audi">Audi</option>
                                                   </select>
                                                </div>
                                             </div>
                                          </li>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">location_city</i>
                                                <i class="icon material-icons md-only" style="color: black">location_city</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <select id="cars" name="cars" style="width: 100%;color: gray">
                                                      <option value="volvo">City</option>
                                                      <option value="volvo">Volvo</option>
                                                      <option value="saab">Saab</option>
                                                      <option value="fiat">Fiat</option>
                                                      <option value="audi">Audi</option>
                                                   </select>
                                                </div>
                                             </div>
                                          </li>
                                          <li class="item-content item-input">
                                             <div class="item-media">
                                                <i class="icon f7-icons ios-only">home</i>
                                                <i class="icon material-icons md-only" style="color: black">home</i>
                                             </div>
                                             <div class="item-inner">
                                                <div class="item-input-wrap">
                                                   <input type="text" placeholder="Partner Address" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="row" style="margin-top: 15px;">
                                 <div class="col-100"><a href="/homepage/"  class="col col-50 button signinbuttn md-elevation-6" style="background:#13D761;color: white;">Sign Up</a></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- full screen menu code  -->
      </div>
      <script src="js/framework7.min.js"></script>
      <script src="js/routes.js"></script>  
      <!-- jquery -->
      <script src="js/jquery-3.3.1.min.js"></script>
      <!-- sparklines js -->
      <script src="js/jquery.sparkline.min.js"></script>
      <!-- app js -->
      <script src="js/app.js"></script>
   </body>
</html>
<script>
   $(document).ready(function(){
     $("#next").click(function(){
       $(".div_2").show();
       $(".div_1").hide();
     });
     
   });
</script>