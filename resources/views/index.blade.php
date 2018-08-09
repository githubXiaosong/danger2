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
                            <button class="btn btn-block btn-sm"> 下载</button>
                        </td>
                    </tr>

                @endforeach

            </table>

            <br>

        @endforeach

    </div>

@endsection