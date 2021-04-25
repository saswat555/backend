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
      <link rel="stylesheet" href="{{url('vendors/part-app-logcss/app.css')}}">
      <style type="text/css">
         #bn::placeholder {
         color: gray;  
         }
         .tabber {
    padding: 0;
    z-index: 9;
    width: 100%;
    left: 0;
}

.tabber-bottom {
    position: absolute;
    bottom: 0px;
    overflow: hidden;
    padding-top: 10px;
    left: 0;
}
      </style>
   </head>
   <body >


  <center>
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
<img src="{{url('vendors/part-app-log/img/homeservice-app.png')}}" height="50" style="margin-top: 130px;">

<h5 style="font-size: 15.6px;">ENTER VERIFICATION CODE</h5>

   <p style="font-size: 13.7px;color: gray;width: 320px;margin-top: -19px;margin-bottom: 20px">We have send 4 digit code\non +91-{{$phone}}</p></center>
        <center>



          <div class="input-group" style="background-color: white;padding: 10px 6px 10px 15px;border:1px solid #CCCCCC;border-radius: 3px;width: 23px;display: inline-block;margin-right: 10px;margin-left: 10px"> 
    
  <input type="number"  name="email" onKeyPress="if(this.value.length==1) return false;" style="border: 0;outline: none;width: 34px;">
</div>

 <div class="input-group" style="background-color: white;padding: 10px 6px 10px 15px;border:1px solid #CCCCCC;border-radius: 3px;width: 23px;display: inline-block;margin-right: 10px"> 
    
  <input type="number"  name="email" onKeyPress="if(this.value.length==1) return false;" style="border: 0;outline: none;width: 34px;">
</div>

<div class="input-group" style="background-color: white;padding: 10px 6px 10px 15px;border:1px solid #CCCCCC;border-radius: 3px;width: 23px;display: inline-block;margin-right: 10px"> 
    
  <input type="number"  name="email" onKeyPress="if(this.value.length==1) return false;" style="border: 0;outline: none;width: 34px;">
</div>

<div class="input-group" style="background-color: white;padding: 10px 6px 10px 15px;border:1px solid #CCCCCC;border-radius: 3px;width: 23px;display: inline-block;margin-right: 10px"> 
    
  <input type="number"  name="email" onKeyPress="if(this.value.length==1) return false;" style="border: 0;outline: none;width: 34px;">
</div>
<form action="{{route('checkotp')}}" method="post" enctype="multipart/form-data">
     {{csrf_field()}}
 <div class="item-inner" style="border: 1px solid green;">
    <div class="item-input-wrap">
        
       <input type="text" name="otp" placeholder="enter otp" id="bn">
        <input type="hidden" name ="phone" value="{{$phone}}">
     
    </div>
 </div>

 <button type="submit"  class="btn tabber tabber-bottom" style="background-color: #13D761;color: white;max-width: 100%;height: 48px;padding-top: 8px;font-size: 16px;" ><b>Verify</b></button>
 
   </form>
</center>











    
      <script src="{url('vendors/part-app-log/js/framework7.min.js')}}"></script>
      <script src="{url('vendors/part-app-log/js/routes.js')}}"></script>  
      <!-- jquery -->
      <script src="{url('vendors/part-app-log/js/jquery-3.3.1.min.js')}}"></script>
      <!-- sparklines js -->
      <script src="{url('vendors/part-app-log/js/jquery.sparkline.min.js')}}"></script>
      <!-- app js -->
      <script src="{url('vendors/part-app-log/js/app.js')}}"></script>
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