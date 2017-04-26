<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 11:58 AM
 */

namespace app\index\controller;


use app\common\controller\Common;

class About extends Common
{
    public function index(){
        $info=db('about')->find();
        $honor=db('honor')->where(["status"=>1])->select();

        $this->assign('info',$info);
        $this->assign('honor',$honor);
        return view('index');
    }
}