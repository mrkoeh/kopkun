@extends('layouts.fronthome_template')

@section('title')
{!! $detail->judul_lowongan or null !!} 
@stop
@section('meta-description')
{!! $detail->deskripsi_seo or null !!} 
@stop
@section('meta-keyword')
{!! $detail->tag_lowongan or null !!} 
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
<div class="col-md-8 col-sm-8 col-xs-12">
<div class="inner-box my-resume">
<div class="author-resume">
<div class="thumb">
@if(count($detail->cover_lowongan)== 0)
<img src="https://res.cloudinary.com/drlqsaffh/image/upload/v1523367046/l2-small.jpg" alt="{{$detail->judul_lowongan }}" width="100" height="100">  
@else
<img src="{{asset('uploads/job_cover/' .$detail->cover_lowongan)}}" alt="{{$detail->judul_lowongan }}">
@endif
</div>
<div class="author-info">
 <h3>{{$detail->judul_lowongan }}</h3>
<p class="sub-title">{{$detail->nama_perusahaan}}</p>
<p><span class="address"><i class="ti-location-pin"></i> {{$detail->area_slug }} </span> </p>

</div>
</div>
<br>
<div class="sharethis-inline-share-buttons"></div>
<div class="about-me item">
<h3>Deskripsi Lowongan : </h3>
<p>{!! $detail->deskripsi_lowongan !!}</p>
</div>
<div class="work-experence item">
<h3>Informasi Lowongan : </h3>
<table class="table">
<tr><td> <i class="ti-check-box"></i> Nama Perushaaan </td><td class="col-md-1">:</td><td>{{ $detail->nama_perusahaan}}</td></tr>
<tr><td> <i class="ti-check-box"></i> Status Pegawai </td><td class="col-md-1">:</td><td>{{ $detail->nama_status }}</td></tr>
<tr><td> <i class="ti-check-box"></i> Level Pegawai </td><td class="col-md-1">:</td><td>{{ $detail->nama_level}}</td></tr>
<tr><td> <i class="ti-check-box"></i> Jam Kerja </td><td class="col-md-1">:</td><td>{{ $detail->nama_waktu}}</td></tr>
<tr><td> <i class="ti-check-box"></i> Jenis Lowongan </td><td class="col-md-1">:</td><td>{{ str_replace('-', ' ', $detail->tipe_slug) }}</td></tr>
<tr><td> <i class="ti-check-box"></i> Pendidikan </td><td class="col-md-1">:</td><td>{{ str_replace('-', ' ', $detail->pendidikan_slug)}}</td></tr>
<tr><td> <i class="ti-check-box"></i> Area Lowongan </td><td class="col-md-1">:</td><td>{{ str_replace('-', ' ', $detail->area_slug)}}</td></tr>
</table>
</div>
</div>
</div>
@endsection