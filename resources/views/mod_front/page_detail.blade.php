@extends('layouts.fronthome_template')

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
<div class="col-md-8 col-sm-8 col-xs-12">
<div class="inner-box my-resume">
<div class="about-me item">
<h3>{{$detail->judul_halaman}} </h3>
<p>{!! $detail->isi_halaman !!}</p>
</div>
</div>
</div>
@endsection