<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 1:36 PM
 */

namespace app\admin\controller;


class Index extends Admin
{
    /**
     * dash board page
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function index(){
        return view('index');
    }

    public function slide(){
        $lists=db('slide')->where(["status"=>1])->paginate(10);
            $this->assign("lists",$lists);
        return view('slide');
    }

    public function editslide(){
        $id=input("id",0);
        $info=db('slide')->where(["id"=>$id])->find();
        $this->assign('info',$info);
        return view('editslide');
    }

    public function updateslide(){
        $data=input();
        $data["update_time"]=time();
        $data["update_uid"]=session("uid");
        $data["status"]=1;
        if(empty($data['id'])){
            $data["create_time"]=time();
            $data["create_uid"]=session("uid");
            $re=db('slide')->insert($data);
        }else{
            $re=db("slide")->update($data);
        }

        if($re!==false){
            $this->success("操作成功：已更新轮播图内容",url("admin/index/slide"));
        }else{
            $this->error("操作失败：更新轮播图记录错误");
        }

    }

    public function uploadimg(){
        $file = request()->file('file_data');
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
        if($info){
            $savename=$info->getSaveName();
            $savename=str_replace("\\",'/',$savename);
            return json(['status'=>true,'msg'=>'上传成功','fileInfo'=>'/uploads/'.$savename]);
        }else{
            $errmsg=$file->getError();
            return json(['status'=>fale,'msg'=>$errmsg]);
        }
    }
}