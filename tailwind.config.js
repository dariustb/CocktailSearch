/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {
      colors: {
        'cs-white':  '#fffcf2',
        'cs-beige':  '#ccc5b9',
        'cs-brown':  '#403d39',
        'cs-black':  '#252422',
        'cs-orange': '#eb5e28',
      },
      fontFamily: {
        'judson': ['Judson', 'serif'],
        'julius': ['Julius Sans One', 'sans serif'],
        'open':   ['Open Sans', 'sans serif']
      }
    },
  },
  plugins: [],
}
