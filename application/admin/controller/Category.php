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
    public function index(){
        return view('index');
    }

    public function edit(){
        return view('edit');
    }

    public function update(){

    }

    public function del(){

    }
}