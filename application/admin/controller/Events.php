<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 4:09 PM
 */

namespace app\admin\controller;


class Events extends Admin
{
    public function index(){
        return view('index');
    }

    public function drafts(){
        return view('drafts');
    }

    public function recycle(){
        return view('recycle');
    }

    public function edit(){
        return view('edit');
    }

    public function update(){

    }
}