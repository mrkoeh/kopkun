@extends ('layouts.admin_template')
  @section ('content')
<div class="box-header with-border">
  <h3 class="box-title">{{ $page_title }}</h3>
</div>
@include('layouts.errors')
@include('layouts.flash_message')  
<form action="/tambah-lowongan" method="post" enctype="multipart/form-data">
      {{ csrf_field() }}
  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label>Judul Lowongan</label>
                <input type="text" name="judul_lowongan" class="form-control" required="required">
              </div>
              <div class="form-group">
                <label>Perusahaan</label>
                <input type="text" name="nama_perusahaan" class="form-control" required="required">
              </div>
              <div class="form-group">
                <label>Waktu Kerja</label>
                 <select class="form-control select2" name="jam_kerja" >
                  <option value="0">--pilih--</option>
                  @foreach($jams as $jam)
                  <option value="{{$jam->id}}">{{$jam->nama_waktu}}</option>
                  @endforeach
                </select>
              </div>

              <div class="form-group">
                <label>Status Kepegawaian</label>
                 <select class="form-control select2" name="status" >
                  <option value="0">--pilih--</option>
                  @foreach($statuses as $stat)
                  <option value="{{$stat->id}}">{{$stat->nama_status}}</option>
                  @endforeach
                </select>
              </div>

              <div class="form-group">
                <label>Level Jabatan</label>
                 <select class="form-control select2" name="level" >
                  <option value="0">--pilih--</option>
                  @foreach($levels as $level)
                  <option value="{{$level->id}}">{{$level->nama_level}}</option>
                  @endforeach
                </select>
              </div>

              <div class="form-group">
                <label>Deskripsi Lowongan</label>
                  <textarea id="ckonten" name="deskripsi_lowongan" placeholder="jelaskan tentang perusahaan, cara melamar, syarat untuk melamar dan informasi kontak"></textarea>
              </div>

              <div class="form-group">
                <label>Tag Lowongan</label>
                <input type="text" name="tag_lowongan" class="form-control" id="input-tags" style="width: 100%; max-width:794px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
              </div>
              
              <div class="form-group">
                <label>Deskripsi SEO</label>
                <textarea name="deskripsi_seo" class="form-control" style="width: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
              </div>

              <div class="form-group">
                <label>Logo/Cover Perusahaan ( jika ada )</label>
                  <input type="file" name="cover_lowongan">
              </div>
            </div>

          <div class="col-md-3">
            <?php // blok 1 ?>
           <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Tipe Pekerjaan</h3>
            </div>
              <div class="form-group">
                @foreach($tipes as $tipe)
                <label>
                  <input type="checkbox" class="minimal" name="tipe[]" value="{{$tipe->tipe_slug}}">
                  {{$tipe->nama_tipe}}
                </label> <br>
                @endforeach
              </div>
          </div><br>

            <?php // blok 2 ?>
           <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Area</h3>
            </div>
              <div class="form-group">
                @foreach($areas as $area)
                <label>
                  <input type="checkbox" class="minimal" name="area[]" value="{{$area->area_slug}}">
                  {{$area->nama_area}}
                </label> <br>
                @endforeach
              </div>
          </div><br>

            <?php // blok 3 ?>
           <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Pendidikan</h3>
            </div>
              <div class="form-group">
                @foreach($pendidikans as $pendidikan)
                <label>
                  <input type="checkbox" class="minimal" name="pendidikan[]" value="{{$pendidikan->pendidikan_slug}}">
                  {{$pendidikan->nama_pendidikan}}
                </label> <br>
                @endforeach
              </div>
          </div><br>

       </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/lowongankerja'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
@endsection