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
        $lists=db('user')->where(['status'=>1])->paginate(10);
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
            $userInfo=db('user')->where(['id'=>$id,'status'=>1])->find();
            if(empty($userInfo)){
                $this->error('用户信息丢失');
            }
            $this->assign('info',$userInfo);
            return view('edituser');
        }
    }

    /**
     * update user record
     * @throws \think\Exception
     */
    public function updateuser(){
        $data=input();
        if(!empty($data['id'])){
            $userInfo=db('user')->where(['id'=>$data['id']])->find();
            if($userInfo['password']!==md5($data['pre_pwd'])){
                if($data['password']===$data['pwd_repeat']){
                    unset($data['pre_pwd']);
                    unset($data['pwd_repeat']);
                    unset($data['pre_pwd']);
                    $data['password']=md5($data['password']);
                    $data['lastloginip']=ip2long($_SERVER['REMOTE_ADDR']);
                    $data['lastlogintime']=time();
                    $data['status']=1;
                    $data['updatetime']=time();
                    $re=db('user')->update($data);
                    if($re!==false){
                        $this->success("操作成功：用户信息已更新",url("admin/rbac/user"));
                    }else{
                        $this->error("操作失败：用户信息未更新");
                    }
                }else{
                    $this->error("操作失败：两次输入的新密码不一致");
                }
            }else{
                $this->error('操作失败：原始密码错误');
            }
        }else{
            if($data['password']!==$data['pwd_repeat']){
                $this->error('两次输入的密码不一致');
            }else{
                unset($data['pwd_repeat']);
                $data['password']=md5($data['password']);
                $data['lastloginip']=ip2long($_SERVER['REMOTE_ADDR']);
                $data['lastlogintime']=time();
                $data['password']=md5($data['password']);
                $data['status']=1;
                $data['updatetime']=time();
                $re=db('user')->insert($data);
                if($re){
                    $this->success('操作成功：用户已经添加',url('admin/rbac/user'));
                }else{
                    $this->error('操作失败：用户添加失败');
                }
            }
        }
    }

    /**
     * delete user
     * @author Allen <wudi@wdcloud.cc>
     */
    public function deluser(){
        $id=input('id','');
        $re=db('user')->where(['id'=>$id])->update(['status'=>-1]);
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