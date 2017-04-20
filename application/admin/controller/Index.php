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
        return view('slide');
    }

    public function editslide(){
        return view('editslide');
    }

    public function updateslide(){
        $data=input();
        dump($data);
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