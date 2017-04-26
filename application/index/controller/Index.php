<?php
namespace app\index\controller;

use app\common\controller\Common;

class Index extends Common
{
    public function index()
    {
        $slide=db('slide')->where(["status"=>1])->select();
        $categories=db('product_category')->where(["status"=>1])->select();
        $topProduct=db("product")->where(['status'=>1])->order('istop desc,top_sort asc')->limit(18)->select();
        $events=db('events')->where(['status'=>1])->order("istop desc,sort asc")->limit(3)->select();
        $latest_events=db('events')->where(['status'=>1])->order("create_time desc")->limit(3)->select();
        $clients=db('clients')->where(["status"=>1])->select();

        $this->assign("slide",$slide);
        $this->assign('categories',$categories);
        $this->assign('products',$topProduct);
        $this->assign('topevents',$events);
        $this->assign('latest',$latest_events);
        $this->assign('clients',$clients);

        return view('index');
    }
}
