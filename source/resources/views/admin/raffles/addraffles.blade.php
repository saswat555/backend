@extends('admin.layout.app')

@section ('content')
        <div class="content-wrapper">
          <div class="row">
		  <div class="col-md-2">
		  </div>
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Raffles</h4><br>
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
                  <form class="forms-sample" action="{{route("addnewraffle")}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      <div class="form-group">
                      <label for="exampleInputName1">Raffle Card Text</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="raffle_card" value="" placeholder="Text word limit (15-25)"><br>
                      
                      <!--  <div class="form-group">-->
                      <!--<label for="exampleInputName1">Scratch Card Sub Text</label>-->
                      <!--<input type="text" class="form-control" id="exampleInputName1" name="sub_text" value="" placeholder="Text word limit"><br>-->
                      
                     <div class="form-group">
                      <label>Image upload</label>
                      <input type="file" name="reward_image"  class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image Size (50kb)">
                        <div class="input-group-append">
                          <button class="file-upload-browse btn btn-info" type="button">Upload</button>                          
                        </div>
                      </div>
                    </div>
                    
                    <!-- <div class="form-group">-->
                    <!--  <label>Back Image upload</label>-->
                    <!--  <input type="file" name="back_image"  class="file-upload-default">-->
                    <!--  <div class="input-group col-xs-12">-->
                    <!--    <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image Size">-->
                    <!--    <div class="input-group-append">-->
                    <!--      <button class="file-upload-browse btn btn-info" type="button">Upload</button>                          -->
                    <!--    </div>-->
                    <!--  </div>-->
                    <!--</div>-->
                    
               <!--     <div class="form-group">-->
               <!-- <label for="appt-time">Start Time:</label>-->
               <!-- <input id="appt-time" type="time" name="start_time" value="13:30">-->
               <!-- </div>-->
               <!--<div class="form-group">-->
               <!--&nbsp;&nbsp;<label for="appt-time">End Time:</label>-->
               <!-- <input id="appt-time" type="time" name="end_time" value="13:30">-->
               <!-- </div-->
               <!-- <br>-->
                                        
               <!--          <div class="form-group">-->
               <!--       <label for="exampleInputName1">Entry Coins</label>-->
               <!--       <input type="text" class="form-control" id="exampleInputName1" name="entry_coin" value="" placeholder="Entry Coin for Raffles Card"><br>-->
                      
               <!--     <div class="form-group">-->
               <!--           <label for="exampleInputName1">Min. Coins</label>-->
               <!--           <input type="text" class="form-control" id="exampleInputName1" name="min_coins" value="" placeholder="Starting range "><br>-->
               <!--     </div>-->
                    
               <!--      <div class="form-group">-->
               <!--           <label for="exampleInputName1">Max. Coins</label>-->
               <!--           <input type="text" class="form-control" id="exampleInputName1" name="max_coins" value="" placeholder="Maximum Range"><br>-->
               <!--     </div>-->
                    
               <!--      <div class="form-group">-->
               <!--           <label for="exampleInputName1">Trade Url</label>-->
               <!--           <input type="text" class="form-control" id="exampleInputName1" name="trade_url" value="" placeholder="www.tadeurl.com"><br>-->
               <!--     </div>-->
                      
                      <!--   <div class="form-group">-->
                      <!--<label for="exampleInputName1">Max Coins</label>-->
                      <!--<input type="text" class="form-control" id="exampleInputName1" name="max_coin" value="" placeholder="Max Coins greater than Min"><br>-->
                    

                    
                    
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