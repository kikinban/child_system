


// --------------------------------------------------------------------
//                      daily_recordページのフォーム挙動
// --------------------------------------------------------------------


// ---------------- 体調ボタンのやや悪い・悪いクリック時の挙動 -----------------

// スライドダウン
$("#daily_record_note_condition_somewhat_bad,#daily_record_note_condition_bad").click(function(){
  //トグル
  $("#daily_hidden_detail").slideDown(1500);
});
// 良いをクリックするとスライドアップ
$("#daily_record_note_condition_good").click(function(){
  //トグル
  $("#daily_hidden_detail").slideUp(1500);
});

// ---------------- 排便クリック時、有りの場合の挙動 ----------------------------------------------------------------
$("#daily_record_note_defecation_yes").click(function(){
  //トグル
  $("#daily_stool_hidden").slideDown(1500);
});
// 無しをクリックするとスライドアップ
$("#daily_record_note_defecation_none").click(function(){
  //トグル
  $("#daily_stool_hidden").slideUp(1500);
});

// ---------------- 怪我クリック時、有りの場合の挙動 ----------------------------------------------------------------
$("#daily_record_note_injury_yes").click(function(){
  //トグル
  $("#daily_injury_hidden").slideDown(1500);
});
// 無しをクリックするとスライドアップ
$("#daily_record_note_injury_none").click(function(){
  //トグル
  $("#daily_injury_hidden").slideUp(1500);
});

// ---------------- (朝食)残食ボタンクリック時の挙動 ----------------------------------
// スライドダウン
$("#daily_record_note_morning_snack_remaining").click(function(){
  //トグル
  $("#morning_hidden").slideDown(1500);
});
// スライドアップ
$("#daily_record_note_morning_snack_complete").click(function(){
  //トグル
  $("#morning_hidden").slideUp(1500);
});

// ---------------- (昼食)残食ボタンクリック時の挙動 ----------------------------------
// スライドダウン
$("#daily_record_note_noon_remaining").click(function(){
  //トグル
  $("#noon_hidden").slideDown(1500);
});
// スライドアップ
$("#daily_record_note_noon_complete").click(function(){
  //トグル
  $("#noon_hidden").slideUp(1500);
});

// ---------------- (午後おやつ)残食ボタンクリック時の挙動 ----------------------------------
// スライドダウン
$("#daily_record_note_noon_snack_remaining").click(function(){
  //トグル
  $("#noon_snack_hidden").slideDown(1500);
});
// スライドアップ
$("#daily_record_note_noon_snack_complete").click(function(){
  //トグル
  $("#noon_snack_hidden").slideUp(1500);
});



// ------------------------------------------------------------
//              class_postページの挙動
// --------------------------------------------------------------

// ------------- サンプル画像から選択した画像をプレビュー画面として表示 ---------
// プレビュー1
$(function() {
  function readURL(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#preview_1').attr('src', e.target.result);
          }
          reader.readAsDataURL(input.files[0]);
      }
  }
  $("#class_post_image_1").change(function(){
      readURL(this);
      $(".p_image_1").hide("slow");

  });
});

// プレビュー2
$(function() {
  function readURL(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#preview_2').attr('src', e.target.result);
          }
      reader.readAsDataURL(input.files[0]);
  }
}
$("#class_post_image_2").change(function(){
  readURL(this);
  $(".p_image_2").hide("slow");

});
});

// プレビュー3
$(function() {
  function readURL(input) {
      if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
      $('#preview_3').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
      }
  }
  $("#class_post_image_3").change(function(){
      readURL(this);
      $(".p_image_3").hide("slow");
  });
});

// -----------------------------------------------------------
//          parent_noteページの挙動
// ----------------------------------------------------------

// -------------- 体調 やや悪い・悪いボタンクリック時の挙動 --------------

// スライドダウン
$("#parents_note_condition_somewhat_bad,#parents_note_condition_bad").click(function(){
  //トグル
  $("#hidden_detail").slideDown(1500);
});
// 良いをクリックするとスライドアップ
$("#parents_note_condition_good").click(function(){
  //トグル
  $("#hidden_detail").slideUp(1500);
});

// ---------------- 排便クリック時、有りの場合の挙動 ----------------------------------------------------------------
$("#parents_note_defecation_yes").click(function(){
  //トグル
  $("#stool_hidden").slideDown(1500);
});
// 無しをクリックするとスライドアップ
$("#parents_note_defecation_none").click(function(){
  //トグル
  $("#stool_hidden").slideUp(1500);
});

// ------------薬有りクリックの場合の挙動 --------------
$("#parents_note_medicine_yes").click(function(){
  //トグル
  $("#medicine_hidden").slideDown(1500);
});
// 無しをクリックするとスライドアップ
$("#parents_note_medicine_none").click(function(){
  //トグル
  $("#medicine_hidden").slideUp(1500);
});


// -----------------------------------------------------------
//          parent_noteページの挙動
// ----------------------------------------------------------

// イメージ画像をボタンで遷移出来るようにした(一つずつの表示)

// 競合しないように、対策
jQuery.noConflict();
jQuery(function() {
  $('#class_posts_show_images').slick({
    dots: true,
    slidesToShow: 1,
  });
});