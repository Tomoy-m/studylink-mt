$(document).on('turbolinks:load', function() {
    $('.hamburger').on('click', function(){
        $(this).toggleClass('active');
        // $('.icon').toggleClass('close');
        $('.sm').slideToggle();
        });

}); 