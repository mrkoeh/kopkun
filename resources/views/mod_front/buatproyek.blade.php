@extends('layouts.front_template')

@section('content')

<section class="mbr-section content5 cid-qLBLv2e5aG mbr-parallax-background" id="content5-28">
    <div class="mbr-overlay" style="opacity: 0.7; background-color: rgb(0, 0, 0);"></div>
    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">Buat Proyek</h2>
            </div>
        </div>
    </div>
</section>

<section class="features18 popup-btn-cards cid-qMIamfi4LL" id="features18-67">
    <div class="container">
        @include('sweet::alert')
        <form class="form-ad" method="post" action="{{url('uploadproyek')}}" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="form-group">
                <label class="control-label">Jenis Pekerjaan</label>
                <select class="form-control select2" style="width: 100%;" name="jenis_pekerjaan" required="">
                    @foreach($jenis as $r)
                    <option value="{{$r->tipe_slug}}">{{$r->nama_tipe}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Judul Pekerjaan <span>(padat singkat)</span></label>
                <input type="text" class="form-control" name="judul_pekerjaan" required="required">
            </div>
            <div class="form-group">
                <label class="control-label">Alamat Pekerjaan</label>
                <textarea id="konten" name="alamat" style="width: 100%; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" placeholder="tempat pengerjaan" required="required"></textarea>
            </div>
            <div class="form-group">
                <label class="control-label">Waktu Kerja</label>
                <input type="date" class="form-control" name="tanggal_pengerjaan" required="required">
            </div>
            <div class="form-group">
                <label class="control-label">Deskripsi Pekerjaan</label>
                <textarea id="konten" name="deskripsi_pekerjaan" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" placeholder="Misal, merapikan taman atau memberbaiki saluran air." required="required"></textarea>
            </div>
            <div class="form-group">
                <label class="control-label">File</label>
                <input type="file" name="cover_pekerjaan">
            </div>
            <button type="submit" class="btn btn-common">Simpan</button>
        </form>
    </div>
</section>

@endsection

@section('pagescript')

@endsection