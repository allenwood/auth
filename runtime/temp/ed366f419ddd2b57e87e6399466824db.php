<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:70:"C:\wamp64\www\0\auth\public/../application/admin\view\entry\login.html";i:1492734335;}*/ ?>
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
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body style="background-color: #E2E2E2;">
<div class="container">
    <div class="row text-center " style="padding-top:100px;">
        <div class="col-md-12">
            <!--<img src="__STATIC__/admin/assets/img/logo-invoice.png" />-->
            <img style="height:100px;" src="__STATIC__/home/img/richkem_log_nobg.png"/>
        </div>
    </div>
    <div class="row ">
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="panel-body">
                <form role="form" action="<?php echo url('admin/entry/dologin'); ?>" method="post">
                    <hr />
                    <h5>请输入登录信息</h5>
                    <br />
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                        <input type="text" class="form-control" placeholder="用户名 " name="username"/>
                    </div>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                        <input type="password" class="form-control"  placeholder="密码" name="password"/>
                    </div>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                        <input type="text" class="form-control" placeholder="验证码 " name="captcha"/>
                    </div>
                    <div class="form-group">
                        <div><img id="captcha" src="<?php echo captcha_src(); ?>" alt="captcha" /><button class="btn btn-primary pull-right" type="submit">登录</button></div>
                    </div>
                    <hr />
                    <!--Not register ? <a href="index.html" >click here </a> or go to <a href="index.html">Home</a>-->
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="__STATIC__/home/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("#captcha").on("click",function(){
            $("#captcha").prop("src","<?php echo captcha_src(); ?>");
        })
    })
</script>
</body>
</html>
