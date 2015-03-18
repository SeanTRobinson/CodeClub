require "./lib/StringReverse/StringReverser.rb"
require "test/unit"

class TestReverser < Test::Unit::TestCase

  # reverse

    def test_reverse_reverses_MultiWordString
        reverser = StringReverser.new()
        input = "First Test"
        expected = "tseT tsriF"
        assert_equal(expected, reverser.reverse(input))
    end

    def test_reverse_reverses_SingleLowercaseWord()
        reverser = StringReverser.new()
        input = "test"
        expected=  "tset"
        assert_equal(expected, reverser.reverse(input))
    end

    def test_reverse_reverses_SingleUppercaseWord()
        reverser = StringReverser.new()
        input = "TEST"
        expected=  "TSET"
        assert_equal(expected, reverser.reverse(input))
    end

    def test_reverse_returnsInput_ForEmptyString()
        reverser = StringReverser.new()
        input = ""
        expected=  ""
        assert_equal(expected, reverser.reverse(input))
    end

    # reverse_inline

    def test_reverseInline_reverses_MultiWordString
        reverser = StringReverser.new()
        input = "First Test"
        expected = "tseT tsriF"
        assert_equal(expected, reverser.reverse_inline(input))
    end

    def test_reverseInline_reverses_SingleLowercaseWord()
        reverser = StringReverser.new()
        input = "test"
        expected=  "tset"
        assert_equal(expected, reverser.reverse_inline(input))
    end

    def test_reverseInline_reverses_SingleUppercaseWord()
        reverser = StringReverser.new()
        input = "TEST"
        expected=  "TSET"
        assert_equal(expected, reverser.reverse_inline(input))
    end

    def test_reverseInline_returnsInput_ForEmptyString()
        reverser = StringReverser.new()
        input = ""
        expected=  ""
        assert_equal(expected, reverser.reverse_inline(input))
    end

end
