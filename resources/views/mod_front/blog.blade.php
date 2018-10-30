@extends('layouts.frontblog_template')
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
@if(count($artikels) == 0)
<div class="alert alert-danger">Belum ada artikel ! </div>
@else
@foreach($artikels as $artikel)
<div class="blog-post">
<div class="post-content">
<h3 class="post-title"><a href="{{url('/blog',$artikel->judul_slug)}}">{{$artikel->judul_artikel}}</a></h3>
<div class="meta">
<span class="meta-part"><a href="#"><i class="ti-user"></i> {{$artikel->created_user}}</a></span>
<span class="meta-part"><i class="ti-calendar"></i><a href="#"> {{date('d M Y', strtotime($artikel->created_at))}}</a></span>
</div>
<p>{!! str_limit($artikel->isi_artikel,$limit = 200,  $end='...')  !!}</p>
<a href="{{url('/blog',$artikel->judul_slug)}}" class="btn btn-common">Read More</a>
</div>
</div>
@endforeach
{!! $artikels->render() !!} 
@endif
</div>
@endsection