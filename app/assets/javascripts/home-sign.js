window.addEventListener("load", function(){
  $(function(){
    $('.main-text__center--icon__click').on('click', function(){
      $('.main-text__left--past-bar').fadeIn(1000)
    });
  });
  $(function(){
    $('.times').on('click', function(){
      $('.main-text__left--past-bar').fadeOut(1000)
    });
  });
});
