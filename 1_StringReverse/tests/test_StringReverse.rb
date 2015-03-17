require "./lib/StringReverse/StringReverser.rb"
require "test/unit"

class TestReverser < Test::Unit::TestCase

    def test_reverse_reversesMultiWordString
        reverser = StringReverser.new()
        input = "First Test"
        expected = "tseT tsriF"
        assert_equal(expected, reverser.reverse(input))
    end

    def test_reverse_reversesSingleLowercaseWord()
        reverser = StringReverser.new()
        input = "test"
        expected=  "tset"
        assert_equal(expected, reverser.reverse(input))
    end

end
