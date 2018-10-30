@extends('layouts.front_jobpost_template')

@section('content')
@section('judul')
<div class="page-header" style="background: url(https://res.cloudinary.com/drlqsaffh/image/upload/v1523001816/banner1.jpg);">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="breadcrumb-wrapper">
					<h2 class="product-title">{{ $page_title or null}}</h2>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
@section('content')
<section id="content">
<div class="container">
<div class="row">
@include('layouts.errors')
@include('layouts.front_flash')  
<div class="col-md-4">
<h2 class="medium-title">
Contact Us
</h2>
<div class="information">
<div class="contact-datails">
<div class="icon">
<i class="ti-mobile"></i>
</div>
<div class="info">
<h3>Telp/HP :</h3>
<span class="detail">{{$kontak->tlp}}</span>
</div>
</div>
<div class="contact-datails">
<div class="icon">
<i class="ti-location-arrow"></i>
</div>
<div class="info">
<h3>Email :</h3>
<span class="detail"><a href="mailto:{{$kontak->email}}">{{$kontak->email}}</a></span>
</div>
</div>
</div>
</div>
<div class="col-md-8">
@include('sweet::alert')
<form class="contact-form" method="post" action="{{url('/hubungi-kami')}}" enctype="multipart/form-data">
{{ csrf_field() }}
<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-md-6">
<div class="form-group">
<input type="text" class="form-control" name="name" placeholder="Full Name" required data-error="Please enter your name">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<input type="email" class="form-control"  name="email" placeholder="mail@sitename.com" required data-error="Please enter your email">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<input type="text" placeholder="Subject"  name="subject" class="form-control" data-error="Please enter your subject">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<textarea class="form-control"  placeholder="Massage" name="pesan" rows="11" data-error="Write your message" required></textarea>
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-12">
<button type="submit" id="submit" class="btn btn-common">Send Us</button>
<div id="msgSubmit" class="h3 text-center hidden"></div>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</section>
@endsection