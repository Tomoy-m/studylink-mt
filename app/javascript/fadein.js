// 動きのきっかけの起点となるアニメーションの名前を定義
function fadeAnime(){
    // ふわっ
    $('.fadeLeftTrigger').each(function(){ //fadeLeftTriggerというクラス名が
      var elemPos = $(this).offset().top-1;//要素より、1px上の
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll >= elemPos - windowHeight){
      $(this).addClass('fadeLeft');// 画面内に入ったらfadeLeftというクラス名を追記
      }else{
      $(this).removeClass('fadeLeft');// 画面外に出たらfadeLeftというクラス名を外す
      }
      });
  
    $('.fadeRightTrigger').each(function(){ //fadeRightTriggerというクラス名が
      var elemPos = $(this).offset().top-1;//要素より、1px上の
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll >= elemPos - windowHeight){
      $(this).addClass('fadeRight');// 画面内に入ったらfadeRightというクラス名を追記
      }else{
      $(this).removeClass('fadeRight');// 画面外に出たらfadeRightというクラス名を外す
      }
      });
}

// 画面をスクロールをしたら動かしたい場合の記述
$(window).scroll(function (){
  fadeAnime();/* アニメーション用の関数を呼ぶ*/
});// ここまで画面をスクロールをしたら動かしたい場合の記述