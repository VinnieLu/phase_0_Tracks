#Ask the user the following questions, and then gets#.chomp to get the user to input the answers:
#  --What is your name?
#  --What is your age?
#  --Where are you from?
#  --How many children do you have?
#  --What is your favorite decor theme?
#  --Do you have any experience?
#  --Where did you work before this?
#  --How would you contribute to the company?
#Then create a hash with the question identifier as a key and the #answer variable as a value.
#Then print the hash back out to screen using "puts <#HASH NAME>"

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

form = {
  :name => name,
  :age => age,
  :from => from,
  :children => children,
  :decor_theme => decor,
  :experience => experience,
  :previous_work => previous_work,
  :how_contribute => how_contribute
}

puts form

#Now ask the user "What key/value pair do you want #to update? If one, enter the key name, if none, #type 'none'. If the answer is 'none', print the #hash and exit. If they input a key, ask them "#What is your value?". Then get their answer with gets.chomp and store the answer in a variable. Then call the form hash, with their key converted to symbol with .to_sym, and make it equal to their new value. Then print the form.

puts "What key/value pair do you want to update? If one, enter the key name, if none, type 'none'."
key = gets.chomp

  if key === "none"
    puts form
  else
    puts "What is your value?"
    new_val = gets.chomp
    form[key.to_sym] = new_val
    puts form
  end