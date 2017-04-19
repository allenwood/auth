<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 4:23 PM
 */

namespace app\admin\controller;


class Contact extends Admin
{
    /**
     * 联系方式信息
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function index(){
        return view('index');
    }

    /**
     * 联系方式编辑页面
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function edit(){
        return view('edit');
    }

    /**
     * 联系方式更新操作
     * @author Allen <wudi@wdcloud.cc>
     */
    public function update(){

    }

    /**
     * 在线留言表单
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function consult(){
        return view('consult');
    }

    /**
     *
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function resp(){
        return view('resp');
    }


}