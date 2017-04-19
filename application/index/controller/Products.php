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
        return view('detail');
    }
}