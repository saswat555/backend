@extends('admin.layout.app')

@section ('content')
        <div class="content-wrapper">
          <div class="row">
		  <div class="col-md-2">
		  </div>
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add FAQ Category</h4><br>
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
                  <form class="forms-sample" action="{{route('addnewfaqcategory')}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      <div class="form-group">
                      <label for="exampleInputName1">Category Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="category_name" value="" placeholder="Category Name"><br>
                      
                      
                    <!-- <div class="form-group">-->
                    <!--  <label>Image upload</label>-->
                    <!--  <input type="file" name="image"  class="file-upload-default">-->
                    <!--  <div class="input-group col-xs-12">-->
                    <!--    <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image Size (50kb)">-->
                    <!--    <div class="input-group-append">-->
                    <!--      <button class="file-upload-browse btn btn-info" type="button">Upload</button>                          -->
                    <!--    </div>-->
                    <!--  </div>-->
                    <!--</div>-->
                    
                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                    <!--
                    <button class="btn btn-light">Cancel</button>
                    -->
                     <a href="{{route('addfaq')}}" class="btn btn-light">Cancel</a>
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