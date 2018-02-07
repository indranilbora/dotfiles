module.exports = {
  config: {
    updateChannel: 'stable',

    fontSize: 15,

    fontFamily: 'Fira Code, Menlo, DejaVu Sans Mono, Consolas, Lucida Console, monospace',
    uiFontFamily: 'Fira Code, Menlo, DejaVu Sans Mono, Consolas, Lucida Console, monospace',
      
    padding: '',

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
    'hyperterm-atom-dark',
  ],

  localPlugins: []
};
