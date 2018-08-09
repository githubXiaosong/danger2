<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>


    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">



    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/my.css" rel="stylesheet" type="text/css">

    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/js/my.js"></script>

    <script type="text/javascript">
        // 跳转手机页面
        if (!!navigator.userAgent.match(/AppleWebKit.*Mobile.*/)) {
            location.href = '{{ url('/m/page/index') }}';
        }
    </script>

</head>
<body>

@section('header')

    @include('layouts.header')

@show


@yield('content')


@section('footer')

    @include('layouts.footer')

@show

</body>
</html>