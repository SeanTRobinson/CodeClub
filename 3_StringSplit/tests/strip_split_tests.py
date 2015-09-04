from nose.tools import *
from string_split.splitter import Splitter


def test_splitSplitsTwoCamelCaseWords():
    splitter = Splitter()
    input = "ElwynLikesCheese"
    expected_output = "Elwyn likes cheese"

    output = splitter.split_string_into_sentence(input)
    assert_equal(expected_output, output)


def test_splitSplitsWordFromNumbers():
    splitter = Splitter()
    input = "ElwynAte10CheeseBiscuits"
    expected_output = "Elwyn ate 10 cheese biscuits"

    output = splitter.split_string_into_sentence(input)
    assert_equal(expected_output, output)


def test_splitSplitsOnConsecutiveUppercase():
    splitter = Splitter()
    input = "ElwynLikesACheese"
    expected_output = "Elwyn likes a cheese"

    output = splitter.split_string_into_sentence(input)
    assert_equal(expected_output, output)


def test_splitOnlySplitsConsecutiveUppercaseIfFollowedByLowercase():
    splitter = Splitter()
    input = "ElwynLikesTUCCheeseBiscuits"
    expected_output = "Elwyn likes TUC cheese biscuits"

    output = splitter.split_string_into_sentence(input)
    assert_equal(expected_output, output)

def test_splitMaintainsAcronymsAtEndOfString():
    splitter = Splitter()
    input = "ElwynLikesABiscuitMadeByTUC"
    expected_output = "Elwyn likes a biscuit made by TUC"

    output = splitter.split_string_into_sentence(input)
    assert_equal(expected_output, output)

def test_allCases():
    splitter = Splitter()
    input = "ElwynALikesA10TUCCheeseBiscuitsTUC"
    expected_output = "Elwyn a likes a 10 TUC cheese biscuits TUC"

    output = splitter.split_string_into_sentence(input)
    assert_equal(expected_output, output)