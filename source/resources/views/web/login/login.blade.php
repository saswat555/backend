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
      <link rel="stylesheet" href="{{url('vendors/part-app-log/css/framework7.min.css')}}">
      <!-- Custom style  -->    
      <link rel="stylesheet" href="{{url('vendors/part-app-log/css/app.css')}}">
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
               <div class="background color-dark"><img src="{{('img/wall.jpg')}}" alt="" style="  "></div>
               <div class="page-content login-page" >
                  <center>
                     <div class="block">
                        <img src="{{('img/homeservice-app.png')}}" alt="" class="login-logo">
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
                     <div class="tabs-animated-wrap" >
                        <div class="tabs">
                           <div id="tab-1" class="page-content tab tab-active">
                               <form action="{{route('partnerLoginCheck')}}" method="post" autocomplete="off">
                               {{csrf_field()}}
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
                                                   <input type="email" id="bn" name="email" placeholder="email" >
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
                                 <div class="col-100">
                                     <button type="submit" class="col col-50 button signinbuttn md-elevation-6" style="background:#13D761;color: white;">Sign In</button>
                                     </div>
                              </div>
                                </form>
                              <br>
                              <a href="" class="button color-white col">Forgot password?</a>
                              <br>
                           </div>
                          
                           <div id="tab-2" class="page-content tab div_1">
                               <form action="{{route('partnersignup')}}" method="post" autocomplete="off">
                               {{csrf_field()}}
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
                                                   <input type="text" class="Userfullname" name="partner_name" placeholder="Username" id="bn">
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
                                                   <input type="text" class="Email" name="partner_email" placeholder="Email Id" id="bn">
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
                                                   <input type="number" class="Phone" name="partner_number" placeholder="Phone Number" id="bn">
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
                                                   <input type="text" class="Profession" name="profession" placeholder="Profession" id="bn">
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
                              </form>
                           </div>
                           <div id="tab-2" class="page-content tab div_2" style="display: none;">
                               <form action="{{route('partnersignup')}}" method="post" autocomplete="off">
                               {{csrf_field()}}
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
                                                   <select id="cars" class="Category_id" name="category" style="width: 100%;color: gray">
                                                     
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
                                                   <select id="cars" class="location_city" name="cars" style="width: 100%;color: gray">
                                                      <option value="2">City</option>
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
                                                   <input type="text" class="partner_address" placeholder="Partner Address" id="bn">
                                                   <span class="input-clear-button"></span>
                                                </div>
                                             </div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                              <div class="row" style="margin-top: 15px;">
                                   <span style="color: red; display: none;" class="error-msg-form-signup"></span>
                                 <div class="col-100"><a href="/homepage/"  class="col col-50 button signinbuttn md-elevation-6 pre-register"  style="background:#13D761;color: white;">Sign Up</a></div>
                              </div>
                              </form>
                           </div> 
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- full screen menu code  -->
      </div>
      <script src="{{url('vendors/part-app-log/js/framework7.min.js')}}"></script>
      <script src="{{url('vendors/part-app-log/js/routes.js')}}"></script>  
      <!-- jquery -->
      <script src="{{url('vendors/part-app-log/js/jquery-3.3.1.min.js')}}"></script>
      <!-- sparklines js -->
      <script src="{{url('vendors/part-app-log/js/jquery.sparkline.min.js')}}"></script>
      <!-- app js -->
      <script src="{{url('vendors/part-app-log/js/app.js')}}"></script>
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
 <!--for signup        -->
 <!--       <script type="text/javascript">-->
 <!--           $(document).ready(function(){-->
                
 <!--               $(".pre-register").on('click', function(){-->
 <!--                    $(".error-msg-form-signup").hide();-->
 <!--                   var name = $(".Userfullname").val();-->
 <!--                   var phone = $(".Phone").val();-->
 <!--                   var email = $(".Email").val();-->
 <!--                   var profession = $(".Profession").val();-->
 <!--                   var category_id = $(".Category_id").val();-->
 <!--                   var location_city = $(".location_city").val();-->
 <!--                    var partner_address = $(".partner_address").val();-->
 <!--                    var url = $(this).attr('url');-->
 <!--             console.log(name);-->
 <!--              console.log(phone);-->
 <!--               console.log(email);-->
 <!--                console.log(profession);-->
 <!--                 console.log(category_id);-->
 <!--                  console.log(location_city);-->
 <!--                  console.log(partner_address);-->
               
 <!--   $.ajax({-->
 <!--                      	type: "GET",-->
 <!--  		                url: "{{route('partnersignup1')}}",-->
 <!--                       data:{name:name, email:email, phone:phone,profession:profession,category_id:category_id,location_city:location_city,partner_address:partner_address},-->
 <!--                       success:function(data){-->
 <!--                           var data = JSON.parse(data);-->
	<!--					   alert(data.st);-->
 <!--                           if(data.st == 4){-->
 <!--                               $(".error-msg-form-signup").show();-->
 <!--                               $(".error-msg-form-signup").text(data.msg);-->
 <!--                               $(window).scrollTop(0);-->
                                <!--// $(".show-form").show();-->
 <!--                                 window.location.href = url+"/varifyotp/"+phone;-->
                                
 <!--                           }-->
 <!--                           if(data.st == 1){-->
 <!--                               $(".error-msg-form-signup").show();-->
 <!--                               $(".error-msg-form-signup").text(data.msg);-->
 <!--                               console.log(data.name);-->
 <!--                               console.log(data.email);-->
 <!--                               console.log(data.phone);-->
 <!--                               console.log(data.profession);-->
 <!--                               console.log(data.category_id);-->
 <!--                               console.log(data.location_city);-->
 <!--                               console.log(data.partner_address);-->
 <!--                           }-->
 <!--                           if(data.st == 2){-->
 <!--                               $(".error-msg-form-signup").show();-->
 <!--                               $(".error-msg-form-signup").text(data.msg);-->
                               
 <!--                           }-->
 <!--                            if(data.st == 3){-->
 <!--                               $(".error-msg-form-signup").show();-->
 <!--                               $(".error-msg-form-signup").text(data.msg);-->
                                
 <!--                           } -->
 <!--                           if(data.st == 5){-->
 <!--                               $(".error-msg-form-signup").show();-->
 <!--                               $(".error-msg-form-signup").text(data.msg);-->
 <!--                           }-->
                      
 <!--                       }-->
 <!--                   });-->
                
 <!--               });-->
            
 <!--           });-->
 <!--       </script> -->
        <!--for signup-->