<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 4:47 PM
 */

namespace app\admin\controller;


class About extends Admin
{

    //honor management
    public function honor(){
        return view('honor');
    }

    public function edithonor(){
        return view('edithonor');
    }


    //company info management
    public function info(){
        $info=db('about')->find();
        $this->assign('info',$info);
        return view('info');
    }

    public function editinfo(){
        $id=input('id',0);
        if(empty($id)){
            $this->error('公司信息查询失败');
        }else{
            $info=db('about')->where(["id"=>$id])->find();
            if(empty($info)){
                $this->error("公司信息查询错误");
            }else{
                $this->assign('info',$info);
            }
        }
        return view('editinfo');
    }

    public function updateinfo(){
        dump(input());
    }


    //clients management
    public function clients(){
        return view('clients');
    }

    public function editclients(){
        return view('editclients');
    }

    public function updateclients(){

    }

    public function delclients(){

    }
}