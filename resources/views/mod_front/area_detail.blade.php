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
@if(count($res) == 0)
<div class="alert alert-danger">Tidak ditemukan berdasarkan Pendidikan <b>   {{ $tipe_name->nama_area or null}} <b/></div>
@else
<div class="alert alert-success">Ditemukan berdasarkan Pendidikan <b>   {{ $tipe_name->nama_area or null}} <b/></div>
<div class="job-alerts-item candidates">
@foreach($res as $result)
<div class="manager-resumes-item">
<div class="manager-content">
@if(count($result->cover_lowongan)==0)
<a href="{{url('/lowker',$result->judul_slug)}}"><img class="resume-thumb" src="https://res.cloudinary.com/drlqsaffh/image/upload/v1523367046/l2-small.jpg" alt="{{$result->judul_lowongan}}"></a>
@else
<a href="{{url('/lowker',$result->judul_slug)}}"><img class="resume-thumb" src="{{asset('uploads/job_cover/' .$result->cover_lowongan)}}" alt="{{$result->judul_lowongan}}"></a>
@endif
<div class="manager-info">
<div class="manager-name">
<h5><a href="{{url('/lowker',$result->judul_slug)}}">{{$result->judul_lowongan}}</a></h5>
<h5>{{$result->nama_perusahaan}}</h5>
<span class="location"><i class="ti-location-pin"></i> {{$result->area_slug}}</span>
</div>
<div class="manager-meta">

<span class="rate"><i class="ti-time"></i> {{$result->nama_waktu}}</span>
</div>
</div>
</div>
<div class="update-date">
<p class="status">
<strong>Updated on:</strong> {{date('d M Y', strtotime($result->created_at))}}
</p>
</div>
</div>
@endforeach
{!! $res->render() !!} 
</div>
@endif
</div>
@endsection