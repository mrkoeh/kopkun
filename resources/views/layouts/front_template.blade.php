<!DOCTYPE html>
<html lang="en">
<head>
	@include('layouts.meta_title')

    <link rel="stylesheet" href="{{asset('template/frontend/tether/tether.min.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/bootstrap/css/bootstrap-grid.min.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/bootstrap/css/bootstrap-reboot.min.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/dropdown/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/animatecss/animate.min.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/socicon/css/styles.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/theme/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('template/frontend/additionalcss/css/additional.css')}}" type="text/css">
    <link rel="stylesheet" href="{{asset('template/frontend/icon/style.css')}}">

</head>
<body>
@include('layouts.front_header')

@yield('content')

@include('layouts.front_footer')

</body>
</html>