<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Video;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ApiController extends Controller
{


    /**
     * 视频删除
     */
    public function videoDelete()
    {
        $validator = Validator::make(
            rq(),
            [
                'video_id' => 'required|exists:videos,id'
            ],
            [
                'video_id.required' => '视频ID不存在',
                'video_id.exists' => '视频ID查找不到'
            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());

        $video = Video::find(rq('video_id'));
        $video->delete();

        return back()->with('suc_msg', '删除成功');
    }

    /**
     * 更新视频刷新时间
     */
    public function videoUpdate(){

        $validator = Validator::make(
            rq(),
            [
                'video_id' => 'required|exists:videos,id'
            ],
            [
                'video_id.required' => '视频ID不存在',
                'video_id.exists' => '视频ID查找不到'
            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());

        $video = Video::find(rq('video_id'));

        $video->updated_at = time();
        $video->save();

        return back()->with('suc_msg', '更新成功');

    }


    /**
     * 添加视频
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function videoAdd(Request $request)
    {

        $validator = Validator::make(
            rq(),
            [
                'title' => 'required|max:255',
                'category_id' => 'exists:categories,id',
                'video_uri' => 'active_url',//可以为空
                'desc' => 'required|string',

            ],
            [

            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());


        $video = new Video();

        $video->title = rq('title');

        $video->category_id = rq('category_id');

        $video->video_uri = rq('video_uri');

        $video->desc  = rq('desc');


        $video->save();

        return back()->with('suc_msg', '添加成功');
    }
}
