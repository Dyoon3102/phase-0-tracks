module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yell_happily(words)
  		words + "!!!" + " :)"
	end
end

puts Shout.yell_angrily("snap")
puts Shout.yell_happily("whoo")