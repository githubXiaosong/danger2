<?php

namespace App\Http\Controllers;

use App\Category;
use App\Order;
use App\Video;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;


class ApiController extends Controller
{

    /**
     * @return mixed 获取分类列表
     */
    public function getCategoryList()
    {
        $categories = Category::get();
        return $categories;
    }

    /**
     * @return mixed 获取最热视频列表
     */
    public function getTopList()
    {
        $topFive = Video::orderBy('pop_num', 'desc')->take(5)->get();
        return $topFive;
    }


    /**
     * 创建订单
     */
    public function orderCreate()
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
            return err(1, $validator->messages());

        $id = DB::table('orders')->insertGetId(
            [
                'video_id' => rq('video_id'),
                'pay_status' => ORDER_STATUS_NOT_PAT,
                'created_at' => date('Y-m-d H:i:s', time()),
                'updated_at' => date('Y-m-d H:i:s', time()),
            ]
        );

        $video = Video::find(rq('video_id'));

        $key = FAST_PAY_APP_KEY;
        $data = [];
        $data['uid'] = FAST_PAY_USER_ID;//付款用户的id
        $data['total_fee'] = $video->price;//支付金额,最低2元
        $data['pay_title'] = $video->title;
        $data['order_no'] = $id;//填写你的订单号,不能重复
        $data['canshu1'] = 11;//可以自定义参数,
        $data = json_encode($data, JSON_UNESCAPED_UNICODE);
        $sign = md5(FAST_PAY_APP_SECRET . '|' . $data);

        return suc(['data' => $data, 'sign' => $sign, 'key' => $key]);
    }

    /**
     * 支付成功后会回调这个地址
     * {
     * "status":"y",
     * "info":"支付成功",
     * "uid":"1992",
     * "total_fee":"2.00",
     * "pay_title":"放心支付,支付后钱到您绑定的微信号",
     * "order_no":"1533861183",
     * "canshu1":"1533861183",
     * "pay_type":"qr",
     * "pay_state":"pc",
     * "order_prefix":"shop"
     * }
     */
    public function paySuccess()
    {
        Log::info(rq('status'));
        if (rq('status') == 'y') {
            $order = Order::where(['id' => rq('order_no')])
                ->update(['pay_status' => ORDER_STATUS_HAVE_PAT]);
            echo 'SUCCESS';
        } else {
            Log::info('PAY CALLBACK ERROR!!');
        }
    }

}
