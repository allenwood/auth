<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:70:"C:\wamp64\www\0\auth\public/../application/admin\view\index\slide.html";i:1492508152;s:69:"C:\wamp64\www\0\auth\public/../application/admin\view\admin\base.html";i:1492509312;}*/ ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Bootstrap Advance Admin Template</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="__STATIC__/admin/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="__STATIC__/admin/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="__STATIC__/admin/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="__STATIC__/admin/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <!--<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />-->
    
<link href="__STATIC__/admin/assets/css/prettyPhoto.css" rel="stylesheet" />

</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">COMPANY NAME</a>
        </div>
        <div class="header-right">
            <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
            <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <img src="__STATIC__/admin/assets/img/user.png" class="img-thumbnail" />
                        <div class="inner-text">
                            Jhon Deo Alex
                            <br />
                            <small>Last Login : 2 Weeks Ago </small>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="index.html"><i class="fa fa-dashboard "></i>仪表板</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>首页管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in">
                        <li>
                            <a href="<?php echo url('admin/index/slide'); ?>"><i class="fa fa-toggle-on"></i>轮播图管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>关于我们 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in">
                        <li>
                            <a href="<?php echo url('admin/about/info'); ?>"><i class="fa fa-flash "></i>公司介绍</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/about/honor'); ?>"><i class="fa fa-key "></i>公司荣誉</a>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-send "></i>公司客户</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>产品管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in">
                        <li>
                            <a href="<?php echo url('admin/category/index'); ?>"><i class="fa fa-desktop "></i>产品分类 </a>
                        </li>
                        <li>
                            <a class="active-menu" href="<?php echo url('admin/products/index'); ?>"><i class="fa fa-code "></i>产品列表</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap "></i>新闻管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in">
                        <li>
                            <a href="<?php echo url('admin/events/index'); ?>"><i class="fa fa-bicycle "></i>新闻列表</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/events/drafts'); ?>"><i class="fa fa-flask "></i>草稿箱</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/events/recycle'); ?>"><i class="fa fa-plus "></i>回收站</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap "></i>联系我们<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse in">
                        <li>
                            <a href="<?php echo url('admin/contact/index'); ?>"><i class="fa fa-bicycle "></i>联系方式管理</a>
                        </li>
                        <li>
                            <a href="#">在线留言管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level collapse in">
                                <li>
                                    <a href="<?php echo url('admin/contact/consult'); ?>"><i class="fa fa-plus "></i>未处理</a>
                                </li>
                                <li>
                                    <a href="<?php echo url('admin/contact/consult'); ?>"><i class="fa fa-comments-o "></i>已处理</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    
<div id="page-wrapper">
    <div id="page-inner">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-head-line">首页轮播图管理</h1>
                <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>
            </div>
        </div>
        <!-- /. ROW  -->
        <div class="row">
            <div class="col-md-12">
                <p>
                    <a class="btn btn-primary" href="<?php echo url('admin/index/editslide'); ?>"><i class="glyphicon glyphicon-search"></i>新增</a>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <!--   Kitchen Sink -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Kitchen Sink
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="text-center">排序</th>
                                    <th class="text-center">图片</th>
                                    <th class="text-center">发布时日期</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody class="text-center">
                                <tr>
                                    <td>1</td>
                                    <td>
                                        <div class="col-md-4 ">
                                            <div class="portfolio-item awesome mix_all" data-cat="awesome" >
                                                <a class="preview" title="Image Title Here" href="__STATIC__/admin/assets/img/portfolio/g.jpg"><img src="__STATIC__/admin/assets/img/portfolio/g.jpg" class="img-responsive " alt="" /></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2017-04-18 16:14</td>
                                    <td>
                                        <button class="btn btn-xs"><i class="glyphicon glyphicon-headphones"></i>View</button>
                                        <button class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-search"></i>Edit</button>
                                        <button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-home"></i>Delete</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>
                                        <div class="col-md-4 ">
                                            <div class="portfolio-item awesome mix_all" data-cat="awesome" >
                                                <a class="preview" title="Image Title Here" href="__STATIC__/admin/assets/img/portfolio/g.jpg"><img src="__STATIC__/admin/assets/img/portfolio/g.jpg" class="img-responsive " alt="" /></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2017-04-18 16:14</td>
                                    <td>
                                        <button class="btn btn-xs"><i class="glyphicon glyphicon-headphones"></i>View</button>
                                        <button class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-search"></i>Edit</button>
                                        <button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-home"></i>Delete</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>
                                        <div class="col-md-4 ">
                                            <div class="portfolio-item awesome mix_all" data-cat="awesome" >
                                                <a class="preview" title="Image Title Here" href="__STATIC__/admin/assets/img/portfolio/g.jpg"><img src="__STATIC__/admin/assets/img/portfolio/g.jpg" class="img-responsive " alt="" /></a>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2017-04-18 16:14</td>
                                    <td>
                                        <button class="btn btn-xs"><i class="glyphicon glyphicon-headphones"></i>View</button>
                                        <button class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-search"></i>Edit</button>
                                        <button class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-home"></i>Delete</button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- End  Kitchen Sink -->
            </div>
        </div>
        <!-- /. ROW  -->
    </div>
    <!-- /. PAGE INNER  -->
</div>

    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<div id="footer-sec">
    &copy; 2014 YourCompany | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="__STATIC__/admin/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="__STATIC__/admin/assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="__STATIC__/admin/assets/js/jquery.metisMenu.js"></script>
<script src="__STATIC__/admin/assets/js/wizard/jquery.steps.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="__STATIC__/admin/assets/js/custom.js"></script>

<script src="__STATIC__/admin/assets/js/jquery.mixitup.min.js"></script>
<script src="__STATIC__/admin/assets/js/jquery.prettyPhoto.js"></script>
<script src="__STATIC__/admin/assets/js/galleryCustom.js"></script>

</body>
</html>