
puts "How many employees will be processed?"
employees = gets.chomp

i = 0
while i < employees.to_i do

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

  puts "Please name any allergies. Type 'done' when finished."
  allergy = gets.chomp
  until allergy === "done"
    allergy = gets.chomp
    if allergy === "sunshine"
      puts "Probably a vampire."
    end
  end

  if ((2017 - birth_Year.to_i) == age) && ( garlic_Bread == "y" || health_Insurance == "y")
    puts "Probably not a vampire."
  elsif ((2017 - birth_Year.to_i) != age) && ( garlic_Bread == "n" || health_Insurance == "n")
    puts "Probably a vampire."
  elsif ((2017 - birth_Year.to_i) != age) && ( garlic_Bread == "n" && health_Insurance == "n")
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || "Tu Fang"
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
    end
i += 1
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."