require "./StringReverse/StringReverser.rb"

if ARGV.length < 1 then
  puts "\nString Reverser:"
  puts "________________"
  puts "ruby <string to reverse 1> <string to reverse 2> ...\n"
end

ARGV.each do |arg|
    reverser = StringReverser.new()
    puts "Reversing " + arg + " --> '" + reverser.reverse(arg) + "'"
end
