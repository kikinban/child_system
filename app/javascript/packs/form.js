

//= require jquery
//= require jquery_ujs

// ---------------- クリック時の挙動 -----------------

// スライドダウン（やや悪い）
$("#daily_record_condition_somewhat_bad,#daily_record_condition_bad").click(function(){
    //トグル
    $("#hidden").slideDown(1500);
});

$("#daily_record_condition_good").click(function(){
    //トグル
    $("#hidden").slideUp(1500);
});




//悪い
// document.getElementById("daily_record_condition_bad").addEventListener("click", function(){
//     document.getElementById("hidden").style.display = "block";
// });

// document.getElementById("condition").onclick = function() {
//     hidden.style.display = "block";
// }