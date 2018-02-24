module.exports = {
  config: {
    updateChannel: 'stable',
    cursorColor: '#c7c7c7',
    cursorShape: 'UNDERLINE',
    cursorBlink: false,

    fontSize: 15,

    fontFamily: 'Menlo, DejaVu Sans Mono, Consolas, Lucida Console, monospace',
    uiFontFamily: 'Menlo, DejaVu Sans Mono, Consolas, Lucida Console, monospace',

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: true

  },

  plugins: [
    'hyper-snazzy', 'hypercwd', 'hyper-hide-title',
  ],

  localPlugins: []
};
