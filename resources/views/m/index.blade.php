@extends("m.layouts.main")


@section("content")



    @foreach($categories[0]['newList'] as $video)

        <a href="{{ $video->video_uri }}">
        <div class="row"  data-url="{{ $video->video_uri }}">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="{{ '/storage/'.$video->cover_uri }}">
                    <div class="caption">
                        <h3>{{ $video->title }}</h3>
                    </div>
                </div>
            </div>
        </div>

        </a>
    @endforeach





@endsection




