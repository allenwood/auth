<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 2017/4/21
 * Time: 0:00
 */

/**
 * action log functon
 */
function action_log(){
    $userInfo=session('user');
    if(!empty($userInfo)){

    }
}

/**
 * get count of products under certain category
 * @param $id
 * @return int|string
 * @author Allen <wudi@wdcloud.cc>
 */
function get_category_count($id){
    return db('product')->where(['status'=>1,'cid'=>$id])->count();
}

/**
 * get category name by category id
 * @param $cid
 * @return mixed
 * @author Allen <wudi@wdcloud.cc>
 */
function get_category_name($cid){
    return db('product_category')->where(['id'=>$cid])->value('cn_title');
}