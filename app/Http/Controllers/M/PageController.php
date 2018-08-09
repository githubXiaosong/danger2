<?php

namespace App\Http\Controllers\M;

use App\Category;
use App\Http\Controllers\Controller;
use App\Video;

class PageController extends Controller
{
    /**
     * 主页
     */
    public function index()
    {

        // 获取最新的10条和点赞最好的15条记录挂到 $categories
        $categories = Category::where(['status' => STATUS_ON_LINE])->get();

        foreach ($categories as $category) {
            $newList = Video::where(['category_id' => $category->id])
                ->latest('updated_at')->take(10)->get();

            $popList = Video::where(['category_id' => $category->id])
                ->orderBy('pop_num', 'desc')->take(14)->get();

            $category['newList'] = $newList;
            $category['popList'] = $popList;

        }

        return view('m.index')->with(compact('categories'));



    }

}