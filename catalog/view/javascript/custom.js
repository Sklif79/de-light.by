$(document).ready(function () {
    setActiveNavPoint();
    classAfterScroll($('#menu').offset().top, '.header__navbar', 'fixed')
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