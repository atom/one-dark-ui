module.exports =

  apply: ->

    root = document.documentElement

    setLayoutMode = (layoutMode) ->
      root.setAttribute('theme-one-dark-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'one-dark-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))

    setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))
