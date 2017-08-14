def practice
  puts "This is to find the average."
  yield(10, 20)
  puts "The average is found."
end

practice { |x, y| puts ((x + y) / 2) }


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

array = [1, 2, 3, 4, 5, 6, 7, 8]
hash = {
  :one => 1,
  :two => 2,
  :three => 3,
  :four => 4,
  :five => 5,
  :six => 6,
  :seven => 7,
  :eight => 8
}

p array.delete_if {|x| x < 5}
p hash.delete_if {|x, y| y < 5}

p array.select { |x| x.even? }
p hash.select { |x, y| y.even?}

p array.keep_if { |x| x.even? }
p hash.keep_if { |x, y| y.even? }

p array.drop_while {|x| x < 5 }
p hash.drop_while { |x, y| y < 5 }