<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:71:"C:\wamp64\www\0\auth\public/../application/index\view\events\index.html";i:1492493502;s:67:"C:\wamp64\www\0\auth\public/../application/index\view\tpl\base.html";i:1492493345;}*/ ?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:'Richkem'); ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="__STATIC__/home/css/bootstrap.min.css">
    <link rel="stylesheet" href="__STATIC__/home/css/icomoon-social.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="__STATIC__/home/css/leaflet.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="__STATIC__/home/css/leaflet.ie.css" />
    <![endif]-->
    <link rel="stylesheet" href="__STATIC__/home/css/main.css">
    
    <script src="__STATIC__/home/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<!-- Navigation & Logo-->
<div class="mainmenu-wrapper">
    <div class="container">
        <div class="menuextras">
            <div class="extras">
                <ul>
                    <li>
                        <div class="dropdown choose-country">
                            <a class="#" data-toggle="dropdown" href="#"><img src="__STATIC__/home/img/flags/gb.png" alt="Great Britain"> CN</a>
                            <ul class="dropdown-menu" role="menu">
                                <li role="menuitem"><a href="?lang=en-us"><img src="__STATIC__/home/img/flags/us.png" alt="United States"> US</a></li>
                                <li role="menuitem"><a href="?lang=zh-cn"><img src="__STATIC__/home/img/flags/de.png" alt="China"> CN</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <nav id="mainmenu" class="mainmenu">
            <ul>
                <li class="logo-wrapper"><a href="<?php echo url('index/index/index'); ?>"><img src="__STATIC__/home/img/mPurpose-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
                <li class="active">
                    <a href="<?php echo url('index/index/index'); ?>"><?php echo lang('Home'); ?></a>
                </li>
                <li>
                    <a href="<?php echo url('index/about/index'); ?>"><?php echo lang('About'); ?></a>
                </li>
                <li class="has-submenu">
                    <a href="<?php echo url('index/products/index'); ?>"><?php echo lang('Product'); ?></a>
                    <div class="mainmenu-submenu">
                        <div class="mainmenu-submenu-inner">
                            <div>
                                <a href="<?php echo url('index/products/index'); ?>"><h4>Flame restardant</h4></a>
                                <ul>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">DBDPE</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">BPS</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">OBS</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">BT-93W</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">FR-370</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">RK-612(HBCD replacement)</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">K-613(HBCD replacement)</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Melamine Cyanurate(MCA)</a></li>
                                </ul>
                            </div>
                            <div>
                                <a href="<?php echo url('index/products/index'); ?>"><h4>Masterbatch</h4></a>
                                <ul>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Antimony Masterbatch</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">FR Masterbatch</a></li>
                                </ul>
                            </div>
                            <div>
                                <a href="<?php echo url('index/products/index'); ?>"><h4>Intermediates</h4></a>
                                <ul>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Benzylamine</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Dibenzylamine</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">N-Methylbenzylamine</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">β-phenylethylamine</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">m-Toluic acid</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Furfurylamine</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Boron Trifluoride Acetonitrile</a></li>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Boron Trifluoride Etherate</a></li>
                                </ul>
                            </div>
                            <div>
                                <a href="<?php echo url('index/products/index'); ?>"><h4>Daelim Plavis</h4></a>
                                <ul>
                                    <li><a href="<?php echo url('index/products/detail'); ?>">Daelim Plavis (Imported)</a></li>
                                </ul>
                            </div>
                        </div><!-- /mainmenu-submenu-inner -->
                    </div><!-- /mainmenu-submenu -->
                </li>
                <li>
                    <a href="<?php echo url('index/events/index'); ?>"><?php echo lang('Events'); ?></a>
                </li>
                <li>
                    <a href="<?php echo url('index/contact/index'); ?>"><?php echo lang('Contact'); ?></a>
                </li>
                <li style="vertical-align: middle;">
                    <form style="width:249px;" action="<?php echo url('index/search/index'); ?>">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="<?php echo lang('Search'); ?>...">
                            <span class="input-group-btn">
								  <button class="btn btn-default" type="submit">Go!</button>
							</span>
                        </div>
                    </form>
                </li>
            </ul>

        </nav>
    </div>
</div>

