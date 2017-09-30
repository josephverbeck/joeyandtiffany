/*
 *
 * Project Name: Manten - Style 9
 * URL: http://templatesuper.com
 * Version: 1.1
 *
 * Author: Adnan
 *
 */

 // HEADER SLIDER

$(window).load(function() {
    $('.flexslider').flexslider({
        animation: "slide",
        controlNav: true,
        directionNav: true
    });
});

// SMOOTHSCROLL
$(document).ready(function() {
    $('a[href^="#"]').on('click', function(e) {
        e.preventDefault();

        var target = this.hash;
        var $target = $(target);

        $('html, body').stop().animate({
            'scrollTop': $target.offset().top
        }, 900, 'swing');

        $('.navbar-collapse.collapse').removeClass("show");
    });
});

/* Thanks to CSS Tricks for pointing out this bit of jQuery
  http://css-tricks.com/equal-height-blocks-in-rows/
  It's been modified into a function called at page load and then each time the page is resized. One large modification was to remove the set height before each new calculation. */

equalheight = function(container) {

    var currentTallest = 0,
        currentRowStart = 0,
        rowDivs = new Array(),
        $el,
        topPosition = 0;
    $(container).each(function() {

        $el = $(this);
        $($el).height('auto')
        topPostion = $el.position().top;

        if (currentRowStart != topPostion) {
            for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
            rowDivs.length = 0; // empty the array
            currentRowStart = topPostion;
            currentTallest = $el.height();
            rowDivs.push($el);
        } else {
            rowDivs.push($el);
            currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
        }
        for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
            rowDivs[currentDiv].height(currentTallest);
        }
    });
}

$(window).load(function() {
    equalheight('.accomm-09 .box');
});

$(window).resize(function() {
    equalheight('.accomm-09 .box');
});

// SAVE TO CSV
$(function() {
    $(".submit").click(function() {
        var name = $("#name").val();
        var dataString = 'name=' + name;

        if (name == '') {
            $('.alert-danger').fadeIn().show();
        } else {
            $.ajax({
                type: "POST",
                url: "rsvp.php",
                data: dataString,
                success: function() {
                    $('.alert-danger').fadeIn().hide();
                    $('.alert-success').fadeIn().fadeOut(3000);
                }
            });
        }
        return false;
    });
});

// SCROLLREVEAL
window.sr = ScrollReveal();
sr.reveal('#home .box h1, #home .box h6', {
    duration: 1500,
    reset: true
}, 50);
sr.reveal('#story .col-md-12, #story .box', {
    duration: 1500,
    reset: true
}, 50);
sr.reveal('#wedding .col-md-12', {
    duration: 1500,
    reset: true
}, 50);
sr.reveal('#accomm .col-md-12, #accomm .box img', {
    duration: 1500,
    reset: true
}, 50);
sr.reveal('#registry .col-md-12, #registry .col-md-6', {
    duration: 2000,
    reset: true
}, 200);
sr.reveal('#rsvp h3, #rsvp .container', {
    duration: 1500,
    reset: true
}, 50);
