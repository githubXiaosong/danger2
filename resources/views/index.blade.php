@extends('layouts.main')


@section('content')




    <div class="container" style="min-height: 800px; ">
        @foreach($categories as $category)


            <a name="{{ $category->title }}"></a>
            <legend><strong>{{$category->title}} </strong></legend>
            <table class="table table-condensed table-striped">
                <tr>
                    <th>标题</th>
                    <th>下载量</th>
                    <th></th>

                </tr>

                @foreach($category->videos as $video)
                    <tr>
                        <td>{{ $video->title }}</td>
                        <td>{{ $video->pop_num }}</td>
                        <td>
                            <a href="{{ url('/page/chapterList/'.$video->id) }}"><button class="btn btn-block btn-sm"> 查看</button></a>
                        </td>
                    </tr>

                @endforeach

            </table>

            <br>

        @endforeach

    </div>


@endsection