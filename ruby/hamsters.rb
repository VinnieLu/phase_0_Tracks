puts "What is hamster's name?"
hamster_name = gets.chomp.to_s

puts "How loud is the hamster (1-10)?"
hamster_volume = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp.to_s

puts "Is the hamster good for adoption?"
adoption = gets.chomp
  if adoption == "yes"
    adopt_Answer = true
  elsif adoption == "no"
    adopt_Answer = false
  end

puts "What is the hamster's age?"
age = gets.chomp.to_i
if age == ""
  age = "nil"
end

puts "This is the current hamster info. Our hamster is named #{hamster_name}, his loudness level is #{hamster_volume} / 10. His fur color is #{fur_color}. He is ready for adoption: #{adopt_Answer}. He is #{age} years old."