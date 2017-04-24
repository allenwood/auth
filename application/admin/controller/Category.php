<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 2:47 PM
 */

namespace app\admin\controller;


class Category extends Admin
{
    /**
     * categories list
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function index(){
        $lists=db('product_category')->where(['status'=>1])->order('sort asc')->paginate(10);

        $this->assign("lists",$lists);
        return view('index');
    }

    /**
     * edit category info page
     * @return \think\response\View
     * @author Allen <wudi@wdcloud.cc>
     */
    public function edit(){
        $id=input("id",0);
        $info=db('product_category')->where(['id'=>$id,'status'=>1])->find();
        $this->assign('info',$info);
        return view('edit');
    }

    /**
     * add/update category record
     * @author Allen <wudi@wdcloud.cc>
     */

    public function update(){
        $data=input();
        $data['update_time']=time();
        $data['update_uid']=session('uid');
        $data['status']=1;
        if(empty($data['cn_title']) || empty($data['en_title'])){
            $this->error('分类的中英文名称必须填写');
        }
        if(empty($data['id'])){
            $data['create_time']=time();
            $data['create_uid']=session('uid');
            $re=db('product_category')->insert($data);
        }else{
            $re=db('product_category')->update($data);
        }
        if($re!==false){
            $this->success("操作成功：分类记录已经更新",url('admin/category/index'));
        }else{
            $this->error('操作失败：请刷新重试');
        }
    }

    /**
     * 删除分类
     * @author Allen <wudi@wdcloud.cc>
     */
    public function del(){
        $id=input("id",0);
        if(empty($id)){
            $this->error('操作失败：要删除的分类编号丢失');
        }

        $productCount=db('product')->where(['status'=>1,'cid'=>$id])->count();
        if($productCount > 0){
            $this->error("操作失败：该分类下还有产品，请删除所有产品后再操作");
        }else{
            $re=db("product_category")->where(['status'=>1,'id'=>$id])->update(['status'=>-1]);
            dump($re);
            if($re!==false){
                $this->success("操作成功：分类已删除");
            }else{
                $this->error('操作失败：数据库操作失败');
            }
        }
    }
}