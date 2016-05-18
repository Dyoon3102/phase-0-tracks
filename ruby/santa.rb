class Santa
	
	attr_reader :age, :ethnicity
	attr_accessor :gender
	
	# An initialize method that prints "Initializing Santa instance ...".
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end
	
	# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	
	# Celebrate_birthday should age Santa by one year.
	def celebrate_birthday(age)
		age + 1
	end
	
	# Take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
	def get_mad_at(reindeer)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		reindeer_ranking.delete_if { |x| x == reindeer }
		reindeer_ranking << reindeer
	end
	
end

santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
gender.length.times do |i|
  santas << Santa.new(gender[i], ethnicity[i])
end

santas.each do |x|
	x.speak
	x.eat_milk_and_cookies("gingerbread cookie")
end