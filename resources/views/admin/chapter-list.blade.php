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
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/lib/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/lib/admin/js/xadmin.js"></script>
    <script src="/js/my.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>

<body>
<div class="x-nav">
      <span class="layui-breadcrumb">

        <a href="{{ url('admin/page/videoList') }}">视频列表</a>
        <a>
            <cite>章节列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>

    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="{{ url('admin/page/chapterAdd/'.$video->id) }}"
       title="添加章节">
       添加</a>
</div>


<div class="x-body">

    <h3>{{ $video->title }}</h3>
    <span class="x-right" style="line-height:40px">共有数据：{{ count($video->chapterList) }} 条</span>

    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">
                        &#xe605;</i></div>
            </th>
            <th>ID</th>
            <th>标题</th>
            <th>价格</th>
            <th>更新时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach($video->chapterList as $chapter)


            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i>
                            class="layui-icon">&#xe605;</i></div>
                </td>
                <td>{{ $chapter->id }}</td>
                <td>{{ $chapter->title }}</td>
                <td>{{ $chapter->price }}</td>
                <td>{{ $chapter->updated_at }}</td>


                <td class="td-manage">


                    <a title="删除" href="#" onclick="layer.confirm('确认要删除吗？',function(index){
                            submit_as_form('{{url('admin/api/chapterDelete')}}','chapter_id','{{ $chapter->id }}')
                            });">
                       删除
                    </a>

                    <a style=" cursor: pointer"
                       onclick="submit_as_form('{{url('admin/api/chapterTop')}}','chapter_id','{{ $chapter->id }}');">置顶</a>

                </td>
            </tr>

        @endforeach
        </tbody>


    </table>
    <x></x>

</div>
<script>


    //以表单形式提交参数
    function submit_as_form(url, data_name, data_value) {
        var form = '<form id="tmp_for_submit_form" method="post" action=" ' + url + ' " >' +
            '<input type="hidden" name="' + data_name + '" value=" ' + data_value + ' ">' +
            '{{ csrf_field() }}' +
            '</form>';
        $('body').append(form);
        $('#tmp_for_submit_form').submit();
    }


    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });


    @if (session('err_msg'))
    Toast('{{ session('err_msg') }}', 2000);
    @endif


    @if (session('suc_msg'))
    Toast('{{ session('suc_msg') }}', 2000);
    @endif


</script>

</body>

</html>