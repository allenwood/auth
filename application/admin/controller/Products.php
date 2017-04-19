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
    public function index(){
        return view("index");
    }

    public function edit(){
        return view('edit');
    }
}