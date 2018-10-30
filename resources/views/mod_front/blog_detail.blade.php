@extends('layouts.frontblog_template')
@section('title')
{!! $details->judul_artikel !!} 
@stop

@section('meta-description')
{!! $details->deskripsi_seo !!}
@stop

@section('meta-keyword')
{!! $details->tag_artikel !!}
@stop


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
<div class="col-md-9">
<div class="blog-post">
<div class="post-content">
<h3 class="post-title"><a href="#">{{$details->judul_artikel}}</a></h3>
<div class="meta">
<span class="meta-part"><a href="#"><i class="ti-user"></i> {{$details->created_user}}</a></span>
<span class="meta-part"><i class="ti-calendar"></i><a href="#"> {{date('d M Y', strtotime($details->created_at))}}</a></span>
</div>
<p>{!! $details->isi_artikel !!}</p>
</div>
</div>
</div>
@endsection