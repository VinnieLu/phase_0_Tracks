puts "How many employees will be processed?"
employees = gets.chomp

i = 0
while i < employees do

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  birth_Year = gets.chomp

  puts "Do you want garlic bread? (y/n)"
  garlic_Bread = gets.chomp

  puts "Do you want health insurance? (y/n)"
  health_Insurance = gets.chomp

  if ((2017 - birth_Year.to_i) == age) && ( garlic_Bread == "y" || health_Insurance == "y")
    puts "Probably not a vampire."
  if ((2017 - birth_Year.to_i) != age) && ( garlic_Bread == "n" || health_Insurance == "n")
    puts "Probably a vampire."
  if ((2017 - birth_Year.to_i) != age) && ( garlic_Bread == "n" && health_Insurance == "n")
    puts "Almost certainly a vampire"
  if name == "Drake Cula" || "Tu Fang"
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
  end
i += 1
end