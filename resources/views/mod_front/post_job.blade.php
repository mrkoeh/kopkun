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
<div class="col-sm-12 col-md-9 col-md-offset-2">
@include('sweet::alert')
<div class="page-ads box">
<form class="form-ad" method="post" action="{{url('/posting-lowongan')}}" enctype="multipart/form-data">
  {{ csrf_field() }}
<div class="form-group">
<label class="control-label">Email Anda <span>(Pastikan aktif)</span></label>
<input type="email" class="form-control" name="created_user" required="required">
</div>
<div class="form-group">
<label class="control-label">Nama Lowongan</label>
<input type="text" class="form-control" name="judul_lowongan"  required="required">
</div>
<div class="form-group">
<label class="control-label">Nama Perusahaan</label>
<input type="text" class="form-control" name="nama_perusahaan"  required="required">
</div>
<div class="form-group">
<label class="control-label">Bidang Pekerjaan <span>(bisa lebih dari satu)</span></label>
<select class="multiple-selected" name="jenis[]" multiple="multiple" style="width: 100%;"  required="required">
  @foreach($jenis as $r)
  <option value="{{$r->tipe_slug}}">{{$r->nama_tipe}}</option>
  @endforeach
</select>
</div>
<div class="form-group">
<label class="control-label">Area/Wilayah <span>(bisa lebih dari satu)</span></label>
<select class="multiple-selected" name="area[]" multiple="multiple" style="width: 100%;"  required="required">
  @foreach($area as $a)
  <option value="{{$a->area_slug}}">{{$a->nama_area}}</option>
  @endforeach
</select>
</div>
<div class="form-group">
<label class="control-label">Level Pendidikan Tersedia <span>(bisa lebih dari satu)</span></label>
<select class="multiple-selected" name="pendidikan[]" multiple="multiple" style="width: 100%;"  required="required">
  @foreach($pendidikan as $p)
  <option value="{{$p->pendidikan_slug}}">{{$p->nama_pendidikan}}</option>
  @endforeach
</select>
</div>
<div class="form-group">
<label class="control-label">Waktu Kerja</label>
<div class="search-category-container">
<select class="multiple-selected" name="jamkerja"  style="width: 100%;"  required="required">
<option></option>
  @foreach($waktu as $w)
  <option value="{{$w->id}}">{{$w->nama_waktu}}</option>
  @endforeach
</select>
</div>
</div>
<div class="form-group">
<label class="control-label">Level Jabatan</label>
<div class="search-category-container">
<select class="multiple-selected" name="jabatan"  style="width: 100%;"  required="required">
<option></option>
  @foreach($level as $l)
  <option value="{{$l->id}}">{{$l->nama_level}}</option>
  @endforeach
</select>
</div>
</div>
<div class="form-group">
<label class="control-label">Status Pegawai</label>
<div class="search-category-container">
<select class="multiple-selected" name="status"  style="width: 100%;"  required="required">
<option></option>
  @foreach($status as $s)
  <option value="{{$s->id}}">{{$s->nama_status}}</option>
  @endforeach
</select>
</div>
</div>
<div class="form-group">
<label class="control-label">Description</label>

<textarea id="konten" name="deskripsi_lowongan" style="width: 100%; height: 400px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" placeholder="jelaskan tentang perusahaan, cara melamar, syarat untuk melamar dan informasi kontak" required="required"></textarea>
</div>

<label class="control-label">Logo/Cover Perusahaan</label>
<input type="file" name="cover_lowongan">

<center><button type="submit" class="btn btn-common">Submit</button></center>

</form>
</div>
</div>
@endsection
@section('pagescript')

<script src="{{asset('template/plugin/ckeditor/ckeditor.js')}}"></script>
<script type="text/javascript">
   CKEDITOR.replace( 'konten' );

$(document).ready(function() {
    $('.multiple-selected').select2({
    placeholder: "Pilih",
    allowClear: true      
    });
});

</script>
@endsection