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
                  <form class="forms-sample" action="{{route('updatechildcategory')}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
            
            <div class="form-group">
                    <label for="exampleFormControlSelect3">choose a Category</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="subcat_name">
                        @foreach($sub_category as $service)
                        <option value="{{$service->sub_category_id}}" @if($service->sub_category_id == $sub_child_category->sub_category_id) selected @endif>
                            <span style="font-weight:bold">{{$service->category_name}}</span>&nbsp;-->
                            {{$service->sub_category_name}}
                        </option>
                      @endforeach

                    </select>
                    </div> 
                    
                    
                      <div class="form-group">
                      <label for="exampleInputName1">Child Category Name</label>
                      <input type="hidden" name="child_category_id" value="{{$sub_child_category->child_category_id}}">
                      <input type="text" class="form-control" id="exampleInputName1" name="category_name" value="{{$sub_child_category->child_name}}" placeholder="Category Name"><br>
                      
                      
                     <img src="{{url($sub_child_category->child_img)}}" class="raffleimg">
                     <div class="form-group">
                      <label>Image upload</label>
                      <input type="file" name="reward_image"  class="file-upload-default">
                      <input type="hidden" name="old_image" value="{{$sub_child_category->child_img}}" >
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
                     <a href="{{route('editchildcategory', $sub_child_category->child_category_id)}}" class="btn btn-light">Cancel</a>
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