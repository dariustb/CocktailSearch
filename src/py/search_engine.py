''' search.py - search and query-related module '''

# pylint: disable = C0103

from .database import Database

class SearchEngine:
    ''' Intermediary between user interaction and sqlite module '''
    def __init__(self, db:Database):
        ''' SearchEngine attributes '''
        self.d_db = db

    def get_search_query(self) -> str:
        ''' Returns user's query search '''
        query = input('Enter cocktail to search: ')
        return query.title()

    def get_all_cocktails(self) -> list:
        ''' Returns all drinks in database '''
        # command = 'SELECT * from cocktails ORDER BY base, name'
        command = 'SELECT * FROM cocktails WHERE id >= 1 AND id <=10'
        return self.d_db.sql_command(command)

    def get_all_bases(self) -> list:
        ''' Returns all bases in database '''
        # command = 'SELECT DISTINCT base from cocktails ORDER BY base'
        command = 'SELECT DISTINCT base from cocktails WHERE id >= 1 AND id <=10 ORDER BY base'
        return self.d_db.sql_command(command)

    def search_cocktail(self, cocktail_name: str):
        ''' Makes a search through a given database file '''
        command = f'SELECT * FROM cocktails WHERE name LIKE \'%{cocktail_name}%\''
        return self.d_db.sql_command(command)[0]
