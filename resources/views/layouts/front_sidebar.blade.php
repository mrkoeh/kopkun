<div class="col-md-4 col-sm-4 col-xs-12">
	<div class="right-sidebar">
		<div class="inner-box">
			<h3>Level Pendidikan:</h3>
			<ul class="cat-list">
				@foreach($pendidikans as $pendidikan)
					<li class="active">
						<a href="{{url('/pendidikan',$pendidikan->pendidikan_slug)}}">{{$pendidikan->nama_pendidikan}}</a>
					</li>
				@endforeach
			</ul>
		</div>
		<div class="inner-box">
			<h3>Wilayah/Area:</h3>
			<ul class="cat-list">
				@foreach($areas as $area)
					<li class="active"><a href="{{url('/wilayah',$area->area_slug)}}">{{$area->nama_area}}</a></li>
				@endforeach
			</ul>
		</div>
	</div>
</div>

