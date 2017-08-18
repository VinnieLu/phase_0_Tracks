class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!" * num
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(number)
    puts number * 7
  end

  def eat
    puts "chompchompchomp"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

#duchess = Puppy.new
#puts duchess.fetch("ball")
#puts duchess.speak(5)
#puts duchess.roll_over
#puts duchess.dog_years(6)
#puts duchess.eat

class Robot
  def initialize
    puts "I am initializing a new instance..."
  end

  def robot_speak
    puts "boop beboop beboop"
  end

  def robot_eyes(num)
    puts "This robot has #{num} eyes."
  end

end


instance_array = []
50.times do
  instance_array << Robot.new
end


instance_array.each do |instance_name|
  puts instance_name.robot_speak
  puts instance_name.robot_eyes(4)
end


#numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,# 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24#, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, #36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,# 48, 49, 50]
#instance_array = []
#count = 0
#while count < 50
#  instance = Robot.new)
#  instance_array << instance
#count += 1
#end
#
#p instance_array#