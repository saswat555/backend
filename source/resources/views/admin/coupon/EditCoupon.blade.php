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
                  <h4 class="card-title">Update Coupon</h4>
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
                  <form class="forms-sample" action="{{route('update-coupon',$coupon->coupon_id)}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      <div class="form-group">
                    <label for="exampleFormControlSelect3">Category</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="category_name">
                      @foreach($tbl_category as $categories)
		          	<option value="{{$categories->category_id}}" @if($categories->category_id ==$coupon->category_id) selected @endif>{{$categories->category_name}}</option>
		              @endforeach
                      
                      
                    </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Coupon_name</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="coupon_name" value="{{$coupon->coupon_name}}">
                    </div>
                    
                    <img src="{{url($coupon->coupon_image)}}" class="raffleimg">
                     <div class="form-group">
                      <label>File upload</label>
                      <input type="file" name="coupon_image" class="file-upload-default">
                      <input type="hidden" name="old_coupon_image" value="{{$coupon->coupon_image}}" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                        <div class="input-group-append">
                          <button class="file-upload-browse btn btn-info" type="button">Upload</button>                          
                        </div>
                      </div>
                    </div>
                     <div class="form-group">
                   <div class="col-6 grid-margin stretch-card">
                  <div class="card">
                    <!--<div class="card-body">-->
                 <p class="card-description">Begin Date</p>
                      <div id="datepicker-popup" class="input-group date datepicker">
                        <input type="date" class="form-control" name="begin_date" value="{{$coupon->begin_date}}">
                        <div class="input-group-addon input-group-text">
                          <span class="mdi mdi-calendar"></span>
                        </div>
                      </div>
                    <!--</div>-->
                  </div>
                </div>
                
                </div>
                 <div class="form-group">
                     <div class="col-6 grid-margin stretch-card">
                     <div class="card">
                    <!--<div class="card-body">-->
                      <p class="card-description">Last Date</p>
                      <div id="datepicker-popup" class="input-group date datepicker">
                        <input type="date" class="form-control" name="end_date" value="{{$coupon->end_date}}">
                        <div class="input-group-addon input-group-text">
                          <span class="mdi mdi-calendar"></span>
                        </div>
                      <!--</div>-->
                    </div>
                  </div>
                </div>
                </div>
                <!--<div class="form-group">-->
                <!--      <label for="exampleInputName1">Price</label>-->
                <!--      <input type="text" class="form-control" id="exampleInputName1" name="price" value="" placeholder="Enter price">-->
                <!--    </div>-->
                 <div class="form-group">
                    <label for="exampleFormControlSelect3">Discount</label>
                    <select class="form-control form-control-sm img" id="exampleFormControlSelect3" name="coupon_type">
                       <option values="">Select</option>
                      <option value="percentage">Percentage</option>
                      <option value="price">Price</option>
                      
                    </select>
                     <input type="text" class="form-control des_price" id="exampleInputName1" name="coupon_discount" value="{{$coupon->coupon_discount}}" placeholder="Enter discount">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputName1">Coupon Description</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="coupon_description" value="{{$coupon->description}}">
                    </div>
                      <div class="form-group">
                      <label for="exampleInputName1">Min Cart Value</label>
                      <input type="text" class="form-control" id="exampleInputName1" value="{{$coupon->cart_value}}" name="cart_value" placeholder="Enter the min cart value">
                    </div>
                    
                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                    <!--
                    <button class="btn btn-light">Cancel</button>
                    -->
                     <a href="{{route('coupon')}}" class="btn btn-light">Cancel</a>
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