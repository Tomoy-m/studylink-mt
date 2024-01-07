//時間表示
setInterval(function(){
  var h = new Date().getHours();
  var min = new Date().getMinutes();
  var s = new Date().getSeconds();
  $("#realtime").html( h + ":" + min + ":" + s);
},1000);

//日付
setInterval(function(){
  var y = new Date().getFullYear();
  var m = new Date().getMonth() + 1;
  var d = new Date().getDate();
  var w = new Date().getDay();
  var wd = ["日","月","火","水","木","金","土"];
  var youbi = wd[w];
  $("#days").html(y + "年" + m + "月" + d + "日" + "（" + youbi + ")");
},1000);
// 参考サイト https://web.skipjack.tokyo/javascript/jquery_date/