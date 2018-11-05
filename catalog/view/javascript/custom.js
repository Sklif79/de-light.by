$(document).ready(function () {
    setActiveNavPoint();
    classAfterScroll($('#menu').offset().top, '.header__navbar', 'fixed');
    toUp();
});


function setActiveNavPoint() {
    var path = location.pathname;

    $('.nav__lnk').each(function () {
        if (path === $(this).attr('href')) {
            $(this).addClass('active');
        }
    })
}

function classAfterScroll(scroll, target, addClassName) {
    var targetClass = document.querySelector(target);

    function scrollWindow() {
        if (window.pageYOffset > scroll) {
            targetClass.classList.add(addClassName);
        } else {
            targetClass.classList.remove(addClassName);
        }
    }

    window.addEventListener('scroll', scrollWindow);
}

function toUp() {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 700) {
            $('#toup').show();
        } else {
            $('#toup').hide();
        }
    });

    $(document).on('click', '#toup', function () {
        $('html, body').animate({scrollTop: 0}, 500);
    });

}