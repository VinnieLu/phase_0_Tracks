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


array_letters = ["a", "b", "c", "d", "e"]
array_numbers = [1, 2, 3, 4, 5]
hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

p array_numbers.delete_if {|x| x <3 }
p array_numbers

