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
                        " role="tab " aria-controls="user-profile-info " aria-selected="true ">Edit Banner</a>
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
                              <form class="forms-sample" action="{{route('updatelowerbaneer', [$adminEditBanner->banner_id])}}" method="post" enctype="multipart/form-data">
                                {{csrf_field()}}
                                    
                     
                                    
                                <div class="form-group">
                                  <label for="banner_name">banner name :</label>
                                  <input type="text" class="form-control" id="banner_name" name="banner_name" placeholder="banner name" value="{{$adminEditBanner->heading}}">
                                </div>


                                <div class="form-group">
      			                      <label>banner image :</label>
      			                      <input type="file" name="banner_image" class="file-upload-default">
      			                      <div class="input-group col-xs-12">
      			                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload banner">
      			                        <span class="input-group-append">
      			                          <button class="file-upload-browse btn btn-info" type="button">Upload</button>
      			                        </span>
      			                      </div>
      			                    </div>

                                <button type="submit" class="btn btn-success mr-2">Submit</button>
                                <a href="{{route('lowerbannerindex')}}" class="btn btn-light">back</a>
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