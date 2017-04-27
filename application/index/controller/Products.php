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
        $cid=input("cid",0);
        if(!empty($cid)){
            $map["cid"]=$cid;
        }
        $map["status"]=1;
        $lists=db("product")->where($map)->order("istop desc,top_sort asc,create_time desc")->paginate(6);
        $this->assign('cid',$cid);
        $this->assign('lists',$lists);
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
                $info["spec"]=$this->spec_process($info[get_l()."spec"]);
                $this->assign("info",$info);
                return view('detail');
            }
        }
    }

    public function spec_process($data){
        $stepOne=explode("\n",$data);
        $stepTwo=[];
        foreach($stepOne as $key => $value){
            $stepTwo[]=explode("|",$value);
        }
        return $stepTwo;
    }
}