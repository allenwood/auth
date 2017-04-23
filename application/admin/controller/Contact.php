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

        $info=db('contact')->find();
        $this->assign('info',$info);
        return view('index');
    }

    /**
     * 联系方式编辑页面
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function edit(){
        $id=input('id',0);
        if(empty($id)){
            $this->error('联系方式信息丢失');
        }else{
            $info=db('contact')->where(['id'=>$id])->find();
            $this->assign('info',$info);
        }
        return view('edit');
    }

    /**
     * 联系方式更新操作
     * @author Allen <wudi@wdcloud.cc>
     */
    public function update(){
        $data=input();
        if(empty($data['id'])){
            $this->error('操作失败：联系方式编号丢失');
        }else{
            $re=db('contact')->update($data);
            if($re!==false){
                $this->success('操作成功：联系方式信息已更新');
            }else{
                $this->error("操作失败");
            }
        }
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