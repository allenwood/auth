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
}