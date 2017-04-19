<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:70:"C:\wamp64\www\0\auth\public/../application/index\view\index\index.html";i:1492491440;s:67:"C:\wamp64\www\0\auth\public/../application/index\view\tpl\base.html";i:1492493345;}*/ ?>
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

<!-- Homepage Slider -->
<div class="homepage-slider">
    <div id="sequence">
        <ul class="sequence-canvas">
            <!-- Slide 1 -->
            <li class="bg4">
                <!-- Slide Title -->
                <h2 class="title">Responsive</h2>
                <!-- Slide Text -->
                <h3 class="subtitle">It looks great on desktops, laptops, tablets and smartphones</h3>
                <!-- Slide Image -->
                <img class="slide-img" src="__STATIC__/home/img/homepage-slider/slide1.png" alt="Slide 1" />
            </li>
            <!-- End Slide 1 -->
            <!-- Slide 2 -->
            <li class="bg3">
                <!-- Slide Title -->
                <h2 class="title">Color Schemes</h2>
                <!-- Slide Text -->
                <h3 class="subtitle">Comes with 5 color schemes and it's easy to make your own!</h3>
                <!-- Slide Image -->
                <img class="slide-img" src="__STATIC__/home/img/homepage-slider/slide2.png" alt="Slide 2" />
            </li>
            <!-- End Slide 2 -->
            <!-- Slide 3 -->
            <li class="bg1">
                <!-- Slide Title -->
                <h2 class="title">Feature Rich</h2>
                <!-- Slide Text -->
                <h3 class="subtitle">Huge amount of components and over 30 sample pages!</h3>
                <!-- Slide Image -->
                <img class="slide-img" src="__STATIC__/home/img/homepage-slider/slide3.png" alt="Slide 3" />
            </li>
            <!-- End Slide 3 -->
        </ul>
        <div class="sequence-pagination-wrapper">
            <ul class="sequence-pagination">
                <li>1</li>
                <li>2</li>
                <li>3</li>
            </ul>
        </div>
    </div>
</div>
<!-- End Homepage Slider -->
<!-- Press Coverage -->
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="in-press press-wired">
                    <a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="in-press press-wired">
                    <a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="in-press press-mashable">
                    <a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="in-press press-techcrunch">
                    <a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Services -->
<div class="section">
    <div class="container">
        <h2>Products Categories</h2>
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="service-wrapper">
                    <img src="__STATIC__/home/img/service-icon/diamond.png" alt="Service 1">
                    <h3>Aliquam in adipiscing</h3>
                    <p>Praesent rhoncus mauris ac sollicitudin vehicula. Nam fringilla turpis turpis, at posuere turpis aliquet sit amet condimentum</p>
                    <a href="#" class="btn">Read more</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-wrapper">
                    <img src="__STATIC__/home/img/service-icon/ruler.png" alt="Service 2">
                    <h3>Curabitur mollis</h3>
                    <p>Suspendisse eget libero mi. Fusce ligula orci, vulputate nec elit ultrices, ornare faucibus orci. Aenean lectus sapien, vehicula</p>
                    <a href="#" class="btn">Read more</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-wrapper">
                    <img src="__STATIC__/home/img/service-icon/box.png" alt="Service 3">
                    <h3>Vivamus mattis</h3>
                    <p>Phasellus posuere et nisl ac commodo. Nulla facilisi. Sed tincidunt bibendum cursus. Aenean vulputate aliquam risus rutrum scelerisque</p>
                    <a href="#" class="btn">Read more</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-wrapper">
                    <img src="__STATIC__/home/img/service-icon/box.png" alt="Service 3">
                    <h3>Vivamus mattis</h3>
                    <p>Phasellus posuere et nisl ac commodo. Nulla facilisi. Sed tincidunt bibendum cursus. Aenean vulputate aliquam risus rutrum scelerisque</p>
                    <a href="#" class="btn">Read more</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Services -->

<!-- Call to Action Bar -->
<div class="section section-white">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="calltoaction-wrapper">
                    <h3>Sample Text Here</h3> <a href="#" class="btn btn-orange">Recent Event</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Call to Action Bar -->

