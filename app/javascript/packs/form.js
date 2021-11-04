

// ---------------- クリック時の挙動 -----------------

// hiddenタグを隠す（やや悪い・悪いクリック時のみ表示させる）
document.getElementById("hidden").style.display = "none";

//良い
document.getElementById("daily_record_condition_good").addEventListener("click", function(){
    document.getElementById("hidden").style.display = "none";
});

//やや悪い
document.getElementById("daily_record_condition_somewhat_bad").addEventListener("click", function(){
    document.getElementById("hidden").style.display = "block";
    
});

//悪い
document.getElementById("daily_record_condition_bad").addEventListener("click", function(){
    document.getElementById("hidden").style.display = "block";
});

// document.getElementById("condition").onclick = function() {
//     hidden.style.display = "block";
// }