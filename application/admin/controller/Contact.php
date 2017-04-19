<?php
/**
 * Created by PhpStorm.
 * User: allen
 * Date: 4/18/2017
 * Time: 4:23 PM
 */

namespace app\admin\controller;


class Contact extends Admin
{
    public function index(){
        return view('index');
    }

    public function consult(){
        return view('consult');
    }

    public function resp(){
        return view('resp');
    }
}