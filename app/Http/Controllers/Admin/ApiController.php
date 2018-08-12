<?php

namespace App\Http\Controllers\Admin;

use App\Chapter;
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

        Chapter::where(['video_id'=>rq('video_id')])->delete();

        $video = Video::find(rq('video_id'));
        $video->delete();

        return back()->with('suc_msg', '删除成功');
    }

    /**
     * 更新视频刷新时间
     */
    public function videoTop(){

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
                'desc' => 'required|string',
                'password' => 'required|string',
                'cover_uri' => 'required|string',
                'price' => 'required|integer|min:0',
                'uri' => 'required|active_url'

            ],
            [

            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());


        $video = new Video();

        $video->title = rq('title');

        $video->category_id = rq('category_id');

        $video->desc  = rq('desc');

        $video->password  = rq('password');

        $video->cover_uri = rq('cover_uri');

        $video->price = rq('price');

        $video->uri = rq('uri');

        $video->save();

        return back()->with('suc_msg', '添加成功');
    }




    /**
     * 章节删除
     */
    public function chapterDelete()
    {
        $validator = Validator::make(
            rq(),
            [
                'chapter_id' => 'required|exists:chapters,id'
            ],
            [
                'chapter_id.required' => '视频ID不存在',
                'chapter_id.exists' => '视频ID查找不到'
            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());

        $chapter = Chapter::find(rq('chapter_id'));
        $chapter->delete();

        return back()->with('suc_msg', '删除成功');
    }


    /**
     * 添加章节
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function chapterAdd()
    {

        $validator = Validator::make(
            rq(),
            [
                'title' => 'required|max:255',
                'video_id' => 'exists:videos,id',
                'price' => 'required|integer|min:0',
                'uri' => 'required|active_url'
            ],
            [

            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());



        $chapter = new Chapter();

        $chapter->title = rq('title');
        $chapter->video_id = rq('video_id');
        $chapter->price = rq('price');
        $chapter->uri = rq('uri');


        $chapter->save();

        return back()->with('suc_msg', '添加成功');
    }

    /**
     * 更新章节刷新时间
     */
    public function chapterTop(){

        $validator = Validator::make(
            rq(),
            [
                'chapter_id' => 'required|exists:chapters,id'
            ],
            [
                'chapter_id.required' => '视频ID不存在',
                'chapter_id.exists' => '视频ID查找不到'
            ]
        );
        if ($validator->fails())
            return back()->withErrors($validator->messages());

        $chapter = Chapter::find(rq('chapter_id'));

        $chapter->updated_at = time();
        $chapter->save();

        return back()->with('suc_msg', '更新成功');
    }

}
