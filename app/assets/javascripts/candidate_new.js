$(function(){

  function buildFileField(index) {
    var html = `<input placeholder="候補" class="sub_content${index}" type="text"
                    name="question[sub_content${index}]"
                    id="question_sub_content${index}"
                    >
                  <div class="more__sub--content${index}"></div>`;
    return html;
  };

  var index = 1
  $('.sub_content1').change(function(e) {
    index += 1 
    $('.more__sub--content').append(buildFileField(index));
  });

  $(document).on("change", ".sub_content2", function(){
    index += 1
    $('.more__sub--content2').append(buildFileField(index));
  });

  $(document).on("change", ".sub_content3", function(){
    index += 1
    $('.more__sub--content3').append(buildFileField(index));
  });

  $(document).on("change", ".sub_content4", function(){
    index += 1
    $('.more__sub--content4').append(buildFileField(index));
  });

  $(document).on("change", ".sub_content5", function(){
    index += 1
    $('.more__sub--content5').append(buildFileField(index));
  });

  $(document).on("change", ".sub_content6", function(){
    index += 1
    $('.more__sub--content6').append(buildFileField(index));
  });

  $(document).on("change", ".sub_content7", function(){
    index += 1
    $('.more__sub--content7').append(buildFileField(index));
  });
});