<div class="section">
    <div class="container">
        <h2>Pricing</h2>
        <div class="row">
            <div class="col-md-12">
                <div class="products-slider">
                    <!-- Products Slider Item -->
                    <div class="shop-item">
                        <!-- Product Image -->
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product1.jpg" alt="Item Name"></a>
                        </div>
                        <!-- Product Title -->
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <!-- Product Price -->
                        <div class="price">
                            $999.99
                        </div>
                        <!-- Buy Button -->
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <!-- End Products Slider Item -->
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product2.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product3.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product4.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product5.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product6.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product7.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product8.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <!-- Product Image -->
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product1.jpg" alt="Item Name"></a>
                        </div>
                        <!-- Product Title -->
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <!-- Product Price -->
                        <div class="price">
                            $999.99
                        </div>
                        <!-- Buy Button -->
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <!-- End Products Slider Item -->
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product2.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product3.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product4.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product5.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product6.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product7.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                    <div class="shop-item">
                        <div class="image">
                            <a href="page-product-details.html"><img src="__STATIC__/home/img/product8.jpg" alt="Item Name"></a>
                        </div>
                        <div class="title">
                            <h3><a href="page-product-details.html">Lorem ipsum dolor</a></h3>
                        </div>
                        <div class="price">
                            $999.99
                        </div>
                        <div class="actions">
                            <a href="page-product-details.html" class="btn btn-small"><i class="icon-shopping-cart icon-white"></i> Buy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="section">
    <div class="container">
        <div class="row">
            <!-- Featured News -->
            <div class="col-sm-6 featured-news">
                <h2>Featured News</h2>
                <div class="row">
                    <div class="col-xs-4"><a href="page-blog-post-right-sidebar.html"><img src="__STATIC__/home/img/news1.jpg" alt="Post Title"></a></div>
                    <div class="col-xs-8">
                        <div class="caption"><a href="page-blog-post-right-sidebar.html">Anual Report</a></div>
                        <div class="date">16 May 2013 </div>
                        <div class="intro">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. <a href="page-blog-post-right-sidebar.html">Read more...</a></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-4"><a href="page-blog-post-right-sidebar.html"><img src="__STATIC__/home/img/news2.jpg" alt="Post Title"></a></div>
                    <div class="col-xs-8">
                        <div class="caption"><a href="page-blog-post-right-sidebar.html">New Career Oportunities</a></div>
                        <div class="date">14 May 2013 </div>
                        <div class="intro">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="page-blog-post-right-sidebar.html">Read more...</a></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-4"><a href="page-blog-post-right-sidebar.html"><img src="__STATIC__/home/img/news3.jpg" alt="Post Title"></a></div>
                    <div class="col-xs-8">
                        <div class="caption"><a href="page-blog-post-right-sidebar.html">Even More News</a></div>
                        <div class="date">05 May 2013 </div>
                        <div class="intro">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <a href="page-blog-post-right-sidebar.html">Read more...</a></div>
                    </div>
                </div>
            </div>
            <!-- End Featured News -->
            <!-- Latest News -->
            <div class="col-sm-6 latest-news">
                <h2>Latest News</h2>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="caption"><a href="page-blog-post-right-sidebar.html">Anual Report</a></div>
                        <div class="date">16 May 2013 </div>
                        <div class="intro">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et. <a href="page-blog-post-right-sidebar.html">Read more...</a></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="caption"><a href="page-blog-post-right-sidebar.html">New Career Oportunities</a></div>
                        <div class="date">14 May 2013 </div>
                        <div class="intro">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="page-blog-post-right-sidebar.html">Read more...</a></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="caption"><a href="page-blog-post-right-sidebar.html">New Career Oportunities</a></div>
                        <div class="date">14 May 2013 </div>
                        <div class="intro">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="page-blog-post-right-sidebar.html">Read more...</a></div>
                    </div>
                </div>
            </div>
            <!-- End Featured News -->
        </div>
    </div>
</div>

<!-- Our Clients -->
<div class="section">
    <div class="container">
        <h2>Our Clients</h2>
        <div class="clients-logo-wrapper text-center row">
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/canon.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/cisco.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/dell.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/ea.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/ebay.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/facebook.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/google.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/hp.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/microsoft.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/mysql.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/sony.png" alt="Client Name"></a></div>
            <div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="__STATIC__/home/img/logos/yahoo.png" alt="Client Name"></a></div>
        </div>
    </div>
</div>
<!-- End Our Clients -->



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