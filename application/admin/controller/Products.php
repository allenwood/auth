<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 2:45 PM
 */

namespace app\admin\controller;


class Products extends Admin

{
    /**
     * 产品列表页
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function index(){
        $cid=input('cid',0);
        $map=[
            'status'=>1,
        ];
        if(!empty($cid)){
            $map['cid']=$cid;
            $category=db('product_category')->where(['id'=>$cid,'status'=>1])->find();
            $this->assign('category',$category);
        }
        $lists=db("product")->where($map)->order('istop desc,top_sort asc,create_time asc')->paginate(10);
        $this->assign('lists',$lists);
        return view("index");
    }

    /**
     * 编辑产品信息页面
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function edit(){

        $id=input("id",0);
        $info=db('product')->where(['id'=>$id,'status'=>1])->find();
        $categoryList=db('product_category')->where(['status'=>1])->order("sort")->field("id,cn_title")->select();
        $this->assign('info',$info);
        $this->assign('cate_list',$categoryList);
        return view('edit');
    }

    public function update(){
        $data=input();
        if(empty($data['id'])){

        }else{

        }
    }
}