module.exports =

  apply: ->

    root = document.documentElement


    # Font Size
    setFontSize = (currentFontSize) ->
      if 10 <= currentFontSize <= 20
        root.style.fontSize = currentFontSize + 'px'
      else if currentFontSize is ''
        root.style.fontSize = ''

    atom.config.onDidChange 'one-dark-ui.fontSize', ->
      setFontSize(atom.config.get('one-dark-ui.fontSize'))

    setFontSize(atom.config.get('one-dark-ui.fontSize'))


    # Layout Mode
    setLayoutMode = (layoutMode) ->
      root.setAttribute('theme-one-dark-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'one-dark-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))

    setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))
