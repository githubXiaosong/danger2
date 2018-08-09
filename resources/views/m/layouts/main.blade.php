<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>


    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


    <link href="/css/my.css" rel="stylesheet">



    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body>

@section('header')

@include('m.layouts.header')

@show

<div class="container"  style="margin-top: 80px ;">

    @yield('content')

</div>


@section('footer')

@include('m.layouts.footer')

@show

</body>
</html>
