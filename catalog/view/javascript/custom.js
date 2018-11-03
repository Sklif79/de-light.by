$(document).ready(function () {
    setActiveNavPoint();
});


function setActiveNavPoint() {
    var path = location.pathname;

    $('.nav__lnk').each(function () {
        if (path === $(this).attr('href')) {
            $(this).addClass('active');
        }
    })
}