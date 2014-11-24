$(function() {
  var colors, randomize;
  colors = ["black", "orange", "green", "red", "blue", "grey", "pink", "purple", "white", "yellow"];
  randomize = function() {
    $('.base').alterClass('*-keys', colors[Math.floor(Math.random() * 10)] + '-keys');
    return $('.mod').alterClass('*-keys', colors[Math.floor(Math.random() * 10)] + '-keys');
  };
  randomize();
  return $('.key-color').on('click', function(e) {
    if ($('#keys-toggle').prop('checked') === true) {
      $('.base').alterClass('*-keys', e.target.className + '-keys');
      return;
    }
    return $('.mod').alterClass('*-keys', e.target.className + '-keys');
  });
});
