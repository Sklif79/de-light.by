$(document).ready(function () {
    setActiveNavPoint();
    classAfterScroll($('#menu').offset().top, '.header__navbar', 'fixed');
    toUp();
    //feedbackFormSubmit();

    $('.fancybox').fancybox({
        //closeBtn: true,
        padding: 0,
        helpers: {
            overlay: {
                css: {
                    'background': 'rgba(0,0,0,0.65)'
                }
            }
        }
    });
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

function feedbackFormSubmit() {
    $('.form-feedback').submit(function (e) {
        e.preventDefault();

        var $message = $('<div />', {
            'class': 'popup__messages'
        }),
        self = $(this);

        $(this).addClass('loading');

        $.ajax({
            type: 'POST',
            url: $(this).attr('action'),
            data: $(this).serialize(),
            success: function (response) {
                var responseObj = JSON.parse(response);

                if (responseObj.success) {
                    self.append($message.html(responseObj.success));
                } else if (responseObj.error) {
                    self.append($message.html(responseObj.error));
                }

                self.removeClass('loading');

                setTimeout(function () {
                   $message.remove();
                }, 3000);
            }
        });
    });
}