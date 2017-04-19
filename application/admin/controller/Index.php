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

    /**
     * login page
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function login(){
        return view('admin:login');
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
            return json(['status'=>true,'msg'=>'上传成功','fileInfo'=>'/static/uploads/'.$savename]);
        }else{
            $errmsg=$file->getError();
            return json(['status'=>fale,'msg'=>$errmsg]);
        }
    }
}