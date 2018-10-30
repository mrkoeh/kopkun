@extends ('layouts.admin_template')
  @section ('content')
<div class="box-header with-border">
  <h3 class="box-title">{{ $page_title }}</h3>
</div>
@include('layouts.errors')
@include('layouts.flash_message')  
<form action="/tambah-grup" method="post" enctype="multipart/form-data" class="form-horizontal">
      {{ csrf_field() }}
  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
            <div class="form-group">
              <label for="nama" class="col-sm-2 control-label">Nama grup</label>
              <div class="col-sm-5">
                <input type="text" class="form-control" name="display_name" required="required">
              </div>
            </div>

              <label for="nama" class="col-sm-2 control-label"></label>
              <div class="col-md-5">
                <div class="box">
                  <div class="box-body">
                    <table class="table table-bordered">
                      <tr>
                        <th style="width: 10px">#</th>
                        <th>Permission Name</th>
                        <th><input type="checkbox" disabled /></th>
                      </tr>
                    @foreach($permissions as $term)
                      <tr>
                        <td>#</td>
                        <td>{{ $term->display_name }}</td>
                        <td>
                          <input type="checkbox"  name="permissions[]" value="{{ $term->id }}">
                        </td>
                      </tr>
                    @endforeach
                    </table>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/grup'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
@endsection