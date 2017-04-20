<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/20/2017
 * Time: 3:08 PM
 */

namespace app\admin\controller;


use think\Controller;

class Entry extends Controller
{
    /**
     * login page
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function login(){
        return view('login');
    }

    /**
     * process login action
     * @author Allen <wudi@wdcloud.cc>
     */
    public function dologin(){
        dump(input());
        //return $this->redirect(url('admin/index/index'));
    }

    /**
     * logout action
     * @author Allen <wudi@wdcloud.cc>
     */
    public function logout(){

    }
}