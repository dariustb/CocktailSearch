''' app.py - Driver file for the application '''

from py.database      import Database
from py.search_engine import SearchEngine

if __name__ == '__main__':
    Recipe_db = Database()
    Search    = SearchEngine(Recipe_db)

    query     = Search.get_search_query()
    response  = Search.search_cocktail(query)
    print(response)

    Recipe_db.close_connection()
