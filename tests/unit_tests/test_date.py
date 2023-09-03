''' test_date.py - unit tests for date.py '''

# pylint: disable=E0401, W0621

from src.py import date

def test_get_date_is_string():
    ''' tests get_date function '''
    assert isinstance(date.get_date(), str)
