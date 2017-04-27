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
        $lists=db('events')->where(['status'=>1])->order('istop desc,sort asc')->paginate(5);
        $this->assign('lists',$lists);
        return view('index');
    }

    /**
     * events detail
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function detail(){
        $id=input("id",0);
        if(empty($id)){
            return view("tpl:noresult");
        }else{
            $info=db('events')->where(["status"=>1,'id'=>$id])->find();
            $this->assign('info',$info);
        }

        $recentPost=db('events')->where(['status'=>1])->order('create_time desc')->limit(10)->select();
        $this->assign('recent_post',$recentPost);
        return view('detail');
    }
}