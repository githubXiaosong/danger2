
<nav class="navbar navbar-default   navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="margin-left: 3%">

            <a class="navbar-brand" href="{{ url('page/index') }}">Brand</a>
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