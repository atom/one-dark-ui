module.exports =
  config:
    layoutMode:
      title: 'Layout Mode'
      description: 'In Auto mode, the UI and font size will automatically change based on the window size.'
      type: 'string'
      default: 'Auto'
      enum: [
        'Compact',
        'Auto',
        'Spacious',
      ]

  activate: (state) ->
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
