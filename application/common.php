<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
/**
 * get language prefix
 * @return string
 * @author Allen <wudi@wdcloud.cc>
 */
function get_l(){
    $langCode=\think\Lang::detect();
    if($langCode==="zh-cn"){
        return "cn_";
    }elseif ($langCode==="en-us"){
        return "en_";
    }else{
        return "en_";
    }
}

/**
 * 截取字符串
 * @param $text
 * @param $length
 * @return string
 * @author Allen <wudi@wdcloud.cc>
 */
function subtext($text, $length)
{
    if(mb_strlen($text, 'utf8') > $length)
        return mb_substr($text, 0, $length-1, 'utf8').'...';
    return $text;
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
