@extends('layouts.main')


@section('content')



    <legend>
        声明
        <br>

        1 本站所有内容均为正版1/10价格 并且保证课程清晰度且无遗漏章节 包含各大在线教育网站的所有50元以上课程 请各位放心下载 扫码付款后自动开始下载
        <br>
        2 本站提供长期的服务 课程更新及时 但随时可能更换域名 如您长期使用 请发送XS到1098030258@qq.com 待更换域名时我们会发送新的地址到您的邮箱
        <br>
        3 课程较多 请使用CTLE + F按照关键字查找

    </legend>
    @foreach($categories as $category)

        <a name="{{ $category->title }}"></a>
        <legend><strong>{{$category->title}} </strong></legend>

        <div class="row">
            @foreach($category->videoList as $video)

                <div class="col-sm-6 col-md-3" style="min-height: 400px">
                    <div class="thumbnail">
                        <img src="{{ '/storage/'.$video->cover_uri }}" alt="...">
                        <div class="caption">
                            <h3>{{ $video->title }}</h3>
                            <p>
                            <div style="float: left">下载量: {{ $video->pop_num }}  </div>
                            <div style="float: right">￥{{ $video->price }} 元</div>
                            <div style="clear: both"></div>
                            </p>

                            <p><a onclick="orderCreate('{{ $video->id }}','{{ $video->uri }}')"
                                  class="btn btn-primary"
                                  role="button">下载</a>
                                <a href="#"
                                   class="btn btn-default"
                                   role="button">原地址</a>
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


    @endforeach




@endsection