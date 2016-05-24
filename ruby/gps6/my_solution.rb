# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The require relative statements *links* another ruby file that to a relative path of the current working ruby file.
# That is to say, the linked ruby file is in the same directory.

# The "relative" command simply loads or links the current file to a feature or function that is already available in the ruby environment or in another portion of the ruby code.


# require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population_density, :population

  # Initialize method with three arguments and set those arguments as attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Outputs the value or predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  private

  # Takes the population_density value and applies the appropriate modifier as an integer and output message
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes the population_density checks the value and determines the rate of infection
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
state_array = []
state_array = STATE_DATA.keys

state_array.each do |name|
  state = VirusPredictor.new(name, STATE_DATA[name][:population_density], STATE_DATA[name][:population] 
)
  state.virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

# states = STATE_DATA.each do |state|
#   state.each do |density, population|
#     state = VirusPredictor.new(state[0], state[0][:population_density], state[0][:population])
#   # p state[1][:population_density]
#   # p population

#   end
# end
  #   states = VirusPredictor.new(STATE_DATA[0], STATE_DATA[0][:population_density], STATE_DATA[0][:population])
  # states.virus_effects
# state_array = []
# state_array = STATE_DATA.keys
# p state_array[0]
# p STATE_DATA[state_array[0]]
# p STATE_DATA[state_array[0]][:population_density]
# p STATE_DATA[state_array[0]][:population]
################
# state = VirusPredictor.new(state_array[0], STATE_DATA[state_array[0]][:population_density], STATE_DATA[state_array[0]][:population] )
# state.virus_effects
# ###############

# state_array.each do |name|
#   state = VirusPredictor.new(name, STATE_DATA[name][:population_density], STATE_DATA[name][:population] 
# )
#   state.virus_effects
# end

  #state = VirusPredictor.new(STATE_DATA[0], STATE_DATA[0].key(0), STATE_DATA[0].key(1))
  #state.virus_effects


#=======================================================================
# Reflection Section