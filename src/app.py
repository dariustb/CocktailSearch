''' app.py - Driver file for the application '''

from flask            import Flask
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
        return 'Home page'

    @app.route('/featured')
    def featured():
        ''' Featured page route '''
        return 'Cocktail of the day'

    @app.route('/catalogue')
    def catalogue():
        ''' Catalogue page route '''
        return 'Cocktail catalogue'

    @app.route('/contact')
    def contact():
        ''' Contact page route '''
        return 'Contact page'

    # Run flask app
    app.run(debug=True)

    # Tear down functions
    Recipe_db.close_connection()
