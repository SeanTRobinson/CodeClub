from nose.tools import *
from string_split.splitter import Splitter

def test_splitSplitsTwoCamelCaseWords():
    splitter = Splitter()
    input = "ElwynLikesCheese"
    expected_output = "Elwyn likes cheese"

    output = splitter.split(input)
    assert_equal(expected_output, output)

def test_splitSplitsWordFromNumbers():
    splitter = Splitter()
    input = "ElwynAte10CheeseBiscuits"
    expected_output = "Elwyn ate 10 cheese biscuits"

    output = splitter.split(input)
    assert_equal(expected_output, output)

def test_splitSplitsOnConsecutiveUppercase():
    splitter = Splitter()
    input = "ElwynLikesACheese"
    expected_output = "Elwyn likes a cheese"

    output = splitter.split(input)
    assert_equal(expected_output, output)

def test_splitOnlySplitsConsecutiveUppercaseIfFollowedByLowercase():
    splitter = Splitter()
    input = "ElwynLikesTUCCheeseBiscuits"
    expected_output = "Elwyn likes TUC cheese biscuits"

    output = splitter.split(input)
    assert_equal(expected_output, output)
