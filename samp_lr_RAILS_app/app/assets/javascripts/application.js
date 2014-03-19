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
//= require soundmanager
//= require_tree .

var myPlayer = myPlayer || {},
  currentlyRecording = false,
  songId;

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
  timeStamp = ev.timeStamp;
  var $button = $("#button_" + ev.which);
  if ($button.data() != undefined) {
    var sample = $button.data().sample;
    var sampleId = $button.data().id;
    myPlayer.play(sample);
    if(currentlyRecording) {
      $.post( "/sample_plays", { sample_play: { sample_id: sampleId, played_at_millisecond: timeStamp } } );
    }
  }
});


myPlayer.setup = function() {
  $('.playbutton').click(function(ev) {
    console.log($(this).attr('data-sample'))
    myPlayer.play($(this).attr('data-sample'));
  });
};

$(document).ready(function() {
  soundManager.setup({
    url: window.soundManager.url, preferFlash: true,
    onready: myPlayer.setup
  });

  $('#record_song').click(function(ev) {
    ev.preventDefault();
    $.post('/songs.json', function(data) {
      songId = data.id;
      currentlyRecording = true;
      $('#record_song').hide();
      $('#recording').show();
    });
    return false; // does the same as prevent default
  });

  $('#recording').click(function(ev) {
    ev.preventDefault();
    $('#recording').hide();
    $('#record_song').show();
    return false;
  });

  $("#playback-button").click(function(ev) {
    ev.preventDefault();

    return false;
  });

});



