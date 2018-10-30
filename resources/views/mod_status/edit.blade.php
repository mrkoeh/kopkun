@extends ('layouts.admin_template')
  @section ('content')
<div class="box-header with-border">
  <h3 class="box-title">{{ $page_title }}</h3>
</div>
@include('layouts.errors')
@include('layouts.flash_message') 
<form action="/ubah-status/{{$getstatus->id}}" method="post" enctype="multipart/form-data" class="form-horizontal">
      {{ csrf_field() }}
  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
            <div class="form-group">
              <label for="nama" class="col-sm-2 control-label">Status</label>
              <div class="col-sm-7">
                <input type="text" class="form-control" name="nama_status" value="{{$getstatus->nama_status}}">
              </div>
            </div>
            </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/semua-status'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
@endsection