 @extends ('layouts.admin_template')
  @section ('content')
  <div class="box-header">
    <h3 class="box-title">{{ $page_title }}</h3>
  </div>
    @can('tambah_daftar_pengguna')
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-pengguna'">
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
            <th>Email </th>
            <th>Grup Pengguna</th>
            <th>Status Pengguna</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
    @foreach($penggunas as $pengguna)
    <tr>
      <td>{{$pengguna->name}}</td>
      <td>{{$pengguna->email}}</td>
      <td>{{  $pengguna->roles()->pluck('display_name')->implode(' ') }}</td>
      <td>
          @if($pengguna->active == 1 ) 
            <small class="label label-info">Aktif</small>
          @else
            <small class="label label-warning">Tidak Aktif</small> 
          @endif 
      </td>
        <td>
         @can('edit_daftar_pengguna')  
          <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-pengguna/{{$pengguna->id}}'"><i class="fa fa-pencil-square-o"></i> Edit</button>
        @endcan
        @can('hapus_daftar_pengguna')
          <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-pengguna/{{$pengguna->id}}'"><i class="fa fa-trash"></i> Hapus</button>
        @endcan
        @can('ubah_status_pengguna')
            <form method="post" action="{{url('/status-pengguna', $pengguna->id )}}">
              {{ csrf_field() }}
              <input type="hidden" name="active" value="{{ $pengguna->active }}">
              <input type="hidden" name="id" value="{{ $pengguna->id }}">
              <div class="btn-group-horizontal">
              @if($pengguna->active == 1)
              <button type="submit" class="btn btn-flat btn-xs text-danger">
                  <span class="glyphicon glyphicon-ban-circle"></span> Nonaktifkan
              </button>
              @elseif($pengguna->active == 0)
              <button type="submit" class="btn btn-flat btn-xs text-green">
                  <span class="glyphicon glyphicon-ok-circle"></span> Aktifkan
              </button>
              @endif
              </div>
          </form>
        @endcan
        </td>
      </tr>
      @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection