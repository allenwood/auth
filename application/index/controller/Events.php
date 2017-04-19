<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 11:58 AM
 */

namespace app\index\controller;


use app\common\controller\Common;

class Events extends Common
{
    /**
     * events list
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function index(){
        return view('index');
    }

    /**
     * events detail
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function detail(){
        return view('detail');
    }
}