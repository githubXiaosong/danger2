<?php

namespace App\Http\Controllers;

use App\Category;
use App\Video;

class PageController extends Controller
{
    /**
     * 测试
     */
    public function test()
    {


    }

    /**
     * 首页
     * @param null
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {

        // 获取最新的10条和点赞最好的15条记录挂到 $categories
        $categories = Category::where(['status' => STATUS_ON_LINE])->with('videos')->get();

        return view('index')->with(compact('categories'));
    }


}
