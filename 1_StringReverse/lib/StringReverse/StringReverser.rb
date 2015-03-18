class String
  def each_char
    self.split("").each { |char| yield char }
  end
end

class StringReverser

    def initialize()
    end

    def reverse(string)
        output_string = ""
        string.each_char { |char| output_string = char + output_string }
        return output_string
    end

    def reverse_inline(string)

        return string if string.length < 2

        length = string.length
        chars_to_swap = (length / 2)
        counter = 0
        reverse_counter = -1

        until counter >= chars_to_swap do
            temp_char = string[counter]
            string[counter] = string[reverse_counter]
            string[reverse_counter] = temp_char
            counter += 1
            reverse_counter -= 1
        end

        return string
    end

end
