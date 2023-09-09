''' app.py - Driver file for the application '''

from flask            import Flask, request, render_template
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

    @app.route('/catalogue', methods=['GET', 'POST'])
    def catalogue():
        ''' Catalogue page route '''
        Recipe_db.open()
        drink_list = Search.get_all_elements()
        base_list  = Search.get_all_bases()
        if request.method == 'POST':
            query = request.form.get('search')
            drink_list = Search.search_similar(query)
            base_list  = Search.search_similar_bases(query)
        Recipe_db.close()
        return render_template('catalogue.html', drink_list=drink_list, base_list=base_list)

    @app.route('/recipe/<drink_name>')
    def recipe(drink_name):
        ''' Recipe page route '''
        Recipe_db.open()
        drink = Search.search_exact(drink_name.replace('-', ' '))
        Recipe_db.close()
        return render_template('recipe.html', drink_name=drink_name, drink=drink)

    # Run flask app
    app.run(debug=True)
