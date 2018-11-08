<?php echo $header; ?>
<section id="parallax-slider" class="parallax-slider">
    <ul class="baseList">
        <li data-preview="/catalog/view/theme/default/image/banner/banner-Design_4.jpg" data-ulr-link=""></li>
        <li data-preview="/catalog/view/theme/default/image/banner/banner-Design_5.jpg" data-ulr-link=""></li>
        <li data-preview="/catalog/view/theme/default/image/banner/banner-Design_6.jpg" data-ulr-link="">
            <div class="slider_caption"><p align="left"><span
                            style="font-size:72px;color:#2e2e2e;font-family:'Open Sans', sans-serif;font-weight:300;">РЕВОЛЮЦИЯ</span></br></br>
                    <span style="font-size:55px;color:#2e2e2e;font-family:'Open Sans', sans-serif;font-weight:300;"> В ФОРМАХ СВЕТА
                </p>


            </div>
        </li>
    </ul>
</section>
<section class="assortment">
    <div class="container">
        <h2 class="main-page-title theme-color_yellow">наш ассортимент</h2>
        <div class="row">
            <div class="col-sm-3">
                <div class="assortment__item">
                    <div class="assortment__header theme-bg_light-gray">
                        <a href="" class="assortment__item-lnk">
                            <img src="/catalog/view/theme/default/image/assortment/assortment_1.png" alt=""
                                 class="assortment__img">
                        </a>
                        <div class="assortment__title">MAXISVET<br/> SIMPLE</div>
                    </div>
                    <div class="assortment__content">
                        Востребованные коллекции массового спроса: Универсальная классика, Еврокаркасы, Панели, Буше,
                        Споты и Модерн. Люстры, бра, подвесы с широким разнообразием фактур и материалов.
                    </div>
                    <a href="/katalog" class="assortment__lnk theme-bg_light-gray">Каталог</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="assortment__item">
                    <div class="assortment__header theme-bg_gray">
                        <a href="" class="assortment__item-lnk">
                            <img src="/catalog/view/theme/default/image/assortment/assortment_2.png" alt=""
                                 class="assortment__img">
                        </a>
                        <div class="assortment__title">MAXISVET<br/> DESIGNE</div>
                    </div>
                    <div class="assortment__content">
                        Дизайнерские коллекции для ценителей прекрасного: благородный Хрусталь, роскошные Водопады,
                        уютная Керамика, изящная Флористика и пр. В коллекциях представлены последние мировые тенденции
                        дизайна.
                    </div>
                    <a href="/katalog" class="assortment__lnk theme-bg_gray">Каталог</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="assortment__item">
                    <div class="assortment__header theme-bg_dark-gray">
                        <a href="" class="assortment__item-lnk">
                            <img src="/catalog/view/theme/default/image/assortment/assortment_3.png" alt=""
                                 class="assortment__img">
                        </a>
                        <div class="assortment__title">MAXISVET<br/> RUSCO</div>
                    </div>
                    <div class="assortment__content">
                        Оригинальные и высококачественные светильники отечественного производства, разработанные нашими
                        дизайнерами, учитывают актуальные модные тенденции, и предпочтения российских покупателей.
                    </div>
                    <a href="/katalog" class="assortment__lnk theme-bg_dark-gray">Каталог</a>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="assortment__item">
                    <div class="assortment__header theme-bg_yellow">
                        <a href="" class="assortment__item-lnk">
                            <img src="/catalog/view/theme/default/image/assortment/assortment_4.png" alt=""
                                 class="assortment__img">
                        </a>
                        <div class="assortment__title">RIFORMA</div>
                    </div>
                    <div class="assortment__content">
                        Совершенный дизайн, инновационные технологии, надежное качество. Люстры и бра в коллекциях LOFT,
                        MODERN, NEO CLASSIC, HI-TECH, разработанные по эскизам итальянских дизайнеров.
                    </div>
                    <a href="/katalog" class="assortment__lnk theme-bg_yellow">Каталог</a>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>