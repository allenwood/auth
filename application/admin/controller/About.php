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
    public function honor(){
        return view('honor');
    }

    public function info(){
        return view('info');
    }
}