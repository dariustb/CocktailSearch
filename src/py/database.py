''' database.py - Database-related class'''

import sqlite3

from . import constants as const

class Database:
    ''' Sqlite3 Database class '''
    def __init__(self):
        ''' Database attributes '''
        self.d_connection = sqlite3.connect(const.SQL_DB_PATH)
        self.d_cursor     = self.d_connection.cursor()
        print('Connected to the database')

    def close_connection(self) -> None:
        ''' End sql connection safely '''
        self.d_connection.close()

    def sql_command(self, command: str) -> list:
        ''' Run a sql command & returns fetched data '''
        self.d_cursor.execute(command)
        return self.d_cursor.fetchall()
