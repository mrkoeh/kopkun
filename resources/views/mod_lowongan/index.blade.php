  @extends ('layouts.admin_template')
  @section ('content')
  <div class="box-header">
    <h3 class="box-title">{{ $page_title }}</h3>
  </div>
    @can('tambah_lowongan')
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-lowongan'">
    <i class="fa fa-plus-square"></i> Tambah</button><br><br>
    @endcan
@include('layouts.errors')
@include('layouts.flash_message')     
<div class="box">
  <div class="box-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
      <tr>
            <th>Judul Lowker</th>
            <th>Perusahaan</th>
            <th>Pengiklan</th>
            <th>Publish</th>
            <th>Tgl. post</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
    @foreach($lokers as $loker)
      <tr>
      <td>{{$loker->judul_lowongan}}<br>
      @if($loker->publish == 'Y')
      <a href="{{url('/lowker',$loker->judul_slug)}}" target="_blank">{{url('/lowker',$loker->judul_slug)}}</a>
      @else
      {{url('/lowker',$loker->judul_slug)}}   
      @endif
      </td>
      <td>{{$loker->nama_perusahaan}}</td>
      <td>{{$loker->created_user}} 
        @if($loker->user_verify == 'pending')
        <span class="label label-warning ">pending</span>
        @else
        <span class="label label-info ">verified</span>
        @endif
        </td>
      <td>
          @if($loker->publish == 'Y' ) 
            <small class="label label-info">Publish</small>
          @else
            <small class="label label-warning">Draft</small> 
          @endif 
      </td>
      <td>{{ \Carbon\Carbon::parse($loker->created_at)->format('d/m/Y') }}</td>
        <td>
            @can('edit_lowongan')
          <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-lowongan/{{$loker->id}}'"><i class="fa fa-pencil-square-o"></i> Edit</button>
            @endcan
            @can('hapus_lowongan')
          <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-lowongan/{{$loker->id}}'"><i class="fa fa-trash"></i> Hapus</button>
            @endcan
        @can('ubah_status_lowongan')
            <form method="post" action="{{url('/status-lowongan', $loker->id )}}">
              {{ csrf_field() }}
              <input type="hidden" name="publish" value="{{ $loker->publish }}">
              <input type="hidden" name="id" value="{{ $loker->id }}">
              <div class="btn-group-horizontal">
              @if($loker->publish == 'Y')
              <button type="submit" class="btn btn-flat btn-xs text-danger">
                  <span class="glyphicon glyphicon-ban-circle"></span> Simpan sebagai draft
              </button>
              @elseif($loker->publish == 'N')
              <button type="submit" class="btn btn-flat btn-xs text-green">
                  <span class="glyphicon glyphicon-ok-circle"></span> publikasikan
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