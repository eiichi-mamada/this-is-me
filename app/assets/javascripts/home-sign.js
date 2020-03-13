window.addEventListener("load", function(){
  $(function(){
    $('.main-text__left--icon').on('click', function(){
      $('.main-text__left--past-bar').fadeIn(1000)
    });
    $('.times01').on('click', function(){
      $('.main-text__left--past-bar').fadeOut(1000)
    });

    $('.main-text__center--icon').on('click', function(){
      $('.main-text__center--present-bar').fadeIn(1000)
    });
    $('.times02').on('click', function(){
      $('.main-text__center--present-bar').fadeOut(1000)
    });

    $('.main-text__right--icon').on('click', function(){
      $('.main-text__right--future-bar').fadeIn(1000)
    });
    $('.times03').on('click', function(){
      $('.main-text__right--future-bar').fadeOut(1000)
    });
  });
});
