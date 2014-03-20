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
myPlayer.findSoundName = function (keyID) {
  var keyButton = $('*[data-id="' + keyID +'"]');
  return keyButton.data('sample');
};
myPlayer.playFromArray = function (sounds) {
  console.log(sounds);
  if (sounds.length > 0) {
    myPlayer.play(myPlayer.findSoundName(sounds[0].sample_id));
    if (sounds.length > 1) {
      var delay = sounds[1].played_at_millisecond - sounds[0].played_at_millisecond;
      sounds.splice(0,1);
      setTimeout( function () { myPlayer.playFromArray(sounds)}, delay);
    }
  }
}

myPlayer.playBack = function(sounds) {
  var x = 0;
  myPlayer.playFromArray(sounds);
};

myPlayer.newNotePressed = function(ev) {
  timeStamp = ev.timeStamp;
  var $button = $("#button_" + ev.which);
  if ($button.data() != undefined) {
    var sample = $button.data().sample;
    var sampleId = $button.data().id;
    myPlayer.play(sample);
    if(currentlyRecording) {
      $.post( "/sample_plays", { sample_play: { sample_id: sampleId, played_at_millisecond: timeStamp, song_id: songId } } );
    }
  }
}

$(document).keydown(myPlayer.newNotePressed);


myPlayer.setup = function() {
  // $('.playbutton').click(myPlayer.newNotePressed);
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
      $.get('/samples.json', function(data) {
          console.log(data);
          myPlayer.playBack(data);
      });
    return false;
  });

});



