# Design a class representing electric guitar
class Guitar
  
  attr_reader :string_num
  attr_accessor :body_style, :colors
  
  # Create a initialize method for each instance created
  def initialize(body_style, colors, string_num)
    @body_style = body_style
    @colors = colors
    @string_num = string_num
  end
  
  # Create a method that displays a message when called
  def strum_hard
    puts "***Twanggggg***"
  end
  
  # Create a method that displays a message with a given parameter
  def genre_msg(genre_type)
    genre_type = genre_type.split.each { |i| i.capitalize! }.join(" ")
    puts "#{genre_type} is your choice of music."
  end
  
  def print_msg
  	puts "Here is your guitar:"
  	puts "Body style: #{@body_style}\nColor: #{colors}\nNo. of strings: #{@string_num}"
  	puts ""
  end

end

# Driver code
my_guitar = Guitar.new("Les Paul", "silverburst", 6)
my_guitar.strum_hard
puts ''
puts "What genre of music are you into?"
genre = gets.chomp
puts ''
my_guitar.genre_msg(genre)
puts ''


# Create an empty array for instances of electric guitars
electric_guitars = []

# Create arrays of attributes
body_style = ["les paul", "stratocaster", "telecaster", "firebird", "explorer", "ml-dean", "flying v", "es series", "radiostar", "sg"]
colors = ["white", "cherry sunburst", "natural", "black", "tribal blue", "green flame", "rootbeer flame", "silverburst", "tiger eye flame", "gold", "silver", "union jack", "custom design", "rainbow"]
features = ["automatic tuners", "led mod", "semi-hollow body", "double axel", "left-handed"]
string_num = [6, 7, 8, 12]

loop do

	puts "Build your electric guitar:"	
	puts ''
	valid = false
	until valid
  		puts "Choose a body style or type 'random' for a randomized choice:"
  		p body_style
  		style_choice = gets.chomp
		if body_style.include?(style_choice)
  			valid = true
		elsif
  			style_choice == "random"
  			style_choice = body_style.sample
  			valid = true
  		else
  			puts "==Please make a valid input=="
  		end
  		puts ""
  	end
  	
  	valid = false
  	until valid
  		puts "Choose a color or type 'random' for a randomized color:"
  		p colors
  		color_choice = gets.chomp
  		if colors.include?(color_choice)
  			valid = true
  		elsif color_choice == "random"
  			color_choice = colors.sample
  			valid = true
  		else
  			puts "==Please make a valid input=="
  		end
  		puts ""
  	end
  	
  	valid = false
  	until valid
  		puts "How many strings for your guitar? (6, 7, 8, 12)"
  		string_choice = gets.chomp.to_i
  		puts ''
  		if string_num.include?(string_choice)
  			valid = true
  		else
  			puts "==Please make a valid input=="
  		end
  		puts ""
  	end
  	
  	guitar_instance = Guitar.new(style_choice, color_choice, string_choice)
  	electric_guitars << guitar_instance
  	
  	puts "Type any key to continue or type 'quit' when done."
  	answer = gets.chomp
  	puts ""
  	if answer == "quit"
  		break
  	end
  	
end

electric_guitars.each {|guitar| guitar.print_msg}