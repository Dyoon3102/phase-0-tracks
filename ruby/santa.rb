class Santa
	
	attr_reader :reindeer_ranking
	attr_accessor :gender, :ethnicity, :age
	
	# An initialize method that prints "Initializing Santa instance ...".
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = 0
	end
	
	# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
		puts ""
	end
	
	# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
		puts ""
	end
	
	# Celebrate_birthday should age Santa by one year.
	def celebrate_birthday(age)
		age += 1
		puts "Happy birthday! You are now #{age} years old!"
		puts ""
	end
	
	# Take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
	def get_mad_at(reindeer)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "==Current Reindeer Ranking=="
		puts reindeer_ranking
		puts ""
		reindeer_ranking.delete_if { |x| x == reindeer }
		reindeer_ranking << reindeer
		puts "#{reindeer} has been a bad deer and moved to last in ranking.\n-Santa-"
		puts ""
		puts "==Modified Reindeer Ranking=="
		puts reindeer_ranking
		puts ""
	end
	
end

# A program that creates lots of santas
def santa_inst(inst_num)
	
	# Create an empty array of instance of santas
	santas = []
	
	# Use array of gender and ethnicity
	gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "trigender", "quadragender", "genderless"]
	ethnicity = ["black", "Latino", "white", "Japanese-African", "Martian", "Jupiterian", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	
	inst_num.times do
	santas << Santa.new(gender.sample, ethnicity.sample)
	end

	# For each santa instance set a random name, ethnicity and age
	santas.each do |santa|		
		santa.age = rand(140)
		puts "#{santa}\n#Gender: #{santa.gender}\nEthnicity: #{santa.ethnicity}\nAge: #{santa.age}"
		puts ""
	end
end

# Driver code
santa = Santa.new("male", "white")
santa.speak
santa.eat_milk_and_cookies("gingerbread cookie")
santa.celebrate_birthday(40)
santa.get_mad_at("Vixen")
santa_inst(100)