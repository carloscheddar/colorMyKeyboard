$ ->
  $('.base-keys').on 'click', (e) ->
    console.log e.target.className
    if e.target.className != 'base-keys'
      $( '.base' ).alterClass( '*-keys', e.target.className + '-keys')

  $('.modifiers-keys').on 'click', (e) ->
    if e.target.className != 'modifiers-keys'
      $('.mod').alterClass( '*-keys', e.target.className + '-keys')