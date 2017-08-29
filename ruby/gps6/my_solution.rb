# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#It links a file to this file, so you can access the code from this file. It basically takes all the contents of the other file and pastes it in. The require relative paramater (in quotes) needs to be the name of the file. The main difference between require and require_relative is that require_relative looks for the file within this same file folder. If you used require you'd need to provide the full file directory name to find the file.
#
require_relative 'state_data'

class VirusPredictor

#Responsible for initializing the class and instance variables, and takes specific parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


#Calls two other methods and returns them.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private


#Takes three parameters and uses them to calculated the predicted deaths by virus, then it returns a statement about how many people will die in the outbreak.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
        factor = 0.4
    elsif @population_density >= 150
        factor = 0.3
    elsif @population_density >= 100
        factor = 0.2
    elsif @population_density >= 50
        factor = 0.1
    else
        factor = 0.05
    end

    number_of_deaths = (@population * factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Takes the parameters population_density and state and determines the speed of spread of the virus across the state, and returns a statement.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, double_hash|
  instance = VirusPredictor.new(state, double_hash[:population_density], double_hash[:population])
  instance.virus_effects
end


#=======================================================================
# Reflection Section Here
# ---What are the differences between the two different hash syntaxes shown in the state_data file?
# The first hash of state names uses hash rockets to delineate keys and values, while the second hash of population statistics uses a symbol figure to designate the keys and values.


# ---What does require_relative do? How is it different from require?
# Require relative effectively (but not literally) copies and pastes code from whatever file the require_relative is called to, so that you can access that code in your home file. It is different from require in that it accesses only files that are in the same root folder. Using require means you have to specify the whole file path directory to access the file.

# ---What are some ways to iterate through a hash?
# You can use a loop counter, you can use .each, you can use .map.

# ---When refactoring virus_effects, what stood out to you about the variables, if anything?
# I realized the variables are globally accessible, and don't need to be passed in as parameters at all. They are initialized when the class is called, and can be accessed when the method needs them as part of the method body.

# ---What concept did you most solidify in this challenge?
# I realized the incredible usefulness of .each. You can use it even when you don't know the number of items to be iterated through. It works on arrays and hashes, and with hashes it gives you access to both the key and hash.