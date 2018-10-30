@extends ('layouts.admin_template')
  @section ('content')
<div class="box-header with-border">
  <h3 class="box-title">{{ $page_title }}</h3>
</div>
@include('layouts.errors')
<form action="/ubah-pengguna/{{$user->id}}" method="post" enctype="multipart/form-data" class="form-horizontal">
      {{ csrf_field() }}
  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Nama Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="name" value="{{$user->name}}" >
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Email Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="email" value="{{$user->email}}" >
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Grup Pengguna</label>
                <div class="col-sm-5">
                 <select class="form-control select2" style="width: 100%;" name="role" >
                  <option value="0">--pilih grup--</option>
                    @foreach($roles as $role)
                    <option value="{{$role->id}}" <?php if ($role->id == $selected_role) echo ' selected'; ?>>{{$role->display_name}}</option>
                    @endforeach
                </select>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password" >
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Ulangi Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password_confirmation">
                </div>
              </div>

            </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/pengguna'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
@endsection