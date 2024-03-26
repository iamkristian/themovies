const tailwind_theme = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Poppins', ...tailwind_theme.fontFamily.sans],
      },
    },
  },
  plugins: [require('@tailwindcss/typography'), require("daisyui")],
  daisyui: {
    themes: ["cupcake", "dark"],
  },
}
