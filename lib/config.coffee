module.exports =

  apply: ->

    body = document.querySelector('html')

    setLayoutMode = (layoutMode) ->
      body.setAttribute('theme-one-dark-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'one-dark-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))

    setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))
