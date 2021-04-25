@extends('admin.layout.app')

@section ('content')
        <div class="content-wrapper">
          <div class="row">
		  <div class="col-md-2">
		  </div>
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Plans</h4><br>
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
                  <form class="forms-sample" action="{{route('membershipupdate', $membership_plan->plan_id)}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      <div class="form-group">
                      <label for="exampleInputName1">Coins</label>
                      <input type="hidden" name="id"  value="{{$membership_plan->plan_id}}">
                      <input type="text" class="form-control" id="exampleInputName1" name="plan_week" value="{{$membership_plan->coins}}" placeholder="Plan Weeks/Months"><br>
                            
                    
                      <div class="form-group">
                      <label for="exampleInputName1">Coin Price</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="plan_price" value="{{$membership_plan->coin_price}}" placeholder="Plan Price"><br>
                    
                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                    <!--
                    <button class="btn btn-light">Cancel</button>
                    -->
                     <a href="{{route('membershipedit', $membership_plan->plan_id)}}" class="btn btn-light">Cancel</a>
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