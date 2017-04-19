<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 11:59 AM
 */

namespace app\index\controller;


use app\common\controller\Common;

class Search extends Common
{
    public function index(){
        return view('index');
    }
}