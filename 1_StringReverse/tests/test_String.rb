require "./lib/StringReverse/StringReverser.rb"
require "test/unit"

class TestString < Test::Unit::TestCase

    def test_each_char_returnsEachChar_ForSingleWord
        test_string = "test"
        creation_string = ""

        test_string.each_char { |char| creation_string += char }

        assert_equal(test_string, creation_string)
    end

    def test_each_char_returnsEachChar_ForMultiWord
        test_string = "test two"
        creation_string = ""

        test_string.each_char { |char| creation_string += char }

        assert_equal(test_string, creation_string)
    end

    def test_each_char_returnsEmptyString_ForEmptyString
        test_string = ""
        creation_string = ""

        test_string.each_char { |char| creation_string += char }

        assert_equal(test_string, creation_string)
    end

end
