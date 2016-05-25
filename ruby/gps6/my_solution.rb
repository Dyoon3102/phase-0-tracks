# Virus Predictor

# I worked on this challenge [by myself, with: Zaki Arain].
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# The require relative statements *links* another ruby file that to a relative path of the current working ruby file.
# That is to say, the linked ruby file is in the same directory.

# The "relative" command simply loads or links the current file to a feature or function that is already available in the ruby environment or in another portion of the ruby code.

require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population_density, :population

  # Initialize method with three arguments and set those arguments as attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Outputs the value of predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  private

  # Takes the population_density value and applies the appropriate modifier as an integer and output message
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = (@population * (@population_density/500)).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes the population_density checks the value and determines the rate of infection
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = (@population_density * 0.01).round(2)
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

state_array = []
state_array = STATE_DATA.keys

state_array.each do |name|
  state = VirusPredictor.new(name, STATE_DATA[name][:population_density], STATE_DATA[name][:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The STATE_DATA hash contains states as symbols and values as hashes of each state symbol containing 2 sets of key value pairs.
# What does require_relative do? How is it different from require?
# Require_relative links the mentioned file readily available to use in the current file. Require has the same feature but can only be used within the file.
# What are some ways to iterate through a hash?
# Commands of .each .map .keys are some of the ways to iterate through hashes.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# That the attributes defined at initialize were ready for use through the code.
# What concept did you most solidify in this challenge?
# Accessing attributes and iteration through hashes.