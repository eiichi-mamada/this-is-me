window.addEventListener("load", function(){
  $(function(){
    $('.header__right--menu__icon').hover(function(){
      $('.header__right--menu__file').css('display', 'block')
    },function(){
      $('.header__right--menu__file').css('display', '')
    });

    $('.header__right--menu__file').hover(function(){
      $('.header__right--menu__file').css('display', 'block')
    },function(){
      $('.header__right--menu__file').css('display', '')
    });

    $('.color-red01').hover(function(){
      $('.color-red01').css('color', 'red')
    },function(){
      $('.color-red01').css('color', '')
    });

    $('.color-red02').hover(function(){
      $('.color-red02').css('color', 'red')
    },function(){
      $('.color-red02').css('color', '')
    });

    ;$('.color-red03').hover(function(){
      $('.color-red03').css('color', 'red')
    },function(){
      $('.color-red03').css('color', '')
    });

    $('.color-red04').hover(function(){
      $('.color-red04').css('color', 'red')
    },function(){
      $('.color-red04').css('color', '')
    });
  });
});
