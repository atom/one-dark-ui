module.exports =
  config:
    themeColor:
      title: 'Hue'
      type: 'color'
      default: 'hsl(220, 100%, 50%)'
    themeAdjustSaturation:
      title: 'Saturation'
      type: 'string'
      default: '0'
      enum: [
        '+80%',
        '+40%',
        '+20%',
        '0',
        '-10%',
        '-100%',
      ]
    themeAdjustContrast:
      title: 'Contrast'
      type: 'string'
      default: '0'
      enum: [
        '+80%',
        '+40%',
        '+20%',
        '0',
        '-20%',
        '-40%',
      ]

  activate: ->
