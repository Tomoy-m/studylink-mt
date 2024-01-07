$(document).on('turbolinks:load', function() {
   $('.slider').slick({
    dots: true,
    speed: 500,
    // autoplaySpeed: 8000,
    arrows: true,
    // cssEase: 'linear',
    // autoplay: true,
    slidesToScroll: 1,
    adaptiveHeight: true,
    centerMode: true,
    centerPadding: '13%',
    swipe: true,
    infinite: true,
    responsive: [{
        breakpoint: 900,
        settings: {
            centerMode: false,
            variableWidth: false,
            slidesToShow: 1,
            arrows: false,
        }
    }]
  });
})

