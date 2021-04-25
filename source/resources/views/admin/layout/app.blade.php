<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="{{url('vendors/iconfonts/mdi/css/materialdesignicons.min.css')}}">
  <link rel="stylesheet" href="{{url('vendors/iconfonts/mdi/css/tags.min.css')}}">
  <link rel="stylesheet" href="{{url('vendors/iconfonts/flag-icon-css/css/flag-icon.min.css')}}">
  <link rel="stylesheet" href="{{url('vendors/iconfonts/simple-line-icon/css/simple-line-icons.css')}}">
  <link rel="stylesheet" href="{{url('vendors/css/vendor.bundle.base.css')}}">
  <link rel="stylesheet" href="{{url('vendors/css/vendor.bundle.addons.css')}}">
  <link rel="stylesheet" href="{{url('vendors/css/vendor.bundle.tags.css')}}">
  <link rel="stylesheet" href="{{url('vendors/iconfonts/font-awesome/css/font-awesome.min.css')}}" />
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="{{url('css/style.css')}}">
  <link rel="stylesheet" href="{{url('css/tags.css')}}">
  <!-- endinject -->
  <link rel="shortcut icon" href="{{url($app_image)}}" />

  
</head>

<body>
  <div class="container-scroller">
    @include('admin.layout.nav')
    <div class="container-fluid page-body-wrapper">
      @include('admin.layout.sidebar')
      <div class="main-panel">
          <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <!--<div class="alert alert-primary" role="alert">-->
                
            </div>
          </div>
        @yield('content')
        @include('admin.layout.footer')
      </div>
    </div>
  </div>

  <!-- plugins:js -->
  <script src="{{url('vendors/js/vendor.bundle.base.js')}}"></script>
  <script src="{{url('vendors/js/vendor.bundle.tags.js')}}"></script>
  <script src="{{url('vendors/js/vendor.bundle.addons.js')}}"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="{{url('js/off-canvas.js')}}"></script>
  <script src="{{url('js/hoverable-collapse.js')}}"></script>
  <script src="{{url('js/misc.js')}}"></script>
  <script src="{{url('js/settings.js')}}"></script>
  <script src="{{url('js/todolist.js')}}"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="{{url('js/dashboard.js')}}"></script>
  <script src="{{url('js/file-upload.js')}}"></script>
  <script src="{{url('js/iCheck.js')}}"></script>
  <script src="{{url('js/typeahead.js')}}"></script>
  <script src="{{url('js/select2.js')}}"></script>
  <script src="{{url('js/chart.js')}}"></script>
  <!-- End custom js for this page-->
  
  @yield('line-chart')
  @yield('jquery')
</body>
</html>