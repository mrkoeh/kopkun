@if(count($errors))
<div class='alert alert-danger'>
	@foreach($errors->all() as $error)
 		<b>{{ $error }}</b> <br>
 	@endforeach
</div>
@endif

