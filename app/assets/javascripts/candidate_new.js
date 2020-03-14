$(function(){

  const buildFileField = (index)=> {
    const html = `<input placeholder="候補" class="sub_content" type="text"
                    name="question[candidates_attributes][0][sub_content]"
                    id="question_candidates_attributes_0_sub_content"
                    >`;
    return html;
  }

  let fileIndex = [1,2,3,4,5];

  $('.sub_content').change(function(e) {
    isChange = true;
    $('.more__sub--content').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  
});