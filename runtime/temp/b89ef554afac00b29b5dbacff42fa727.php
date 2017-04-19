<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:74:"C:\wamp64\www\0\auth\public/../application/admin\view\index\editslide.html";i:1492587793;s:69:"C:\wamp64\www\0\auth\public/../application/admin\view\admin\base.html";i:1492586425;}*/ ?>
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
    
<link href="__STATIC__/admin/assets/css/bootstrap-fileupload.min.css" rel="stylesheet" />
<link href="__STATIC__/admin/assets/fileinput/css/fileinput.min.css" rel="stylesheet" />

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
            <a class="navbar-brand" href="<?php echo url('index/index/index'); ?>" target="_blank">COMPANY NAME</a>
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
                    <a href="<?php echo url('admin/index/index'); ?>"><i class="fa fa-dashboard "></i>仪表板</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>首页管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo url('admin/index/slide'); ?>"><i class="fa fa-toggle-on"></i>轮播图管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>关于我们 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
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
                    <ul class="nav nav-second-level">
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
                    <ul class="nav nav-second-level">
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
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo url('admin/contact/index'); ?>"><i class="fa fa-bicycle "></i>联系方式管理</a>
                        </li>
                        <li>
                            <a href="#">在线留言管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
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
                <h1 class="page-head-line">编辑录播图》<small>新增|更新</small></h1>
                <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>
            </div>
        </div>
        <!--/.ROW-->
        <div class="row">
            <div class="col-md-6 col-sm-6 col-md-offset-3 col-sm-offset-3 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        编号：1
                    </div>
                    <div class="panel-body">
                        <form role="form" action="<?php echo url('admin/index/updateslide'); ?>" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <!--<label class="control-label col-lg-4">Image Upload</label>-->
                                <input id="kv-explorer" type="file">
                            </div>
                            <div class="form-group">
                                <label class="control-label">主标题（中文）</label>
                                <input type="text" class="form-control" name="cn_title"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">主标题（英文）</label>
                                <input type="text" class="form-control" name="en_title"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">副标题（中文）</label>
                                <input type="text" class="form-control" name="cn_subtitle" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">副标题（英文）</label>
                                <input type="text" class="form-control" name="en_subtitle" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">排序编号</label>
                                <input type="text" class="form-control" name="sort" />
                            </div>
                            <button type="submit" class="btn btn-info">保存</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->

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

<script src="__STATIC__/admin/assets/fileinput/js/fileinput.js"></script>
<script type="text/javascript">
    $(function(){
        $("#test-upload").fileinput({
            'showPreview': false,
            'allowedFileExtensions': ['jpg', 'png', 'gif'],
            'elErrorContainer': '#errorBlock'
        });
        $("#kv-explorer").fileinput({
            'theme': 'explorer',
            'uploadUrl': "<?php echo url('admin/index/uploadimg'); ?>",
            overwriteInitial: false,
            initialPreviewAsData: true,
            initialPreview: [],
            initialPreviewConfig: []
        }).on("fileuploaded", function(event, data, previewId, index) {
                    console.log(event);
            console.log(data);
                });;
    })
</script>

</body>
</html>