''' app.py - Driver file for the application '''

from flask            import Flask
from flask            import render_template
from py.database      import Database
from py.search_engine import SearchEngine

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
        return render_template('index.html')

    @app.route('/recipe')
    @app.route('/catalogue')
    def catalogue():
        ''' Catalogue page route '''
        return render_template('catalogue.html')

    @app.route('/recipe/<cocktail>')
    def recipe(cocktail):
        ''' Recipe page route '''
        return render_template('recipe.html', cocktail=cocktail)

    # Run flask app
    app.run(debug=True)

    # Tear down functions
    Recipe_db.close_connection()
