@extends('layouts.main')


@section('content')

    <legend class="visible-xs-* hidden-md hidden-lg">

    提示： 推荐使用PC访问 <a href="{{ url('page/statement') }}"> 网站必读</a>

    </legend>

    <div class="row">
        @foreach($videoList as $video)


            <div class="col-xs-6  col-sm-6 col-md-3" style="min-height: 345px">
                <div class="thumbnail">
                    <img src="{{ $video->cover_uri }}" alt="...">
                    <div class="caption">
                        <h4>{{ $video->title }}</h4>
                        <p>
                        <a style="float: left">下载量: {{ $video->pop_num }}  </a>
                        <a style="float: right">￥{{ $video->price }} 元</a>
                        <div style="clear: both"></div>
                        </p>

                        <p><a onclick="orderCreate('{{ $video->id }}','{{ $video->uri }}')"
                              class="btn btn-primary"
                              role="button">网盘</a>

                        </p>
                    </div>
                </div>
            </div>


        @endforeach

    </div>
    <br>

    <script>
        function orderCreate(video_id, uri) {
            $.post(
                '{{ url('api/orderCreate') }}',
                {
                    video_id: video_id,
                    _token: '{{csrf_token()}}'
                },
                function (data, status) {
                    console.log(data);
                    fast_pay.shows_qr({
                        appkey: data.data.key,
                        data: data.data.data,
                        sign: data.data.sign,
                        success: function (data) {
                            alert("支付成功 网页即将跳转！ 请复制此密码：" + '{{ $video->password }}');
                            window.location.href = uri;
                        }
                    });
                }
            )
        }
    </script>







@endsection