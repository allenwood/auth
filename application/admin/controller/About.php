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


    //company info management
    public function info(){
        return view('info');
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