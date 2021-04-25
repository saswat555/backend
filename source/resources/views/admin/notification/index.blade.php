@extends('admin.layout.app')

@section('content')

        <div class="content-wrapper">
          <div class="row profile-page">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <div class="profile-body pt-0 pt-sm-4">
                    <ul class="nav tab-switch " role="tablist ">
                      <li class="nav-item ">
                        <a class="nav-link active " id="user-profile-info-tab " data-toggle="pill " href="#user-profile-info
                        " role="tab " aria-controls="user-profile-info " aria-selected="true ">Send Notification</a>
                      </li>
                    </ul>
                    <div class="row ">
                      <div class="col-2 col-md-2"></div>
                      <div class="col-8 col-md-8">
                        <div class="tab-content tab-body " id="profile-log-switch ">
                          <div class="card">
                            <div class="card-body">
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
                              <!-- <h4 class="card-title">Change Password</h4> -->
                              <form class="forms-sample" action="{{route('adminNotificationSend')}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}

                                <div class="form-group d-flex justify-content-between" style="visibility:hidden">
                                  <div class="form-check form-check-flat mt-0">
                                    <label class="form-check-label">
                                      <input type="checkbox" name="allSociety" class="form-check-input all-society" checked> choose all society
                                    </label>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="notification_title">Notification title :</label>
                                  <input type="text" class="form-control" id="notification_title" name="notification_title" placeholder="Enter Notification title" value="{{old('notification_title')}}">
                                </div>
                                
                                <div class="form-group">
                                  <label>Image :</label>
                                  <input type="file" name="notify_image" class="file-upload-default">
                                  <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" disabled placeholder="Upload image">
                                    <span class="input-group-append">
                                      <button class="file-upload-browse btn btn-info" type="button">Upload</button>
                                    </span>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="notification_text">Notification text :</label>
                                  <textarea type="text" class="form-control" id="notification_text" name="notification_text" placeholder="Enter Notification text" value="{{old('notification_text')}}"></textarea>
                                </div>

                                <button type="submit" class="btn btn-success mr-2">Send Notification</button>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-2 col-md-2"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->

@endsection

@section('jquery')

<script type="text/javascript">
  $(document).ready(function(){

    $(".all-society").on('click', function(){
      var societyAll = $(this).prop("checked");
      // $(".dis-society").removeAttr("disabled");
      if(societyAll == true){
        // alert(societyAll);
        $(".dis-society").attr("disabled", "disabled");
      }
      else{
        // alert(societyAll);
        $(".dis-society").removeAttr("disabled");
      }
    });

    var societyAllLoad = $(this).prop("checked");
    if(societyAllLoad == true){
      // alert(societyAll);
      $(".dis-society").attr("disabled", "disabled");
    }
    else{
      // alert(societyAll);
      $(".dis-society").removeAttr("disabled");
    }

  });
</script>

@endsection