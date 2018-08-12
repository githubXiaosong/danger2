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
     * 章节列表
     */
    public function chapterList($video_id)
    {

        $video = Video::find($video_id);

        $chapters = Chapter::where(['video_id' => $video_id])->orderBy('updated_at', 'desc')->get();

        $video['chapters'] = $chapters;

        return view('chapter-list')->with(compact('video'));
    }

}
