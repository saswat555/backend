
<style>
    a.btn.btn-info {
    border-radius: 49%;
    background-color: transparent;
    color: grey;
    border: 2px solid;
}
button.btn.btn-danger {
    border-radius: 49%;
    background-color: transparent;
    color: grey;
    border: 2px solid;
}
    a.btn.btn-info:hover {
    border-radius: 49%;
    background-color: black;
    color: white;
    border: 2px solid;
}
button.btn.btn-danger:hover {
    border-radius: 49%;
    background-color: black;
    color: white;
    border: 2px solid;
}
</style>

@extends('admin.layout.app')

@section ('content')
   <div class="content-wrapper">
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
              <h4 class="card-title">Add Child Category</h4>
              <a class="btn btn-success" href="{{route('add_child_category')}}">Add</a>
              <div class="row">
                <div class="col-12">
                  <div class="table-responsive">
                    <table id="order-listing" class="table">
                      <thead>
                        <tr>
                           <th>S.No</th>
                            <!--<th>Category Name</th>-->
                            <th>Sub Category Name</th>
                            <th>Child Category Name</th>
                            <th>Category Image</th>
                            <th>Action</th>
                            
                        </tr>
                      </thead>
                      <tbody>
                         @if(count($sub_child_category)>0)
                          @php $i=1; @endphp
                          @foreach($sub_child_category as $categories)
                        <tr>
                           <td>{{$i}}</td>
                           
                            
                            <td>{{$categories->sub_category_name}}</td>
                            <td>{{$categories->child_name}}</td>
                             <td><img src="{{url($categories->child_img)}}"></td>
                            
                            
                            <td>
                                <a href="{{route('editchildcategory',$categories->child_category_id)}}" class="btn btn-info"  style="width: 10px;padding-left: 9px;" style="color: #fff;"><i class="fa fa-edit" style="width: 10px;"></i></a>
                                
							<button type="button"  style="width: 10px; padding-left: 11px;" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal{{$categories->child_category_id}}"><i class="fa fa-trash"></i></button>
							</td>

                        </tr>
                        @php $i++; @endphp
                        @endforeach
                      @else
                        <tr>
                          <td>No data found</td>
                        </tr>
                      @endif
                       
                      </tbody>
                       <br><br>
                       {{ $sub_child_category->render("pagination::bootstrap-4") }}
                    </table> 
                   
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
     @foreach($sub_child_category as $categories)
<!-- Modal -->
<div class="modal fade" id="exampleModal{{$categories->child_category_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Delete Category</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
			</div>
			<div class="modal-body">
				Are you want to delete Category.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="{{route('deletechildcategory', [$categories->child_category_id])}}" class="btn btn-primary">Delete</a>
			</div>
		</div>
	</div>
</div>
@endforeach   
 
      
@endsection


