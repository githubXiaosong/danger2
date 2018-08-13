<?php

namespace App\Http\Controllers;

use App\Category;
use App\Chapter;
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
    public function index($category_id)
    {
        $videoList = Video::where(['category_id' => $category_id])->orderBy('updated_at', 'desc')->get();

        return view('index')->with(compact('videoList'));
    }


    /**
     * 网站声明
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function statement(){
        return view('statement');
    }
}