<!-- Page Title -->
<div class="section section-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Events</h1>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="events-list">
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">16</div>
                                <div class="event-month">MAR</div>
                            </div>
                        </td>
                        <td>
                            Donec hendrerit massa metus, a ultrices elit iaculis eu. Pellentesque ullamcorper augue lacus.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Siemens Arena</td>
                        <td class="event-price hidden-xs">$50.00</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">5</div>
                                <div class="event-month">APR</div>
                            </div>
                        </td>
                        <td>
                            Phasellus et est quis diam iaculis fringilla id nec sapien.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Nike Arena</td>
                        <td class="event-price hidden-xs">FREE</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">31</div>
                                <div class="event-month">MAY</div>
                            </div>
                        </td>
                        <td>
                            Ut consectetur commodo justo, sed sollicitudin massa venenatis ut 2013.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Samsung Arena</td>
                        <td class="event-price hidden-xs">$30.00</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">17</div>
                                <div class="event-month">SEP</div>
                            </div>
                        </td>
                        <td>
                            Pellentesque justo turpis, fringilla sit amet pulvinar ut, tincidunt nec leo.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Samsung Arena</td>
                        <td class="event-price hidden-xs">FREE</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">16</div>
                                <div class="event-month">MAR</div>
                            </div>
                        </td>
                        <td>
                            Donec hendrerit massa metus, a ultrices elit iaculis eu. Pellentesque ullamcorper augue lacus.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Siemens Arena</td>
                        <td class="event-price hidden-xs">$50.00</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">5</div>
                                <div class="event-month">APR</div>
                            </div>
                        </td>
                        <td>
                            Phasellus et est quis diam iaculis fringilla id nec sapien.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Nike Arena</td>
                        <td class="event-price hidden-xs">FREE</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">31</div>
                                <div class="event-month">MAY</div>
                            </div>
                        </td>
                        <td>
                            Ut consectetur commodo justo, sed sollicitudin massa venenatis ut 2013.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Samsung Arena</td>
                        <td class="event-price hidden-xs">$30.00</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="event-date">
                                <div class="event-day">17</div>
                                <div class="event-month">SEP</div>
                            </div>
                        </td>
                        <td>
                            Pellentesque justo turpis, fringilla sit amet pulvinar ut, tincidunt nec leo.
                        </td>
                        <td class="event-venue hidden-xs"><i class="icon-map-marker"></i> Samsung Arena</td>
                        <td class="event-price hidden-xs">FREE</td>
                        <td><a href="<?php echo url('index/events/detail'); ?>" class="btn btn-grey btn-sm event-more">Read More</a></td>
                    </tr>
                </table>
            </div>
            <div class="pagination-wrapper ">
                <ul class="pagination pagination-lg">
                    <li class="disabled"><a href="#">Previous</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">10</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
        </div>

    </div>
</div>




<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-footer col-md-3 col-xs-6">
                <h3>Navigate</h3>
                <ul class="no-list-style footer-navigate-section">
                    <li><a href="page-blog-posts.html">Home</a></li>
                    <li><a href="page-portfolio-3-columns-2.html">About Us</a></li>
                    <li><a href="<?php echo url('index/products/index'); ?>">Products</a></li>
                    <li><a href="page-services-3-columns.html">Events</a></li>
                    <li><a href="page-pricing.html">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-footer col-md-3 col-xs-6">
                <h3>Products</h3>
                <ul class="no-list-style footer-navigate-section">
                    <li><a href="page-blog-posts.html">Home</a></li>
                    <li><a href="page-portfolio-3-columns-2.html">About Us</a></li>
                    <li><a href="<?php echo url('index/products/index'); ?>">Products</a></li>
                    <li><a href="page-services-3-columns.html">Events</a></li>
                    <li><a href="page-pricing.html">Contact Us</a></li>
                </ul>
            </div>


            <div class="col-footer col-md-3 col-xs-6">
                <h3>Latest News</h3>
                <ul class="no-list-style footer-navigate-section">
                    <li><a href="page-blog-posts.html">Home</a></li>
                    <li><a href="page-portfolio-3-columns-2.html">About Us</a></li>
                    <li><a href="<?php echo url('index/products/index'); ?>">Products</a></li>
                    <li><a href="page-services-3-columns.html">Events</a></li>
                    <li><a href="page-pricing.html">Contact Us</a></li>
                </ul>
            </div>

            <div class="col-footer col-md-3 col-xs-6">
                <h3>Contact Us</h3>
                <p class="contact-us-details">
                    <b>Address:</b> 123 Fake Street, LN1 2ST, London, United Kingdom<br/>
                    <b>Phone:</b> +44 123 654321<br/>
                    <b>Fax:</b> +44 123 654321<br/>
                    <b>Email:</b> <a href="mailto:getintoutch@yourcompanydomain.com">getintoutch@yourcompanydomain.com</a>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="footer-copyright">Copyright &copy; 2015.Company name All rights reserved.</div>
            </div>
        </div>
    </div>
</div>

<!-- Javascripts -->
<script src="__STATIC__/home/js/jquery-1.9.1.min.js"></script>
<script src="__STATIC__/home/js/bootstrap.min.js"></script>
<script src="__STATIC__/home/js/leaflet.js"></script>
<script src="__STATIC__/home/js/jquery.fitvids.js"></script>
<script src="__STATIC__/home/js/jquery.sequence-min.js"></script>
<script src="__STATIC__/home/js/jquery.bxslider.js"></script>
<script src="__STATIC__/home/js/main-menu.js"></script>
<script src="__STATIC__/home/js/template.js"></script>


</body>
</html>