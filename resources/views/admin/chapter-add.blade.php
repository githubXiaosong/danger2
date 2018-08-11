<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/lib/admin/css/font.css">
    <link rel="stylesheet" href="/lib/admin/css/xadmin.css">
    <link rel="stylesheet" href="/css/my.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/lib/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/lib/admin/js/xadmin.js"></script>
    <script type="text/javascript" src="/js/my.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-body">


    <script>
        @if (session('suc_msg'))
        Toast('{{ session('suc_msg') }}', 2000);
        @endif
    </script>


    <strong>{{ $video->title }} </strong>添加章节
    <br>
    <br>
    <br>
    <br>
    <form class="layui-form" action="{{ url('admin/api/chapterAdd') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}

        <input type="hidden" name="video_id" value="{{ $video->id }}">

        <div class="layui-form-item">
            <label for="L_title" class="layui-form-label">
                <span class="x-red">*</span>名称
            </label>

            <div class="layui-input-inline  {{ $errors->has('title') ? 'error-input' : '' }}">
                <input type="text" id="L_title" name="title" required=""
                       autocomplete="off" class="layui-input" value="{{ old('title') }}" autofocus>
            </div>
            @if ($errors->has('title'))
                <span class="help-block error-text">
                    <strong>{{ $errors->first('title') }}</strong>
                </span>
            @endif
        </div>




        <div class="layui-form-item">
            <label for="L_phone" class="layui-form-label">
                <span class="x-red">*</span>视频地址
            </label>

            <div class="layui-input-inline  {{ $errors->has('uri') ? 'error-input' : '' }}">
                <input type="text" name="uri" required="" id="uri"
                       autocomplete="off" class="layui-input" value="{{ old('uri') }}" autofocus>
            </div>
            @if ($errors->has('uri'))
                <span class="help-block error-text">
                    <strong>{{ $errors->first('uri') }}</strong>
                </span>
            @endif
        </div>


        <div class="layui-form-item">
            <label for="price" class="layui-form-label">
                <span class="x-red">*</span>价格
            </label>

            <div class="layui-input-inline  {{ $errors->has('price') ? 'error-input' : '' }}">
                <input type="number" name="price" required=""
                       autocomplete="off" class="layui-input" value="{{ old('price') }}" autofocus>
            </div>
            @if ($errors->has('price'))
                <span class="help-block error-text">
                    <strong>{{ $errors->first('price') }}</strong>
                </span>
            @endif
        </div>



        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button type="submit" class="layui-btn" lay-filter="add" lay-submit="">
                增加
            </button>
            <a style="padding-left: 20px" href="{{ url('/admin/page/chapterList/'.$video->id) }}">返回</a>
        </div>


    </form>
</div>
<script>


</script>

</body>

</html>