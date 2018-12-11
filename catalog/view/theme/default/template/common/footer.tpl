<footer class="footer">
    <div class="container">
        <div class="col-sx-12">
            <div class="footer__inner">
                <div class="footer__left">
                    <div class="footer__logo-wrap">
                        <a href="/"><img src="/catalog/view/theme/default/image/logo-maxisvet.png" alt="" class="footer__logo"></a>
                        <div class="footer__copy">
                            Поставщик интерьерного освещения <br/>
                            &copy;<?php echo date('Y') ?> Все права защищены.
                        </div>
                    </div>
                    <ul class="footer-list list-unstyled">
                        <li><a href="/about_us">О нас</a></li>
                        <li><a href="/svetilniki">Каталог</a></li>
                        <li><a href="/contact">Контакты</a></li>
                    </ul>
                </div>
                <div class="footer__contacts">
                    <a href="tel:+375293815938" class="footer__phone">+375 29 381 59 38</a> <br/>
                    <a href="tel:+375293737057" class="footer__phone">+375 29 373 70 57</a> <br/>
                    Электронная почта: <a href="mailto:info@de-light.by">info@de-light.by</a><br/>
                    <!--ТД &laquo;Ждановичи&raquo;<br/>
                    Минск ул. Тимирязева, 123 к.1<br/>
                    ТЦ &laquo;Открытая строительная площадка&raquo;<br/>
                    павильоны: №503, №72-->
                </div>
            </div>
        </div>
    </div>
</footer>

<div id="toup"></div>

<div id="feedback" class="popup" style="display: none;">
    <h2 class="popup__title">Заказать обратный звонок</h2>
    <form name="feedback" action="/sendmail.php" method="post" class="form-feedback">

        <div class="field__wrap">
            <input type="text" autocomplete="off" class="input-text" placeholder="Ваше имя" name="user_name">
        </div>

        <div class="field__wrap">
            <input type="text" autocomplete="off" class="input-text" placeholder="Ваше телефон" name="user_phone">
        </div>

        <input type="submit" value="отправить" class="popup__btn-submit">
    </form>
    <svg class="svg-preloader">
        <use xlink:href='#svg-preloader' href='#svg-preloader' />
    </svg>
</div>

<svg style="display: none;">
    <symbol id="svg-preloader" viewBox="0 0 128 128">
        <rect x="0" y="0" width="100%" height="100%" fill="#FFFFFF" />
        <g>
            <path fill="#000000" fill-opacity="1" d="M109.25 55.5h-36l12-12a29.54 29.54 0 0 0-49.53 12H18.75A46.04 46.04 0 0 1 96.9 31.84l12.35-12.34v36zm-90.5 17h36l-12 12a29.54 29.54 0 0 0 49.53-12h16.97A46.04 46.04 0 0 1 31.1 96.16L18.74 108.5v-36z"/>
            <animateTransform attributeName="transform" type="rotate" from="0 64 64" to="360 64 64" dur="1280ms" repeatCount="indefinite"></animateTransform>
        </g>
    </symbol>
</svg>

</body>
</html>