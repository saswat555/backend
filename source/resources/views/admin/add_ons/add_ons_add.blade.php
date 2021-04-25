@extends('admin.layout.app')

@section ('content')
        <div class="content-wrapper">
          <div class="row">
		  <div class="col-md-2">
		  </div>
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add-Ons</h4><br>
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
                  <form class="forms-sample" action="{{route('new_add_ons')}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      <div class="form-group">
                    <label for="exampleFormControlSelect3">Child Category</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="child_category_list">
                      @foreach($category as $category)
                    <option value="{{$category->child_category_id}}">{{$category->child_name}}</option>
                      @endforeach
                    </select>
                    </div>
                    <!--<div class="form-group">-->
                    <!--  <label for="exampleInputName1">Add-ons Title</label>-->
                    <!--  <input type="text" class="form-control" id="exampleInputName1" name="add_title" value="" placeholder="Add-on Title"></div>-->
                      
                    <div class="form-group">
                        <label for="exampleInputName1">Add-ons Points</label> 
                    <ul id="fieldList">
                        <ol>
                      <input type="text" class="form-control" id="exampleInputName1" name="box[]" value="" placeholder="Add more points.."><br>
                         </ol>
                         <ol>
                      <input type="text" class="form-control" id="exampleInputName1" name="price[]" value="" placeholder="Add Price"><br>
                        </ol>
                    </ul>
                        <button id="addMore" class="btn btn-secondary">Add more fields</button>
                        <br>
                        <br>
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
        	$(function() {
  $("#addMore").click(function(e) {
    e.preventDefault();
    $("#fieldList").append("<ol></ol>");
    $("#fieldList").append("<ol><input type='text' class='form-control' name='box[]' id='exampleInputName1' placeholder='Add more points..' /></ol><br>");
    $("#fieldList").append("<ol><input type='text' class='form-control' name='price[]' id='exampleInputName1' placeholder='Add Price' /></ol><br>");
    
  });
});
</script>

 


 @endsection