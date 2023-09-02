''' test_search_engine.py - unit tests for search_engine.py '''

# pylint: disable = W0621

import pytest

from src.py.search_engine import SearchEngine

@pytest.fixture
def search_eng():
    ''' search engine fixture '''
    return SearchEngine(None)


def test_get_search_query(monkeypatch, search_eng):
    ''' tests get_search_query method '''
    # Given
    monkeypatch.setattr('builtins.input', lambda _: 'my query')

    # When
    query = search_eng.get_search_query()

    # Then
    assert isinstance(query, str)
    assert query == 'My Query'
