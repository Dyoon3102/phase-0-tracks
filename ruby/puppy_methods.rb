class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "woof!"*int
  end

  def roll_over
  	puts "*roll over*"
  end

  def dog_years(y)
  	puts y/7  	
  end

  def juggle(b)
  	puts "The dog is juggling #{b} balls!"
  end

  def initialise
  	puts "Initializing new Puppy instance..."
  end


end

rottweiler=Puppy.new

rottweiler.fetch("bone")
rottweiler.speak(3)
rottweiler.roll_over
rottweiler.dog_years(42)
rottweiler.juggle(5)


		

class Lunch

	def initialize
		puts "Initializing lunch instance..."
	end

	def order(obj)
		puts "I'll have #{obj} today."
	end

	def eat(obj)
		puts "This #{obj} is delicious!"
	end

end

#food = Lunch.new
#food.order("salad")
#food.eat("salad")

lunch_arr = []
	index = 0
	while index < 50
		lunch_arr << Lunch.new
		index += 1
	end
#p lunch_arr

lunch_arr.each do |l|
	l.order("salad")
	l.eat("salad")
end