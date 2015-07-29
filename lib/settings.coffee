
# Theme settings
# -----------------------

root = document.documentElement

module.exports =
  config: require('./config').config

  activate: (state) ->
    # Handle settings changes
    atom.config.onDidChange 'one-dark-ui.fontSize', ->
      setFontSize(atom.config.get('one-dark-ui.fontSize'))
    atom.config.onDidChange 'one-dark-ui.layoutMode', ->
      setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))

    # Initialize
    setFontSize(atom.config.get('one-dark-ui.fontSize'))
    setLayoutMode(atom.config.get('one-dark-ui.layoutMode'))

  deactivate: ->
    unsetFontSize()
    unsetLayoutMode()


# Font Size -----------------------
setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = currentFontSize + 'px'
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''


# Layout Mode -----------------------
setLayoutMode = (layoutMode) ->
  root.setAttribute('theme-one-dark-ui-layoutmode', layoutMode.toLowerCase())

unsetLayoutMode = ->
  root.removeAttribute('theme-one-dark-ui-layoutmode')
