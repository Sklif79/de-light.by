<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8 cssanimations"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9 cssanimations"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="cssanimations">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>

    <link rel="icon" href="/favicon.jpg" type="image/x-icon" />


    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/parallax-slider/js/parallaxSlider.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/cherry-lazy-load/js/device.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/cherry-lazy-load/js/cherry.lazy-load.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/jquery/jquery.ba-resize.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/cherry-parallax/js/cherry.parallax.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/cherry-parallax/js/jquery.mousewheel.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/cherry-parallax/js/jquery.simplr.smoothscroll.min.js" type="text/javascript"></script>
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU"></script>

    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/javascript/jquery/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/javascript/cherry-lazy-load/css/lazy-load.css" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/javascript/cherry-parallax/css/parallax.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/custom.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>
<body class="<?php echo $class; ?>">

<!--
 <nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
 -->

<!--
 <?php echo $search; ?>
 -->

<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="header-inner">
                    <div class="header-logo-wrap">
                        <div id="logo">
                            <?php if ($logo) { ?>
                            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                                alt="<?php echo $name; ?>" class="img-responsive"/></a>
                            <?php } else { ?>
                            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                            <?php } ?>
                            <div class="logo__subtitle">Продажа светильников<br> торговой марки "Максисвет"</div>
                        </div>
                        <div class="header__contacts">
                            ТД &laquo;Ждановичи&raquo;<br/>
                            Минск ул. Тимирязева, 123 к.1<br/>
                            ТЦ &laquo;Открытая строительная площадка&raquo;<br/>
                            павильоны: <b>№503</b>, <b>№72</b>
                        </div>
                    </div>

                    <div class="header__info">
                        <div class="header__info-phones">
                            <a href="tel:+375293815938">+375 29 381 59 38</a>
                            <a href="tel:+375293737057">+375 29 373 70 57</a>
                        </div>
                        <div class="header__info-btns">
                            <!--
                            <div href="#feedback" class="header__feedback custom-btn btn-theme__yellow fancybox">
                                заказать обратный звонок
                            </div>
                            -->
                            <?php echo $cart; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php if ($categories) { ?>
        <div class="row">
            <div class="col-xs-12 header__navbar container">
                <nav id="menu" class="navbar">
                    <div class="navbar-header"><span id="category"
                                                     class="visible-xs"><?php echo $text_category; ?></span>
                        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    </div>
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="nav__lnk" href="/">Главная</a></li>
                            <li><a class="nav__lnk" href="/about_us">О нас</a></li>
                            <li><a class="nav__lnk" href="/katalog">Каталог</a></li>
                            <li><a class="nav__lnk" href="/contact">Контакты</a></li>

                            <!--
                            <?php foreach ($categories as $category) { ?>
                            <?php if ($category['children']) { ?>
                            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                              <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                  <ul class="list-unstyled">
                                    <?php foreach ($children as $child) { ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                    <?php } ?>
                                  </ul>
                                  <?php } ?>
                                </div>
                                <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                            </li>
                            <?php } else { ?>
                            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                            <?php } ?>
                            <?php } ?>
                            -->
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <?php } ?>
    </div>
</header>

