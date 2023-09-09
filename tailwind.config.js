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
      },
      backgroundImage: {
        'header-image': "url('https://images.pexels.com/photos/4667141/pexels-photo-4667141.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280&dpr=1')"
      }
    },
  },
  plugins: [],
}
