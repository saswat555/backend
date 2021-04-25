@extends('admin.layout.app')
<style>
.raffleimg{
    width: 100px;
border-radius: 50%;
height: 100px;
}
</style>

@section ('content')
        <div class="content-wrapper">
          <div class="row">
		  <div class="col-md-2">
		  </div>
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add-Sub-Category</h4><br>
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
                  <form class="forms-sample" action="{{route('updateservice')}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      
                       <div class="form-group">
                    <label for="exampleFormControlSelect3">Partner</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="category_list">
                      @foreach($partner as $partners)
		          	<option value="{{$partners->city_id}}" @if($partners->city_id ==$services->partner_id) selected @endif>{{$partners->city_name}}</option>
		              @endforeach

                    </select>
                    </div>
                      
                     <div class="form-group">
                    <label for="exampleFormControlSelect3">choose a Category</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="subcat_name">
                        @foreach($sub_child_category as $service)
                        <option value="{{$service->child_category_id}}" @if($service->child_category_id == $services->child_category_id) selected @endif>
                            <span style="font-weight:bold">{{$service->category_name}}-></span>&nbsp;
                            {{$service->sub_category_name}}-></span>&nbsp;
                            {{$service->child_name}}
                        </option>
                      @endforeach
                        
                    

                    </select>
                    </div> 
                    
                    
                        <div class="form-group">
                      <label for="exampleInputName1">Service Name</label>
                      <input type="hidden" name="service_id" value="{{$services->service_id}}">
                      <input type="text" class="form-control" id="exampleInputName1" name="service_name" value="{{$services->service_name}}" placeholder="Service Name">
                      </div>
                      <div class="form-group">
                      <label for="exampleInputName1">Service Short Description</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="service_des" value="{{$services->service_description}}" placeholder="Service Short Description"></div>
                       <div class="form-group">
                      <label for="exampleInputName1">Service Price</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="service_price" value="{{$services->service_price}}" placeholder="Service Price"></div>
                      
                       <div class="form-group">
                      <label for="exampleInputName1">Strike Price</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="strike_price" value="{{$services->mrp}}" placeholder="Stike Price"></div>
                      
                      <div class="form-group">
                      <label for="exampleInputName1">Time</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="time" value="{{$services->time}}" placeholder="Time"></div>
                      
                      
                     <img src="{{url($services->service_img)}}" class="raffleimg">
                     <div class="form-group">
                      <label>Image upload</label>
                      <input type="file" name="reward_image"  class="file-upload-default">
                      <input type="hidden" name="old_image" value="{{$services->service_img}}" >
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="image Upload">
                        <div class="input-group-append">
                          <button class="file-upload-browse btn btn-info" type="button">Upload</button> 
                        </div>
                      </div>
                    </div>
                    
                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                    <!--
                    <button class="btn btn-light">Cancel</button>
                    -->
                     <a href="#" class="btn btn-light">Cancel</a>
                  </form>
                </div>
              </div>
            </div>
             <div class="col-md-2">
		  </div>
     
          </div>
        </div>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
        	$(document).ready(function(){
        	
                $(".des_price").hide();
                
        		$(".img").on('change', function(){
        	        $(".des_price").show();
        			
        	});
        	});
</script>

 


 @endsection