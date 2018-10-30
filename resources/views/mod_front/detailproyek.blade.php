@extends('layouts.front_template')

@section('content')

<section class="mbr-section content5 cid-qLBLv2e5aG mbr-parallax-background" id="content5-28">
    <div class="mbr-overlay" style="opacity: 0.7; background-color: rgb(0, 0, 0);"></div>
    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">Semua Proyek</h2>
            </div>
        </div>
    </div>
</section>

<section class="features18 popup-btn-cards cid-qMIamfi4LL" id="features18-67">
    <div class="container">
        <div class="media-container-row pt-5 ">
            @if(count($lowongans) == 0)
                <div class="alert alert-danger">Belum ada artikel ! </div>
            @else
                @foreach($lowongans as $lowongan)
                    <div class="card p-4 col-12 col-lg-4">
                        <div class="card-wrapper">
                            <div class="card-img">
                                <div class="mbr-overlay"></div>
                                <div class="mbr-section-btn text-center">
                                    <a href="{{ url('detailproyek') }}/{{$lowongan->id}}" class="btn btn-white display-4">Detail</a>
                                </div>
                                <img src="{{asset('template/frontend/images/renovasi.png')}}" alt="PEDIHELP" title="">
                            </div>
                            <div class="card-box">
                            	<b>{{$lowongan->judul_pekerjaan}}</b><br>
                                <p class="mbr-text mbr-fonts-style align-left display-7">{{$lowongan->deskripsi_pekerjaan}}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</section>

@endsection