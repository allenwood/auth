<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 11:58 AM
 */

namespace app\index\controller;


use app\common\controller\Common;

class Products extends Common
{
    public function index(){
        return view('index');
    }

    public function detail(){
        $id=input("id");
        if(empty($id)){
            return view("noresult");
        }else{
            $info=db('product')->where(['id'=>$id,'status'=>1])->find();
            if(empty($info)){
                return view("noresult");
            }else{
                $this->assign("info",$info);
                return view('detail');
            }
        }
    }
}