''' database.py - Database-related class'''

import os
import sqlite3

SCRIPT_PATH: str = 'src/sql/recipes.sql'
DB_PATH:     str = 'src/sql/recipes.db'

class Database:
    ''' Sqlite3 Database class '''
    def __init__(self):
        ''' Database attributes '''
        self.d_connection:  sqlite3.Connection = None
        self.d_cursor:      sqlite3.Cursor     = None

    def build_database(self) -> None:
        ''' Executes .sql file to create/populate .db file '''
        if os.path.isfile(DB_PATH):
            return
        self.open()
        with open(SCRIPT_PATH, 'r', encoding='utf-8') as file_stream:
            script = file_stream.read()
            self.d_cursor.executescript(script)
        self.close()

    def open(self) -> None:
        ''' Start sql connection safely '''
        self.d_connection             = sqlite3.connect(DB_PATH)
        self.d_connection.row_factory = sqlite3.Row
        self.d_cursor                 = self.d_connection.cursor()

    def close(self) -> None:
        ''' End sql connection safely '''
        self.d_connection.close()

    def sql_command(self, command: str) -> list:
        ''' Run a sql command & returns fetched data '''
        return self.d_cursor.execute(command).fetchall()
