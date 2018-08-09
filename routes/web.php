<?php

function rq($key = null)
{
    return ($key == null) ? \Illuminate\Support\Facades\Request::all() : \Illuminate\Support\Facades\Request::get($key);
}

/**
 * @param null $data
 * @return array 成功返回0
 */
function suc($data = null)
{
    $ram = ['status' => 0];
    if ($data) {
        $ram['data'] = $data;
        return $ram;
    }
    return $ram;
}

/**
 * @param $code
 * @param null $data
 * @return array 失败返回错误码和信息
 */
function err($code, $data = null)
{
    if ($data)
        return ['status' => $code, 'data' => $data];
    return ['status' => $code];
}


Route::group(['middleware' => 'web'], function () {

    Route::get('test', 'PageController@test');//测试


    Route::group(['prefix' => 'page'], function () {
        Route::get('index', 'PageController@index');
        Route::get('videoList/{category_id}', 'PageController@videoList');
        Route::get('detail/{video_id}', 'PageController@detail');
        Route::get('play/{video_id}', 'PageController@play');
        Route::get('tutorial', 'PageController@tutorial');
    });

    Route::group(['prefix' => 'api'], function () {
        Route::get('getCategoryList', 'ApiController@getCategoryList');
        Route::get('getTopList', 'ApiController@getTopList');
    });

    Route::group(['prefix' => 'm'], function () {
        Route::group(['prefix' => 'page'], function () {
            Route::get('index', 'M\PageController@index');
        });

        Route::group(['prefix' => 'api'], function () {

        });
    });

    Route::group(['prefix' => 'admin'], function () {

        Route::group(['prefix' => 'page'], function () {
            Route::get('/index', 'Admin\PageController@index');
            Route::get('/login', 'Admin\PageController@login');
            Route::get('/welcome', 'Admin\PageController@welcome');
            Route::get('/videoList', 'Admin\PageController@videoList');
            Route::get('/videoDetail', 'Admin\PageController@videoDetail');
            Route::get('/videoAdd', 'Admin\PageController@videoAdd');

        });

        Route::group(['prefix' => 'api'], function () {
            Route::post('/videoDelete', 'Admin\ApiController@videoDelete');
            Route::post('/videoUpdate', 'Admin\ApiController@videoUpdate');
            Route::post('/videoAdd', 'Admin\ApiController@videoAdd');

        });

    });

});



