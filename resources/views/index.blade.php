@extends('layouts.main')


@section('content')




    @foreach($categories as $category)




        <a name="{{ $category->title }}"></a>
        <legend><strong>{{$category->title}} </strong></legend>

        <div class="row">
            @foreach($category->videoList as $video)

                <div class="col-sm-6 col-md-3">
                    <div class="thumbnail">
                        <img src="{{ '/storage/'.$video->cover_uri }}" alt="...">
                        <div class="caption">
                            <h3>{{ $video->title }}</h3>
                            <p>下载量: {{ $video->pop_num }} </p>
                            <p><a href="{{ url('/page/chapterList/'.$video->id) }}" class="btn btn-primary"
                                  role="button">下载</a> <a href="#"
                                                          class="btn btn-default"
                                                          role="button">Button</a>
                            </p>
                        </div>
                    </div>
                </div>


            @endforeach

        </div>
        <br>

    @endforeach




@endsection