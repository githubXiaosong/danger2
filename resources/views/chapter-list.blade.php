@extends('layouts.main')


@section('content')



    <div class="container" style="min-height: 800px; ">


            <legend><strong>{{$video->title}} </strong></legend>
            <table class="table table-condensed table-striped">
                <tr>
                    <th>标题</th>
                    <th>价格</th>
                    <th></th>

                </tr>

                @foreach($video->chapters as $chapter)
                    <tr>
                        <td>{{ $chapter->title }}</td>

                        <td>{{ $chapter->price }}元</td>
                        <td>
                            <button class="btn btn-block btn-sm" onclick="orderCreate({{ $chapter->id }})"> 下载</button>
                        </td>
                    </tr>

                @endforeach

            </table>

            <br>


    </div>

    <script>
        function orderCreate(chapter_id) {
            $.post(
                '{{ url('api/orderCreate') }}',
                {
                    chapter_id: chapter_id,
                    _token: '{{csrf_token()}}'
                },
                function (data, status) {
                    console.log(data);
                    fast_pay.shows_qr({
                        appkey: data.data.key,//填写网站生成的appkey
                        data: data.data.data, //数据格式为json格式{"uid":152,"total_fee":2,"pay_title":"付款demo","order_no":"15296307831"}
                        sign: data.data.sign,//签名md5(你的秘钥|data)
                        success: function (data) {
                            alert("支付成功 单击确定开始下载");
                        }
                    });
                }
            )
        }
    </script>

@endsection