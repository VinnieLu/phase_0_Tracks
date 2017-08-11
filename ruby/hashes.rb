#Ask the user the following questions, and then gets#.chomp to get the user to input the answers:
#  --What is your name?
#  --What is your age?
#  --Where are you from?
#  --How many children do you have?
#  --What is your favorite decor theme?
#  --Do you have any experience?
#  --Where did you work before this?
#  --How would you contribute to the company?
#Then create a hash with the question as a key and #the answer as a value.
#Then print the hash back out to screen using puts <#HASH NAME>

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp

puts "Where are you from?"
from = gets.chomp

puts "How many children do you have?"
children = gets.chomp

puts "What is your favorite decor theme?"
decor = gets.chomp

puts "Do you have any experience?"
experience = gets.chomp

puts "Where did you work before this?"
previous_work = gets.chomp

puts "How would you contribute to the company?"
how_contribute = gets.chomp

#form {
#  :name => name,
#  :age => age,
#  :from => from,
#  :children => children,
#  :decor_theme => decor,
#  :experience => experience,
#  :previous_work => previous_work,
#  :how_contribute => how_contribute
#}
#
#puts form
