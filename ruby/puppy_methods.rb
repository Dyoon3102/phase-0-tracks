=begin
	
PAUL "MAC" ROCHE
ASSIGNMENT 6.1 - INTRO TO CLASSES

SPECIES ------------------------
Canus Lupus ssp. Puppitus

CHARACTERISTICS ----------------
Chews everything: yes
Friendly: varies
Good boy: yes
Eye count: 2
Paw count: 4
House trained: varies
Name: varies
Color: varies
Fuzz: yes

BEHAVIOR -----------------------
Jump
Snuggle
Chew 
Nap

=end

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