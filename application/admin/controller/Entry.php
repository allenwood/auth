<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/20/2017
 * Time: 3:08 PM
 */

namespace app\admin\controller;


use think\Controller;
use think\Session;

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
        $data=input();
        if(!captcha_check($data['captcha'])){
            $this->error('验证码输入失败',url('admin/entry/login'));
        };
        if(empty($data['username']) || empty($data['password'])){
            $this->error("用户名或者密码为空",url('admin/entry/login'));
        }else{
            $userInfo=db('user')->where(['status'=>1,'username'=>$data['username']])->find();
            if(empty($userInfo)){
                $this->error('没用该用户的有效信息',url('admin/entry/login'));
            }else{
                if($userInfo['password']===md5($data['password'])){
                    session('user',$userInfo);
                    session('uid',$userInfo['id']);
                    db('user')->where(['id'=>$userInfo['id']])->update(['lastloginip'=>ip2long($_SERVER['REMOTE_ADDR']),'lastlogintime'=>time()]);
                    $this->redirect(url("admin/index/index"));
                }else{
                    $this->error('密码错误',url('admin/entry/login'));
                }
            }
        }
        //return $this->redirect(url('admin/index/index'));
    }

    /**
     * logout action
     * @author Allen <wudi@wdcloud.cc>
     */
    public function logout(){
        Session::clear();
        $this->redirect('admin/entry/login');
    }
}