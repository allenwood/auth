<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 4:47 PM
 */

namespace app\admin\controller;


class About extends Admin
{

    //honor management
    public function honor(){
        $lists=db("honor")->where(['status'=>1])->paginate(1);
        $this->assign('lists',$lists);
        return view('honor');
    }

    public function edithonor(){
        $id=input('id',0);
        $honorInfo=db('honor')->where(['id'=>$id,"status"=>1])->find();
        $this->assign('info',$honorInfo);
        return view('edithonor');
    }

    public function updatehonor(){
        $data=input();
        if(empty($data['id'])){
            unset($data['id']);
            $data['create_time']=time();
            $data['update_time']=time();
            $data['create_uid']=session('uid');
            $data['update_uid']=session('uid');
            $data['status']=1;
            $re=db('honor')->insert($data);
            if($re!==false){
                $this->success('操作成功',url("admin/about/honor"));
            }else{
                $this->error("操作失败");
            }
        }else{
            $data['update_time']=time();
            $data['update_uid']=session('uid');
            $re=db('honor')->update($data);
            if($re!==false){
                $this->success('操作成功',url("admin/about/honor"));
            }else{
                $this->error("操作失败");
            }
        }
    }

    /**
     * action delete honor
     * @author Allen <wudi@wdcloud.cc>
     */
    public function delhonor(){
        $id=input('id',0);
        if(empty($id)){
            $this->error("操作失败：荣誉的编号丢失");
        }else{
            $re=db('honor')->where(['id'=>$id])->update(['status'=>-1]);
            if($re!==false){
                $this->success('操作成功',url("admin/about/honor"));
            }else{
                $this->error("操作失败");
            }
        }
    }

    //company info management
    /**
     * company basic info
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function info(){
        $info=db('about')->find();
        $this->assign('info',$info);
        return view('info');
    }

    /**
     * edit company basic info
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function editinfo(){
        $id=input('id',0);
        if(empty($id)){
            $this->error('公司信息查询失败');
        }else{
            $info=db('about')->where(["id"=>$id])->find();
            if(empty($info)){
                $this->error("公司信息查询错误");
            }else{
                $this->assign('info',$info);
            }
        }
        return view('editinfo');
    }

    /**
     * update record of company info
     * @author Allen <wudi@wdcloud.cc>
     */
    public function updateinfo(){
        $data=input();
        //dump($data);die;
        if(empty($data['cn_company_name']) || empty($data['en_company_name']) || empty($data['logo'])){
            $this->error('公司logo和中英文名称为必填');
        }else{
            $data['udpate_time']=time();
            $data['update_uid']=session("uid");
            $re=db('about')->update($data);
            if($re!==false){
                $this->success("操作成功",url("admin/about/info"));
            }else{
                $this->error("操作失败");
            }
        }


    }


    //clients management
    /**
     * clients list
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function clients(){
        $lists=db('clients')->where(['status'=>1])->paginate(15);
        $this->assign('lists',$lists);
        return view('clients');
    }

    /**
     * edit clients view
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function editclients(){
        $id=input('id',0);
        $info=db("clients")->where(["status"=>1,"id"=>$id])->find();
        $this->assign('info',$info);
        return view('editclients');
    }

    /**
     * update clients info action
     * @author Allen <wudi@wdcloud.cc>
     */
    public function updateclients(){
        $data=input();
        if(empty($data['id'])){
            unset($data['id']);
            $data['create_time']=time();
            $data['update_time']=time();
            $data['create_uid']=session('uid');
            $data['update_uid']=session('uid');
            $data['status']=1;
            $re=db('clients')->insert($data);
            if($re!==false){
                $this->success('操作成功',url("admin/about/clients"));
            }else{
                $this->error("操作失败");
            }
        }else{
            $data['update_time']=time();
            $data['update_uid']=session('uid');
            $re=db('clients')->update($data);
            if($re!==false){
                $this->success('操作成功',url("admin/about/clients"));
            }else{
                $this->error("操作失败");
            }
        }
    }

    /**
     * del clients
     * @author Allen <wudi@wdcloud.cc>
     */
    public function delclients(){
        $id=input('id',0);
        if(empty($id)){
            $this->error("操作失败：客户编号丢失");
        }else{
            $re=db('clients')->where(['id'=>$id])->update(['status'=>-1]);
            if($re!==false){
                $this->success('操作成功',url("admin/about/clients"));
            }else{
                $this->error("操作失败");
            }
        }
    }
}