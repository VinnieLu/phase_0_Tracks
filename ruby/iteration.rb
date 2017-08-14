#def practice
#  puts "This is to find the average."
#  yield(10, 20)
#  puts "The average is found."
#end
#
#practice { |x, y| puts ((x + y) / 2) }


array = ["fork", "knife", "spoon", "chopstick"]
hash = {
  :fork => 5,
  :knife => 7,
  :spoon => 11,
  :chopstick => 6
}

puts array
array.each do |parameter|
  p parameter
end
puts array

puts hash
hash.each do |key, value|
  p "There are #{value} #{key}s in the drawer."
end
puts hash

puts array
array.map! do |parameter|
  p parameter + "!"
end
puts array
























#array = ["a", "b", "c", "d", "e"]
#hash = {
#  1 => "one",
#  2 => "two",
#  3 => "three",
#  4 => "four",
#  5 => "five"
#}
#
#p array
#array.each do |hello|
#  p "my letter is #{hello}"
#end
#p array
#
#array.map! do |hello|
#  p hello + " world"
#end
#
#p array
#
#p hash
#hash.each do |digit, word|
#  p "this #{digit} is written as {word}"
#end
#p hash


#array_letters = ["a", "b", "c", "d", "e"]
#array_numbers = [1, 2, 3, 4, 5]
#hash = {
#  1 => "one",
#  2 => "two",
#  3 => "three",
#  4 => "four",
#  5 => "five"
#}
#
#p array_numbers.delete_if {|x| x <3 }
#p array_numbers
#
#