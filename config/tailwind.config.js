const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
    colors: {
      'current':'currentColor',
      'gunmetal':{900: '#242F40', 100:'#3B4D68', 200:'#97A9C4'},
      'gold':'#CCA43B',
      'platinum':'#E5E5E5',
      'white':'#FFFFFF',
      'jet':'#363636',
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
