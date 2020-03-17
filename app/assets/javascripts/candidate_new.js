$(function(){

  function buildFileField(index) {
    var html = `<input placeholder="候補" class="sub_content${index}" type="text"
                    name="question[sub_content${index}]""
                    id="question_sub_content${index}"
                    >
                  <div class="more__sub--content${index}"></div>`;
    return html;
  };

  var index = 1
  $('.sub_content1').change(function(e) {
    isChange = true;
    index += 1 
    $('.more__sub--content').append(buildFileField(index));
  });

  $('.sub_content2').change(function(e) {
    console.log("hello");
    isChange = true;
    index += 2
    $('.more__sub--content2').append(buildFileField(index));
  });

  $('.sub_content3').change(function(e) {
    isChange = true;
    $('.more__sub--content').append(buildFileField);
  });

  $('.sub_content4').change(function(e) {
    isChange = true;
    $('.more__sub--content').append(buildFileField);
  });

  $('.sub_content5').change(function(e) {
    isChange = true;
    $('.more__sub--content').append(buildFileField);
  });

  $('.sub_content6').change(function(e) {
    isChange = true;
    $('.more__sub--content').append(buildFileField);
  });

  $('.sub_content7').change(function(e) {
    isChange = true;
    $('.more__sub--content').append(buildFileField);
  });

  
});