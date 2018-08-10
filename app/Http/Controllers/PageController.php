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
    public function index()
    {

        // 获取最新的10条和点赞最好的15条记录挂到 $categories
        $categories = Category::where(['status' => STATUS_ON_LINE])->with('videos')->get();

        return view('index')->with(compact('categories'));
    }


    /**
     * 章节列表
     */
    public function chapterList($video_id)
    {

        $video = Video::find($video_id);

        $chapters = Chapter::where(['video_id'=>$video_id])->orderBy('index_num')->get();

        $video['chapters'] = $chapters;

        return view('chapter-list')->with(compact('video'));
    }

}
