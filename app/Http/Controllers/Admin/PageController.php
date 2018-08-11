<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Chapter;
use App\Http\Controllers\Controller;
use App\Video;

class PageController extends Controller
{

    /**
     * 登录页面
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function login()
    {
        return view('admin.login');
    }

    /**
     * 首页 是一个框架
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        return view('admin.index');
    }

    /**
     * 欢迎页
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function welcome()
    {
        return view('admin.welcome');
    }

    /**
     * 视频列表页面
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function videoList()
    {

        $categories = Category::get();

        foreach ($categories as $category){
            $videoList = Video::where(['category_id'=>$category->id])->orderBy('updated_at','desc')->get();
            $category->videoList = $videoList;
        }

        return view('admin.video-list')->with(compact('categories'));
    }

    /**
     * 视频添加页面
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function videoAdd()
    {
        $categories = Category::get();
        return view('admin.video-add')->with(compact('categories'));
    }

    /**
     * 章节列表页面
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function chapterList($video_id)
    {
        $video = Video::find($video_id);

        $chapterList = Chapter::where(['video_id' => $video_id])->orderBy('updated_at','desc')->get();

        $video->chapterList = $chapterList;

        return view('admin.chapter-list')->with(compact('video'));
    }

    /**
     * 章节添加页面
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function chapterAdd($video_id)
    {
        $video = Video::find($video_id);
        return view('admin.chapter-add')->with(compact('video'));
    }


}
