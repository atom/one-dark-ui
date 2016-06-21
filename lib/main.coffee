root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'one-dark-ui.accentColor', (value) ->
      setAccentColor(value)

    atom.config.observe 'one-dark-ui.autoAccentColor', (value) ->
      setAutoAccentColor(value)

    atom.config.observe 'one-dark-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'one-dark-ui.layoutMode', (value) ->
      setLayoutMode(value)

    atom.config.observe 'one-dark-ui.tabSizing', (value) ->
      setTabSizing(value)

  deactivate: ->
    unsetAccentColor()
    unsetAutoAccentColor()
    unsetFontSize()
    unsetLayoutMode()
    unsetTabSizing()


# Accent Color -----------------------
setAccentColor = (accentColor) ->
  root.style.removeProperty('--accent-color') # prevents adding endless properties
  root.style.setProperty('--accent-color', accentColor.toHexString())

unsetAccentColor = ->
  root.style.removeProperty('--accent-color')

# Auto Accent Color -----------------------
setAutoAccentColor = (autoAccentColor) ->
  if autoAccentColor
    document.body.classList.add('use-auto-accent-color')
  else
    unsetAutoAccentColor()

unsetAutoAccentColor = ->
  document.body.classList.remove('use-auto-accent-color')



# Font Size -----------------------
setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''

# Layout Mode -----------------------
setLayoutMode = (layoutMode) ->
  root.setAttribute('theme-one-dark-ui-layoutmode', layoutMode.toLowerCase())

unsetLayoutMode = ->
  root.removeAttribute('theme-one-dark-ui-layoutmode')

# Tab Sizing -----------------------
setTabSizing = (tabSizing) ->
  root.setAttribute('theme-one-dark-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('theme-one-dark-ui-tabsizing')
