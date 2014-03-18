// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require soundmanager2
//= require_tree .

var myPlayer = myPlayer || {};
myPlayer.play = function(id) {
  var sound = myPlayer.getSound(id);
  sound.play();
};

myPlayer.getSound = function(sound) {
  var sound = soundManager.createSound({
    id: sound,
    url: '/sounds/' + sound + '.wav'
  });
  return sound;
};

$(document).keydown(function(ev) {
  console.log(ev.which)
  var $button = $("#button_" + ev.which)
  var data = $button.data().sample;
  console.log(data)
  myPlayer.play(data);
});


myPlayer.setup = function() {
  $('.playbutton').click(function(ev) {
    console.log($(this).attr('data-sample'))
    myPlayer.play($(this).attr('data-sample'));
  });
};

$(document).ready(function() {
  soundManager.setup({
    url: '/swf/', preferFlash: true,
    onready: myPlayer.setup
  });
});



