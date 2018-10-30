@extends ('layouts.admin_template')
  @section ('content')
<div class="box-header with-border">
  <h3 class="box-title">{{ $page_title }}</h3>
</div>
@include('layouts.errors')
<form action="/tambah-pengguna" method="post" enctype="multipart/form-data" class="form-horizontal">
      {{ csrf_field() }}
  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Nama Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="name" required="required">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Email Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="email" required="required">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Grup Pengguna</label>
                <div class="col-sm-5">
                 <select class="form-control select2" style="width: 100%;" name="role" required="">
                  <option value="0">--pilih grup--</option>
                    @foreach($roles as $role)
                    <option value="{{$role->id}}">{{$role->display_name}}</option>
                    @endforeach
                </select>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password" required="required">
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Ulangi Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password_confirmation" required="required">
                </div>
              </div>

            </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
@endsection