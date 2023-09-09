''' search.py - search and query-related module '''

# pylint: disable = C0103

from .database import Database

class SearchEngine:
    ''' Intermediary between user interaction and sqlite module '''
    def __init__(self, db:Database):
        ''' SearchEngine attributes '''
        self.d_db = db

    def get_all_elements(self) -> list:
        ''' Returns all drinks in database '''
        # command = 'SELECT * from cocktails ORDER BY base, name'
        command = 'SELECT * FROM cocktails WHERE id >= 1 AND id <=10'
        return self.d_db.sql_command(command)

    def get_all_bases(self) -> list:
        ''' Returns all bases in database '''
        # command = 'SELECT DISTINCT base from cocktails ORDER BY base'
        command = 'SELECT DISTINCT base from cocktails WHERE id >= 1 AND id <=10 ORDER BY base'
        return self.d_db.sql_command(command)

    def search_exact(self, query: str):
        ''' Makes an exact search in database'''
        command = f'SELECT * FROM cocktails WHERE name = \'{query.title()}\''
        return self.d_db.sql_command(command)[0]
    
    def search_similar(self, query: str) -> list:
        ''' Makes a LIKE search in database'''
        command = f'SELECT * FROM cocktails WHERE name LIKE \'%{query}%\' ORDER BY base'
        return self.d_db.sql_command(command)

    def search_similar_bases(self, query: str) -> list:
        ''' Makes a similar search & returns the bases of those results '''
        command = f'SELECT DISTINCT base from cocktails WHERE name LIKE \'%{query}%\' ORDER BY base'
        return self.d_db.sql_command(command)
