design_ingredients = {}

puts "What is your name?"
user_name = gets.chomp
design_ingredients[:name] = user_name

puts "What is your age?"
user_age = gets.chomp
design_ingredients[:age] = user_age

puts "How many children?"
user_children = gets.chomp
design_ingredients[:number_children] = user_children

puts "What is your favorite decor theme?"
user_decor = gets.chomp
design_ingredients[:decor_theme] = user_decor

puts "Are you working?"
user_working = gets.chomp
design_ingredients[:working?] = user_working

puts design_ingredients

puts "Any other item you would like to update?"
item_name = gets.chomp
puts "What would you like to update it to?"
update_to = gets.chomp
design_ingredients[item_name.to_sym] = update_to

puts design_ingredients