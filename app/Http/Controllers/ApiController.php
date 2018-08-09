<?php

namespace App\Http\Controllers;

use App\Category;
use App\Video;
use Illuminate\Http\Request;

class ApiController extends Controller
{

    /**
     * @return mixed 获取分类列表
     */
    public function getCategoryList(){
        $categories = Category::get();
        return $categories;
    }

    /**
     * @return mixed 获取最热视频列表
     */
    public function getTopList(){
        $topFive = Video::orderBy('pop_num','desc')->take(5)->get();
        return $topFive;
    }

}
