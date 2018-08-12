@extends('layouts.main')


@section('content')



    <div class="container" style="min-height: 800px; ">


        <legend><strong>{{$video->title}} </strong></legend>

        <legend style="color: red"><strong>收集不易 还请各位大爷打赏几元 小的感激不尽</strong></legend>

        <table class="table table-condensed table-striped">
            <tr>
                <th>章节</th>
                <th>价格</th>
                <th></th>

            </tr>

            @foreach($video->chapters as $chapter)
                <tr>
                    <td>{{ $chapter->title }}</td>

                    <td>{{ $chapter->price }}元</td>
                    <td>
                        <button class="btn btn-block btn-sm" onclick="orderCreate('{{ $chapter->id }}','{{ $chapter->uri }}')"> 下载</button>
                    </td>
                </tr>

            @endforeach

        </table>

        <br>


    </div>

    <script>


        function orderCreate(chapter_id,uri) {
            $.post(
                '{{ url('api/orderCreate') }}',
                {
                    chapter_id: chapter_id,
                    _token: '{{csrf_token()}}'
                },
                function (data, status) {
                    fast_pay.shows_qr({
                        appkey: data.data.key,
                        data: data.data.data,
                        sign: data.data.sign,
                        success: function (data) {
                            alert("支付成功 单击确定开始下载");
                            window.location.href=uri;
                        }
                    });
                }
            )
        }
    </script>

@endsection