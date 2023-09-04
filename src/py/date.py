''' date.py - Date-related functions '''

from datetime import date

def get_date():
    ''' Returns string with today's date '''
    today = date.today()
    return today.strftime('%d %b %Y')
