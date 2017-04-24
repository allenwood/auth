<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 4:09 PM
 */

namespace app\admin\controller;


class Events extends Admin
{
    public function index(){
        $lists=db('events')->where(['status'=>1])->order('istop desc,sort asc')->paginate(10);
        $this->assign('lists',$lists);
        return view('index');
    }



    public function edit(){
        $id=input('id',0);
        $info=db('events')->where(['id'=>$id])->find();
        $this->assign('info',$info);
        return view('edit');
    }

    /**
     * publish
     * @author Allen <wudi@wdcloud.cc>
     */
    public function update(){
        $data=input();
        $data['update_time']=time();
        if($data['istop']==1){
            $data['sort']=0;
        }
        if(empty($data['id'])){
            $data['create_time']=time();
            $data['create_uid']=session('uid');
            $data['update_uid']=session('uid');
            $data['status']=1;
            $re=db('events')->insert($data);
            if($re!==false){
                $this->success('操作成功：新闻已发布',url('admin/events/index'));
            }else{
                $this->error('操作失败');
            }
        }else{
            $data['update_uid']=session('uid');
            $re=db('events')->update($data);
            if($re!==false){
                $this->success('操作成功：新闻已更新',url('admin/events/index'));
            }else{
                $this->error('操作失败');
            }
        }


    }

    /**
     * delete events
     * @author Allen <wudi@wdcloud.cc>
     */
    public function del(){
        $id=input('id',0);
        if(empty($id)){
            $this->error('操作失败：要删除的新闻编号丢失');
        }else{
            $data['update_time']=time();
            $data['update_uid']=session("uid");
            $data['status']=-1;
            $re=db('events')->where(['id'=>$id])->update($data);
            if($re!==false){
                $this->success("操作成功：新闻已被删除");
            }else{
                $this->error('操作失败');
            }
        }
    }


    public function recycle(){
        return view('recycle');
    }

    public function drafts(){
            return view('drafts');
        }


    /**
     * draft save
     * @author Allen <wudi@wdcloud.cc>
     */
    /*public function save(){
        $data=input();
        $data['update_time']=time();
        if(empty($data['id'])){
            $data['create_time']=time();
            $data['create_uid']=session('uid');
            $data['update_uid']=session('uid');
            $data['status']=2;
            $re=db('events')->insert($data);
            if($re!==false){
                $this->success('操作成功：已保存到草稿箱');
            }else{
                $this->error('操作失败');
            }
        }else{
            $data['update_uid']=session('uid');
            $data['status']=2;
            $re=db('events')->update($data);
            if($re!==false){
                $this->success('操作成功：新闻已经保存到草稿箱');
            }else{
                $this->error('操作失败');
            }
        }
    }*/
}