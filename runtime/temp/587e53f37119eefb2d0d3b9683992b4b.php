<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:72:"C:\wamp64\www\0\auth\public/../application/admin\view\products\edit.html";i:1493028212;s:69:"C:\wamp64\www\0\auth\public/../application/admin\view\admin\base.html";i:1493005210;}*/ ?>
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
            <a class="navbar-brand" href="<?php echo url('index/index/index'); ?>" target="_blank">青岛丽凯化工有限公司</a>
        </div>
        <div class="header-right">
            <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
            <a href="<?php echo url('admin/entry/logout'); ?>" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <!--<img src="__STATIC__/admin/assets/img/user.png" class="img-thumbnail" />-->
                        <div class="inner-text">
                            <?php echo $loginuser['username']; ?>|<?php echo $loginuser['realname']; ?>
                            <br />
                            <small>上次登录时间 : <?php echo date("Y-m-d H:i:s",$loginuser['lastlogintime']); ?></small>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="<?php echo url('admin/index/index'); ?>"><i class="fa fa-dashboard "></i>仪表板</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>权限控制 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level" id="nav-user">
                        <li>
                            <a href="<?php echo url('admin/rbac/user'); ?>"><i class="fa fa-flash "></i>用户管理</a>
                        </li>
                        <!--<li>
                            <a href="<?php echo url('admin/rbac/node'); ?>"><i class="fa fa-key "></i>节点管理</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/rbac/auth'); ?>"><i class="fa fa-send "></i>授权管理</a>
                        </li>-->
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>首页管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level" id="nav-index">
                        <li>
                            <a href="<?php echo url('admin/index/slide'); ?>"><i class="fa fa-toggle-on"></i>轮播图管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>关于我们 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level" id="nav-about">
                        <li>
                            <a href="<?php echo url('admin/about/info'); ?>"><i class="fa fa-flash "></i>公司介绍</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/about/honor'); ?>"><i class="fa fa-key "></i>公司荣誉</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/about/clients'); ?>"><i class="fa fa-send "></i>公司客户</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>产品管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level" id="nav-product">
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
                    <ul class="nav nav-second-level collapse in" id="nav-events">
                        <li>
                            <a href="<?php echo url('admin/events/index'); ?>"><i class="fa fa-bicycle "></i>新闻列表</a>
                        </li>
                        <!--<li>
                            <a href="<?php echo url('admin/events/drafts'); ?>"><i class="fa fa-flask "></i>草稿箱</a>
                        </li>
                        <li>
                            <a href="<?php echo url('admin/events/recycle'); ?>"><i class="fa fa-plus "></i>回收站</a>
                        </li>-->
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap "></i>联系我们<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level" id="nav-contact">
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
                <h1 class="page-head-line">编辑产品信息</h1>
                <h1 class="page-subhead-line"> </h1>
            </div>
        </div>
        <!--/.ROW-->
        <div class="row">
            <div class="col-md-6 col-sm-6 col-md-offset-3 col-sm-offset-3 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <?php if(!(empty($info['id']) || (($info['id'] instanceof \think\Collection || $info['id'] instanceof \think\Paginator ) && $info['id']->isEmpty()))): ?>
                        编号：<?php echo $info['id']; else: ?>
                        填写分类信息
                        <?php endif; ?>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="<?php echo url('admin/products/update'); ?>" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="id" value="<?php echo (isset($info['id']) && ($info['id'] !== '')?$info['id']:0); ?>"/>
                            <div class="form-group">
                                <label>是否置顶</label>
                                <select class="form-control" name="cid">
                                    <?php if(is_array($cate_list) || $cate_list instanceof \think\Collection || $cate_list instanceof \think\Paginator): $i = 0; $__LIST__ = $cate_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;if($list['id'] == $info['cid']): ?>
                                    <option value="<?php echo $list['id']; ?>" selected><?php echo $list['cn_title']; ?></option>
                                    <?php else: ?>
                                    <option value="<?php echo $list['id']; ?>"><?php echo $list['cn_title']; ?></option>
                                    <?php endif; endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label">产品图片</label>
                                <input id="kv-explorer" type="file">
                                <input id="product_pic" type="hidden" name="product_pic" value="<?php echo (isset($info['product_pic']) && ($info['product_pic'] !== '')?$info['product_pic']:''); ?>"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">名称（中文）</label>
                                <input type="text" class="form-control" name="cn_title" value="<?php echo (isset($info['cn_title']) && ($info['cn_title'] !== '')?$info['cn_title']:''); ?>"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">名称（英文）</label>
                                <input type="text" class="form-control" name="en_title" value="<?php echo (isset($info['en_title']) && ($info['en_title'] !== '')?$info['en_title']:''); ?>"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">CAS NO</label>
                                <input type="text" class="form-control" name="casno" value="<?php echo (isset($info['casno']) && ($info['casno'] !== '')?$info['casno']:''); ?>"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">结构式</label>
                                <input id="product-spec" type="file">
                                <input id="sf_pic" type="hidden" name="sf_pic" value="<?php echo (isset($info['sf_pc']) && ($info['sf_pc'] !== '')?$info['sf_pc']:''); ?>"/>
                            </div>
                            <div class="form-group">
                                <label>产品描述（中文）</label>
                                <textarea class="form-control" name="cn_desc" rows="5"><?php echo (isset($info['cn_desc']) && ($info['cn_desc'] !== '')?$info['cn_desc']:''); ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>产品描述（英文）</label>
                                <textarea class="form-control" name="en_desc" rows="5"><?php echo (isset($info['en_desc']) && ($info['en_desc'] !== '')?$info['en_desc']:''); ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>产品参数（中文）</label>
                                <textarea class="form-control" name="cn_spec" rows="5"><?php echo (isset($info['cn_spec']) && ($info['cn_spec'] !== '')?$info['cn_spec']:''); ?></textarea>
                            </div>
                            <div class="form-group">
                                <label>产品参数（英文）</label>
                                <textarea class="form-control" name="en_spec" rows="5"><?php echo (isset($info['en_spec']) && ($info['en_spec'] !== '')?$info['en_spec']:''); ?></textarea>
                            </div>
                            <!--<div class="form-group">
                                <label>其它描述</label>
                                <script id="editor_en" type="text/plain" style="width:100%;height:500px;" name="cn_other"><?php echo (isset($info['cn_other']) && ($info['cn_other'] !== '')?$info['cn_other']:''); ?></script>
                            </div>
                            <div class="form-group">
                                <label>其它描述</label>
                                <script id="editor_en" type="text/plain" style="width:100%;height:500px;" name="en_other"><?php echo (isset($info['en_other']) && ($info['en_other'] !== '')?$info['en_other']:''); ?></script>
                            </div>-->
                            <div class="form-group">
                                <label>是否置顶</label>
                                <select class="form-control" name="istop">
                                    <?php if($info['istop'] == '2'): ?>
                                    <option value="1">否</option>
                                    <option value="2" selected>是</option>
                                    <?php else: ?>
                                    <option value="1" selected>否</option>
                                    <option value="2">是</option>
                                    <?php endif; ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label">排序编号</label>
                                <input type="text" class="form-control" name="top_sort" value="<?php echo (isset($info['top_sort']) && ($info['top_sort'] !== '')?$info['top_sort']:999); ?>"/>
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
        $("#kv-explorer").fileinput({
            'theme': 'explorer',
            'uploadUrl': "<?php echo url('admin/index/uploadimg'); ?>",
            overwriteInitial: true,
            initialPreviewAsData: true,
            initialPreview: ["<?php echo (isset($info['product_pic']) && ($info['product_pic'] !== '')?$info['product_pic']:'/static/home/img/product2.jpg'); ?>"],
            initialPreviewConfig: []
        }).on("fileuploaded", function(event, data, previewId, index) {
            if(data.response.status===true){
                $("input[name=product_pic]").val(data.response.fileInfo);
            }else{
                alert("文件上传失败");
            }
        });

        $("#product-spec").fileinput({
            'theme': 'explorer',
            'uploadUrl': "<?php echo url('admin/index/uploadimg'); ?>",
            overwriteInitial: true,
            initialPreviewAsData: true,
            initialPreview: ["<?php echo (isset($info['product_pic']) && ($info['product_pic'] !== '')?$info['product_pic']:'/static/home/img/product2.jpg'); ?>"],
            initialPreviewConfig: []
        }).on("fileuploaded", function(event, data, previewId, index) {
            if(data.response.status===true){
                $("input[name=sf_pic]").val(data.response.fileInfo);
            }else{
                alert("文件上传失败");
            }
        });;
    })
</script>

</body>
</html>
