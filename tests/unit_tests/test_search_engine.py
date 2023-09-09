''' test_search_engine.py - unit tests for search_engine.py '''

# pylint: disable=E0401, W0621

import pytest

from src.py.search_engine import SearchEngine

@pytest.fixture
def search_eng():
    ''' search engine fixture '''
    return SearchEngine(None)
