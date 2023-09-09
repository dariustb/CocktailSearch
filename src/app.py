''' app.py - Driver file for the application '''

from flask            import Flask
from flask            import render_template
from py.database      import Database
from py.search_engine import SearchEngine
from py               import constants as const

if __name__ == '__main__':
    # Set up database
    Recipe_db = Database()
    Search    = SearchEngine(Recipe_db)

    # Set up Flask server
    app = Flask(__name__)

    # Set up routes
    @app.route('/')
    def index():
        ''' Home page route'''
        return render_template('index.html', background=const.BACKGROUND_VIDEO)

    @app.route('/catalogue')
    def catalogue():
        ''' Catalogue page route '''
        Recipe_db.open()
        drink_list = Search.get_all_cocktails()
        base_list  = Search.get_all_bases()
        Recipe_db.close()
        return render_template('catalogue.html',
                               drink_list=drink_list,
                               base_list=base_list)

    @app.route('/recipe/<drink_name>')
    def recipe(drink_name):
        ''' Recipe page route '''
        Recipe_db.open()
        drink = Search.search_cocktail(drink_name.replace('-', ' '))
        Recipe_db.close()
        return render_template('recipe.html', drink_name=drink_name, drink=drink)

    # Run flask app
    app.run(debug=True)
