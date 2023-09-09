''' database.py - Database-related class'''

import sqlite3

class Database:
    ''' Sqlite3 Database class '''
    def __init__(self):
        ''' Database attributes '''
        self.d_connection = None
        self.d_cursor     = None
        print('Connected to the database')

    def open(self) -> None:
        ''' Start sql connection safely '''
        self.d_connection             = sqlite3.connect('src/sql/recipes.db')
        self.d_connection.row_factory = sqlite3.Row
        self.d_cursor                 = self.d_connection.cursor()

    def close(self) -> None:
        ''' End sql connection safely '''
        self.d_connection.close()

    def sql_command(self, command: str) -> list:
        ''' Run a sql command & returns fetched data '''
        return self.d_cursor.execute(command).fetchall()
