# Release 1
# module Shout
#	def self.yell_angrily(words)
#    	words + "!!!" + " :("
#  	end

#  	def self.yell_happily(words)
#  		words + "!!!" + " :)"
#	end
# end

# puts Shout.yell_angrily("snap")
# puts Shout.yell_happily("whoo")

# Release 3

module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def yell_happily(words)
  		words + "!!!" + " :)"
	end
end

class Driver
	include Shout
end

class Kid
	include Shout
end

driver = Driver.new
puts driver.yell_angrily("Out of my way")
puts driver.yell_happily("Wheee")

kid = Kid.new
puts kid.yell_angrily("I don't want broccoli")
puts kid.yell_happily("It's candy")