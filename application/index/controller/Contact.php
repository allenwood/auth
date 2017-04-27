<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 11:59 AM
 */

namespace app\index\controller;


use app\common\controller\Common;

class Contact extends Common
{
    public function index(){
        return view('index');
    }

    /**
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     * 在线留言处理
     */
    public function msg(){
        $data=input();

        if(empty($data['name']) || empty($data['email']) || empty($data["content"])){
            return view('tpl:noresult');
        }else{
            $data['create_time']=time();
            $data['status']=0;
            dump($data);
            $re=db('msg')->insert($data);
            if($re!==false){
                return view("success");
            }else{
                return view("noresult");
            }

        }
    }
}