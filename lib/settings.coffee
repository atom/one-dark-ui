module.exports =
  config:
    layoutMode:
      title: 'Layout Mode'
      description: 'In auto mode, the UI and font size will automatically change based on the window size.'
      type: 'string'
      default: 'auto'
      enum: [
        'compact',
        'auto',
        'spacious',
      ]

  activate: (state) ->
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
