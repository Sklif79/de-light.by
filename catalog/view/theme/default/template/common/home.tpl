<?php echo $header; ?>
<div id="parallax-slider" class="parallax-slider">
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
</div>
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