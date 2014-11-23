$ ->
  # Store our colors in colors array
  colors = ["black","orange","green","red","blue","grey","pink","purple","white","yellow"]

  # Randomizes keycap colors
  randomize = ->
    $( '.base' ).alterClass( '*-keys', colors[Math.floor((Math.random() * 10))] + '-keys')
    $( '.mod' ).alterClass( '*-keys', colors[Math.floor((Math.random() * 10))]+ '-keys')

  # Call randomize when app starts
  randomize()

  # Click event that checks the toggle and changes mod or base keys
  $('.key-color').on 'click', (e) ->
    if $('#keys-toggle').prop('checked') == true
      $( '.base' ).alterClass( '*-keys', e.target.className + '-keys')
      return
    $( '.mod' ).alterClass( '*-keys', e.target.className + '-keys')
