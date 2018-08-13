
<nav class="navbar navbar-default  navbar-fixed-top  navbar-inverse" >
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
                    <li class="{{ \Illuminate\Support\Facades\Request::is( 'page/index/'.$item['id'] ) ? 'active' : '' }} "><a href="{{ url('page/index/'.$item['id'])  }}" >{{ $item['title'] }}</a></li>
                @endforeach


                <li class="{{ \Illuminate\Support\Facades\Request::is( 'page/statement' ) ? 'active' : '' }}"><a href="{{ url('page/statement') }}" class=" ">网站必读</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->

    </div><!-- /.container-fluid -->
</nav>