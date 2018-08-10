@extends('layouts.main')


@section('content')


    {{--重写页头 实现锚点--}}
    <nav class="navbar navbar-default   navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header" style="margin-left: 3%">

                <a class="navbar-brand" href="#">Brand</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>

                    @foreach( json_decode(file_get_contents(url("api/getCategoryList")),true) as $item)
                        <li><a href="{{ '#'.$item['title'] }}">{{ $item['title'] }}</a></li>
                    @endforeach

                </ul>
            </div><!-- /.navbar-collapse -->

        </div><!-- /.container-fluid -->
    </nav>
    {{--重写页头 实现锚点--}}



    <div class="container" style="min-height: 800px; ">
        @foreach($categories as $category)


            <a name="{{ $category->title }}"></a>
            <legend><strong>{{$category->title}} </strong></legend>
            <table class="table table-condensed table-striped">
                <tr>
                    <th>标题</th>
                    <th>下载量</th>
                    <th>价格</th>
                    <th></th>

                </tr>

                @foreach($category->videos as $video)
                    <tr>
                        <td>{{ $video->title }}</td>
                        <td>{{ $video->pop_num }}</td>
                        <td>{{ $video->price }}元</td>
                        <td>
                            <button class="btn btn-block btn-sm" onclick="orderCreate({{ $video->id }})"> 下载</button>
                        </td>
                    </tr>

                @endforeach

            </table>

            <br>

        @endforeach

    </div>

    <script>
        function orderCreate(video_id) {
            $.post(
                '{{ url('api/orderCreate') }}',
                {
                    video_id: video_id,
                    _token: '{{csrf_token()}}'
                },
                function (data, status) {
                    console.log(data);
                    fast_pay.shows_qr({
                        appkey: data.data.key,//填写网站生成的appkey
                        data: data.data.data, //数据格式为json格式{"uid":152,"total_fee":2,"pay_title":"付款demo","order_no":"15296307831"}
                        sign: data.data.sign,//签名md5(你的秘钥|data)
                        success: function (data) {
                            console.log(data);
                            alert("支付成功");
                        }
                    });
                }
            )
        }
    </script>

@endsection