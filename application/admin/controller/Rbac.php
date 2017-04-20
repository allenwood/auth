<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/20/2017
 * Time: 3:12 PM
 */

namespace app\admin\controller;


class Rbac extends Admin
{
    /**
     * users list
     * @author Allen <wudi@wdcloud.cc>
     */
    public function user(){
        $lists=db('admin')->where(['status'=>1])->select();
        $this->assign('lists',$lists);
        return view('user');
    }

    /**
     * edit user info
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function edituser(){
        $id=input('id','');
        if(empty($id)){
            return view('adduser');
        }else{
            $userInfo=db('admin')->where(['id'=>$id,'status'=>1])->find();
            if(empty($userInfo)){
                $this->error('用户信息丢失');
            }
            $this->assign('info',$userInfo);
            return view('edituser');
        }
    }

    public function updateuser(){
        $data=Input();
        if($data['id']){

        }else{
            if($data['password']===$data[''])
        }
    }

    /**
     * delete user
     * @author Allen <wudi@wdcloud.cc>
     */
    public function deluser(){
        $id=input('id','');
        $re=db('admin')->where(['id'=>$id])->update(['status'=>-1]);
        if($re!==false){
            $this->success('操作成功');
        }else{
            $this->error('操作失败');
        }
    }

    /**
     * @author Allen <wudi@wdcloud.cc>
     */
    public function node(){
        return view('node');
    }

    public function editnode(){
        return view('editnode');
    }

    public function updatenode(){

    }

    public function delnode(){

    }

    public function auth(){
        return view('auth');
    }

    public function editauth(){
        return view('editauth');
    }

    public function updateauth(){

    }

    public function delauth(){

    }
}