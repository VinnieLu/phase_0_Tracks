class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def speak
      puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa sequence..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

   def celebrate_birthday
     @age += 1
   end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking.insert(-1, name)
  end

end

#kris = Santa.new("female", "black")
#puts kris.speak
#puts kris.eat_milk_and_cookies("chocolate chip")
#
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn")
#santas << Santa.new("N/A/", "N/A")
#
#example_genders = ["transgender", "male", "female"]
#example_ethnicities = ["Hawaiian", "Puerto Rican", "Chinese"]
#example_genders.length.times do |i|
#	santas << Santa.new(example_genders[i], example_ethnicities[i])
#end
#puts santas



#kris.celebrate_birthday
#puts kris.age
#puts kris.ethnicity
#puts kris.gender=("trans")
#puts kris.get_mad_at("Rudolph")


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
200.times do
  new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  new_santa.age=(rand(140))
  p new_santa.age
  p new_santa.ethnicity
  p new_santa.gender
end
















