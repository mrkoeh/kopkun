 @extends ('layouts.admin_template')
  @section ('content')
  <div class="box-header">
    <h3 class="box-title">{{ $page_title }}</h3>
  </div>
    @can('tambah_grup_pengguna')
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-grup'">
    <i class="fa fa-plus-square"></i> Tambah</button><br><br>
    @endcan
@include('layouts.errors')
@include('layouts.flash_message')     
<div class="box">
  <div class="box-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
      <tr>
            <th>Nama</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
        @foreach($roles as $grup)
        <tr>
          <td>{{$grup->display_name}}</td>
          <td>
        @can('edit_grup_pengguna')  
            <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-grup/{{$grup->id}}'"><i class="fa fa-pencil-square-o"></i> Edit</button>
           @endcan
        @can('hapus_grup_pengguna')
            <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-grup/{{$grup->id}}'"><i class="fa fa-trash"></i> Hapus</button>
          @endcan     
          </td>
      </tr>
      @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection