module.exports =

  apply: ->

    root = document.documentElement


    # Font Size
    setFontSize = (fontSize) ->
      _fontSize = atom.config.get('one-dark-ui.fontSize')
      if _fontSize >= 10 and _fontSize <= 20
        root.style.fontSize = atom.config.get('one-dark-ui.fontSize') + 'px'
      else if _fontSize is ''
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
