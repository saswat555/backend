<div class="tab-pane fade show active" id="nav-find" role="tabpanel" aria-labelledby="nav-find-tab">
   <div class="content-sticky-footer">
      <h2 class="block-title " style="color: white;">New Leads</h2>
      <div class="row m-0">
         <div class="col-12">
              @if(count($booking)>0)
              @foreach($booking as $bookings)
                @foreach($users as $user)
                @if($user->id==$bookings->id)
                @if($bookings->booking_status==0)
            <div class="card ">
               <div class="card-body">
                  <div class="media">
                     <a href="{{route('leadpreview',[$bookings->booking_id])}}" class="media-body">
                        <h5>{{$user->user_name}}</h5>
                        <p>{{$bookings->coins}} credits</p>
                     </a>
                     <a href="#" class="media-body">
                        <p>BOOKING</p>
                        <h5>{{$bookings->booking_date}}</h5>
                     </a>
                      <a href="#" class="media-body">
                        <p>DATE</p>
                        <h5>{{$bookings->confirmed_on}}</h5>
                     </a>
                  </div>
               </div>
               <div class="card-footer pt-0">
                  <div class="row">
                     <p class="para_add">{{$bookings->user_address}}</p>
                  </div>
               </div>
            </div>
             @endif
              @endif
            @endforeach
            @endforeach
            @endif
           
         </div>
      </div>
      <br>
   </div>
</div>