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

    def search_cocktail(self, cocktail_name: str) -> list:
        ''' Makes a search through a given database file '''
        command = f'SELECT * FROM cocktails WHERE name LIKE \'%{cocktail_name}%\''
        return self.d_db.sql_command(command)
