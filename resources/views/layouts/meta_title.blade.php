<meta charset="utf-8">
<meta name="msvalidate.01" content="{{$verifikasi->bing}}" />
<meta name="google-site-verification" content="{{$verifikasi->google}}" />
<title>@yield('title',$judul->judul_web)</title>
<meta name="description" content="@yield('meta-description',$judul->meta_deskripsi)">
<meta name="keyword" content="@yield('meta-keyword', $judul->meta_keyword)">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta content='id' name='geo.country' />
<meta http-equiv="Copyright" content="mrkoeh" />
<meta name="author" content="mrkoeh" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="language" content="Indonesia" />
<meta name="revisit-after" content="7" />
<meta name="webcrawlers" content="all" />
<meta name="rating" content="general" />
<meta name="spiders" content="all" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="icon" href="/icon.png" type="image/x-icon">
