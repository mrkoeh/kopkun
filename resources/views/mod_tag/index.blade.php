 @extends ('layouts.admin_template')
  @section ('content')
  <div class="box-header">
    <h3 class="box-title">{{ $page_title }}</h3>
  </div>
    @can('tambah_tag')
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-tag'">
    <i class="fa fa-plus-square"></i> Tambah</button><br><br>
    @endcan
@include('layouts.errors')
@include('layouts.flash_message')   
<div class="box">
  <div class="box-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
      <tr>
            <th>Tag</th>
            <th>Tag Slug</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
    @foreach($tags as $tag)
      <tr>
      <td>{{$tag->nama_tag}}</td>
      <td>{{$tag->tag_slug}}</td>
        <td>
          @can('edit_tag')
          <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-tag/{{$tag->id}}'"><i class="fa fa-pencil-square-o"></i></button>
          @endcan
          @can('hapus_tag')
          <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-tag/{{$tag->id}}'"><i class="fa fa-trash"></i></button>
          @endcan
        </td>
      </tr>
      @endforeach
      </tbody>
    </table>
  </div>
</div>
@endsection